# STIMULATE MRI ADC Probe

This repository includes all hard- firm- and software resources realated to MRI ADC Probe developed for measuring gradient fields in a running MRI scanner. It is theoretically possible to sample 4 channels at 4.8Msps, however, at the moment it is limited to 2 channels at 200ksps due to bandwith limitations. Data is transmitted out of the MRI by consumer TOSLINK transmitters and optical fibre cable. 

## Hardware

The sampling Device is a STM32F303CCT6 ARM Cortex-M4 microprocessor. It was chosen for its 4 integrated operational Amplifiers, configured for offsetting, amplifying and buffering the input signals. It also features 4 high speed ADCs, multiple DMA channels and a DSP-like instruction set.

## Firmware

The firmware is inteded to sample continiusly, copy the samples from the ADCs to buffers with DMA and push them out of the UART as fast as possible.

## Software

The software receives data through a high-speed FT2232H USB Serial Interface and decodes the channels using a state machine. Samples for each channel are written to there subsequent files.

## Installation

### Dependencies

Developement machines should be configured with:

- libFTDI > 1.0
- a arm-none-eabi toolchain with gdb
- Eclipse
- the gnuarmeclipse plugin
- the STM32CubeMX eclipse plugin
- Kicad > 4.0, if hardware needs to be modified

### Setup

_The gnuarmeclipse Environment might has to be configured. This should be easiest by first creating a dummy project following the tutotials and making sure it works before continuing._

Import projects into Eclipse using the "Import -> Existing Projects into Workspace" Dialog.

The project template generator STM32CubeMX can be used directly from Eclipse by opening the firmware.ioc file. It is however standalone Software and has to be configured seperately to output generated code into the _firmware_ folder. This might or might not be the case after installation.

The Kicad project is opened by simply loading the ADC.pro file.

## Usage

If the probe is connected to the antennas and powered with ~5V, it outputs samples continously. To read and save them, the software has to be started on the host connected to the FT223H via USB. Filename prefixes can be chosen with the -f option. The software is stopped by hitting ctr-c.