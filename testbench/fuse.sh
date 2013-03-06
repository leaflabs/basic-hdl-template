vlogcomp -prj simulate_isim.prj
fuse -lib unisims_ver -lib secureip -lib xilinxcorelib_ver -lib unimacro_ver -lib iplib=./iplib -lib unenclib -o simulate_isim.exe unenclib.tb unenclib.glbl
