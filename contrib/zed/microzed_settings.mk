# This is the chipset for the Avnet Microzed, Zynq 7010 variant
# There is a 7020 variant available as a SoM, but the 7010 is what the
# "MicroZed Evaluation Kit" includes.
board := microzed
family := zynq
device := xc7z010
speedgrade := -1
device_package := clg400
ucf_file := contrib/zed/microzed.ucf
bitconf_file := contrib/zed/microzed.bitconf
opt_file := contrib/default.opt
extra_includes += ./contrib/zed/zynq_targets.mk
