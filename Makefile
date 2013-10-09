# Edit project-specific variables in this file.

project := exampleproj
top_module := main
vendor := xilinx

# This is the chipset from the Xilinx SP605 dev board
#board := sp605
#family := spartan6
#device := xc6slx45t
#speedgrade := -3
#device_package := fgg484
#extra_includes = ./contrib/example-device.mk

# This is the chipset for the Xess Xula 2 dev board
board := xula2
family := spartan6
device := XC6SLX25
speedgrade := -2
device_package := ftg256
extra_includes = ./contrib/xula2.mk
include ./contrib/xula2.mk

part := $(device)$(speedgrade)-$(device_package)


# is this build host 64 or 32 bits?
hostbits := 64
iseenv := /opt/Xilinx/14.3/ISE_DS/

# list all .v files explicitly with verilog_files (no hdl/*.v business)
verilog_files := hdl/$(top_module)_$(board).v
verilog_files += hdl/rot13.v
verilog_files += hdl/simple_uart.v
#verilog_files += hdl/yours.v

tbfiles := tb/rot13_tb.v
tbfiles += tb/xula2_tb.v
#tbfiles += tb/sp605_tb.v

# what gets run by "make tests"
alltests := test/rot13_tb
#tbfiles += tb/yourtest_tb.v

# list of .xco files, eg "cores/bram.xco". do not include DCM files.
xilinx_cores := 
#xilinx_cores += cores/example.xco

# bitfile bitwidth for flash uploads
mcs_datawidth := 16

# Bulk of the actual Makefile is in a different file.
include ./contrib/xilinx.mk

# Example hardware-specific targets (eg, upload via SPI)
include $(extra_includes)
