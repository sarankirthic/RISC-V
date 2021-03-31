onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BRAM_32B_SDP_opt

do {wave.do}

view wave
view structure
view signals

do {BRAM_32B_SDP.udo}

run -all

quit -force
