onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BRAM_32B_SDP -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BRAM_32B_SDP xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BRAM_32B_SDP.udo}

run -all

endsim

quit -force
