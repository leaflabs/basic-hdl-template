# xula2 device-specific make targets

.PHONY: prog

prog: build/$(project).bit
	@xsload.py --fpga build/$(project).bit
 
prog_flash: build/$(project).bit
	@xsload.py --flash build/$(project).bit
