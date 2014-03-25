# Avnet Zedboard settings
board := zedboard
family := zynq
device := xc7z020
speedgrade := -1
device_package := clg484
ucf_file := contrib/zed/zedboard.ucf
bitconf_file := contrib/zed/zedboard.bitconf
opt_file := contrib/default.opt
extra_includes += ./contrib/zed/zynq_targets.mk
lint_extra += contrib/zed/axi_lint_ignore.vlt
