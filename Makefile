# Edit project-specific variables in this file.

project := exampleproj
top_module := main
vendor := xilinx

# This is the chipset for the Avnet Zedboard
board := zedboard
family := zynq7000
device := xc7z020
speedgrade := -1
device_package := clg484
zynq_ssh_host := root@zedboard	# SSH target; could also be user@1.2.3.4
extra_includes += ./contrib/zynq.mk

# This is the chipset for the Avnet Microzed, Zynq 7010 variant
# There is a 7020 variant available as a SoM, but the 7010 is what the
# "MicroZed Evaluation Kit" includes.
#board := microzed
#family := zynq7000
#device := xc7z010
#speedgrade := -1
#device_package := clg400
#extra_includes += ./contrib/zynq.mk

part := $(device)$(speedgrade)-$(device_package)


# is this build host 64 or 32 bits?
hostbits := 64
iseenv := /opt/Xilinx/14.7/ISE_DS/

# list all .v files explicitly with verilog_files (no hdl/*.v business)
verilog_files := hdl/$(top_module)_$(board).v
verilog_files += hdl/rot13.v
verilog_files += hdl/axi_lite_slave.v
#verilog_files += hdl/yours.v

vhdl_files :=
enc_vhdl_files :=

# all those horrible, horrible "Block Design" files
include ./block_design.mk

tbfiles := tb/rot13_tb.v
#tbfiles += tb/zedboard_tb.v

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
