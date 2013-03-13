project = project
top_module = project
vendor = xilinx

# This is the chipset from the Xilinx SP605 dev board
family = spartan6
part = xc6slx45t-3-fgg484

# is this build host 64 or 32 bits?
hostbits = 64
iseenv= /opt/Xilinx/14.3/ISE_DS/

vfiles = ./hdl/project.v
tbfiles = ./tb/tb.v

include ./contrib/xilinx.mk
