onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib PLL_opt

do {wave.do}

view wave
view structure
view signals

do {PLL.udo}

run -all

quit -force
