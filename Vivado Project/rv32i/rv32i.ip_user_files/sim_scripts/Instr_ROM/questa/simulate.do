onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Instr_ROM_opt

do {wave.do}

view wave
view structure
view signals

do {Instr_ROM.udo}

run -all

quit -force
