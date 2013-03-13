project = project
top_module = project
vendor = xilinx

# This is the chipset from the Xilinx SP605 dev board
family = spartan6
part = xc6slx45t-3-fgg484

iseenvfile = /opt/Xilinx/14.3/ISE_DS/settings64.sh

vfiles = ./hdl/project.v

include ./contrib/xilinx.mk
