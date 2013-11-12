# xula2 device-specific configuration variables and make targets

.PHONY: prog prog_flash

board := xula2
family := spartan6
device := XC6SLX25
speedgrade := -2
device_package := ftg256
bitconf_file := ./contrib/xula2/xula2.bitconf
ucf_file := ./contrib/xula2/xula2.ucf
opt_file := ./contrib/default.opt

# This target uploads directly to the FPGA; volatile
prog: build/$(project).bit
	# First ensure that xsload.py is installed
	@xsload.py --version
	@xsload.py --fpga build/$(project).bit
 
# This target uploads to the SPI flash on board; non-volatile
prog_flash: build/$(project).bit
	# First ensure that xsload.py is installed
	@xsload.py --version
	@xsload.py --flash build/$(project).bit
