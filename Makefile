# Edit project-specific variables in this file.

project := project
top_module := main
vendor := xilinx

# This is the chipset from the Xilinx SP605 dev board
board := sp605
family := spartan6
device := xc6slx45t
speedgrade := -3
device_package := fgg484

# This is the chipset for the Xess Xula 2 dev board
#board := xula2
#family := spartan6
#device := XC6SLX25
#speedgrade := -2
#device_package := ft256

part := $(device)$(speedgrade)-$(device_package)

# is this build host 64 or 32 bits?
hostbits := 64
iseenv := /opt/Xilinx/14.3/ISE_DS/

# list all .v files explicitly with verilog_files (no hdl/*.v business)
verilog_files := hdl/$(top_module)_$(board).v
#verilog_files += hdl/yours.v

tbfiles := tb/main_tb.v
tbfiles += tb/another_tb.v
tbfiles += tb/trivial_test.v
tbfiles += tb/complicated_test.v

# what gets run 
alltests := test/trivial_test
alltests += test/complicated_test

# list of .xco files, eg "cores/bram.xco". do not include DCM files.
xilinx_cores := 
#xilinx_cores += cores/example.xco

# bitfile bitwidth for flash uploads
mcs_datawidth := 16

# Bulk of the actual Makefile is in a different file.
include ./contrib/xilinx.mk

# Example hardware-specific targets (eg, upload via SPI)
include ./contrib/example-device.mk
