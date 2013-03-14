project = project
top_module = main
vendor = xilinx

# This is the chipset from the Xilinx SP605 dev board
family = spartan6
device = xc6slx45t
speedgrade = -3
device_package = fgg484
part = $(device)$(speedgrade)-$(device_package)


# is this build host 64 or 32 bits?
hostbits = 64
iseenv= /opt/Xilinx/14.3/ISE_DS/

vfiles = ./hdl/*.v
tbfiles = ./tb/*.v
xilinx_cores = 

include ./contrib/xilinx.mk
