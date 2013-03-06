#!/bin/sh -e

TOP_NAME=project
xst -ifn $TOP_NAME.xst
ngdbuild $TOP_NAME.ngc -verbose
map -pr b -w -detail $TOP_NAME.ngd
par -w $TOP_NAME $TOP_NAME.ncd
bitgen -w $TOP_NAME.ncd

