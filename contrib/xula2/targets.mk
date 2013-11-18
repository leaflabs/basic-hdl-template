# xula2 device-specific configuration make targets.
# put variables in settings.mk, not this file.

.PHONY: prog prog_flash

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
