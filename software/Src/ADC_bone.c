
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <signal.h>
#include <libftdi1/ftdi.h>

extern int errno;

static int exit_requested = 0;
static void sigint_handler(int signum)
{
    exit_requested = 1;
}

void sample(uint32_t baudrate) {
    int vid = 0x403;
    int pid = 0x6010;
    
	struct ftdi_context *ftdi;

    if ((ftdi = ftdi_new()) == 0)
    {
        fprintf(stderr, "ftdi_new failed\n");
        exit(EXIT_FAILURE);
    }

    ftdi_set_interface(ftdi, 1);
    ftdi_read_data_set_chunksize(ftdi, 1<<14);
    uint32_t chunksize = 0;
    ftdi_read_data_get_chunksize(ftdi,&chunksize);
    printf("%i\n\r",chunksize);

	int f = 0;
    f = ftdi_usb_open(ftdi, vid, pid);
    if (f < 0)
    {
    	fprintf(stderr, "unable to open ftdi device: %d (%s)\n", f, ftdi_get_error_string(ftdi));
    	exit(-1);
    }

    f = ftdi_set_baudrate(ftdi, baudrate);
    if (f < 0)
    {
        fprintf(stderr, "unable to set baudrate: %d (%s)\n", f, ftdi_get_error_string(ftdi));
        exit(-1);
    }

    f = ftdi_set_line_property(ftdi, 8, STOP_BIT_1, NONE);
    if (f < 0)
    {
        fprintf(stderr, "unable to set line parameters: %d (%s)\n", f, ftdi_get_error_string(ftdi));
        exit(-1);
    }

    FILE * raw = fopen("raw.bin","w");
    if (raw == NULL) {
        		fprintf(stderr, "Value of errno: %d\n", errno);
        		perror("Error printed by perror");
        		fprintf(stderr, "Error opening file: %s\n", strerror(errno));
        		exit(EXIT_FAILURE);
    }

    int total_bytes = 0;
	#define BUFFERLENGTH (uint16_t)2000
	uint8_t buffer[BUFFERLENGTH];
	uint16_t count = 0;
	while (!exit_requested) {

		count = ftdi_read_data(ftdi, buffer, BUFFERLENGTH);
		fwrite(buffer, sizeof(char), count, raw);
		total_bytes += count;

		printf("\rTotal bytes: %d",total_bytes);
		fflush(stdout);
	}
	printf("\n\rCleaning up...\n\r");

	fflush(raw);
	fclose(raw);

    ftdi_usb_close(ftdi);
    ftdi_free(ftdi);

}

void decode(char * filenameprefix) {

	enum decoder_state {
		IDLE,
		PREAMBLE,
		CHANNEL,
		DATA
	};

    FILE * files[4] = {0};

    for (int i=0; i<4; i++) {
    	char filename[128];
    	snprintf(filename, sizeof(filename), "%s-%i.bin", filenameprefix, i+1);
    	files[i] = fopen(filename,"w");
    	if (files[i] == NULL) {
    		fprintf(stderr, "Value of errno: %d\n", errno);
    		perror("Error printed by perror");
    		fprintf(stderr, "Error opening file: %s\n", strerror(errno));
    		exit(EXIT_FAILURE);
    	}
    }

	enum decoder_state state = IDLE;
	uint16_t active_channel = 1;
	uint8_t buffer[8];
	uint16_t count = 0;
	uint16_t samples = 0;

    printf("\n\rDecoding...\n\r");

    FILE * raw = fopen("raw.bin","r");
    while(!feof(raw)) {
    	switch (state) {
    	case IDLE:
    		count = fread(buffer, sizeof(char), 1, raw);
    		if (count && (0xFF == buffer[0])) {
    			state = PREAMBLE;
    		}
    		break;
    	case PREAMBLE:
    		count = fread(buffer, sizeof(char), 1, raw);
    		if (count && (0xFF == buffer[0])) {
    			state = CHANNEL;
    		}
    		if (count && (0xFF != buffer[0])) {
    			state = IDLE;
    		}
    		break;
    	case CHANNEL:
    		count = fread(buffer, sizeof(char), 2, raw);
    		if (count) {
    			active_channel = (uint16_t)buffer[0];
    			if ((0 < active_channel) && (active_channel <= 4)) {
    				state = DATA;
    			} else {
    				state = IDLE;
    			}
    		}
    		break;
    	case DATA:
    		count = fread(buffer, sizeof(char), 2, raw);
    		samples += count;
    		if (buffer[1] & 0b11110000) {
    			fseek(raw, -1, SEEK_CUR);
    		} else {
    			fwrite(buffer, sizeof(char), 2, files[active_channel-1]);
    		}

    		if (2000 <= samples) {
    			samples = 0;
    			state = IDLE;
    			//me_decode((uint16_t*)buffer,decoded_buffer,BUFFERLENGTH/2);

    		}
    		break;
    	}
    }

	fclose(raw);

	for (int i=0; i<4; i++) {
		fflush(files[i]);
		fclose(files[i]);
	}
}

int main(int argc, char * argv[])
{
	int sample_enabled = 1;
	int decode_enabled = 1;
	uint32_t baudrate = 8000000;
	char filenameprefix[64] = "channel";

	int optint;
    while ((optint = getopt(argc, argv, "b:f:sd")) != -1)
    {
        switch (optint)
        {
        case 's':
        	sample_enabled = 1;
        	decode_enabled = 0;
        	break;
        case 'd':
        	sample_enabled = 0;
        	decode_enabled = 1;
        	break;
        case 'b':
        	baudrate = strtoul(optarg, NULL, 0);
        	break;
        case 'f':
        	snprintf(filenameprefix,sizeof(filenameprefix),"%s",optarg);
        	break;
        default:
            fprintf(stderr, "usage: %s [-b baudrate] [-f filename-prefix]\n", *argv);
            exit(-1);
        }
    }

	signal(SIGINT, sigint_handler);

    if (sample_enabled) {
    	sample(baudrate);
    }
    if (decode_enabled) {
    	decode(filenameprefix);
    }

    signal(SIGINT, SIG_DFL);

	return EXIT_SUCCESS;
}
