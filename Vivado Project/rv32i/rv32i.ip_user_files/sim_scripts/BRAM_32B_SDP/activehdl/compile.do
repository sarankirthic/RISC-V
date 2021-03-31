vlib work
vlib activehdl

vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/xil_defaultlib

vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work blk_mem_gen_v8_4_4  -v2k5 \
"../../../../riscv_j.gen/sources_1/bd/BRAM_32B_SDP/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/BRAM_32B_SDP/ip/BRAM_32B_SDP_blk_mem_gen_0_0/sim/BRAM_32B_SDP_blk_mem_gen_0_0.v" \
"../../../bd/BRAM_32B_SDP/sim/BRAM_32B_SDP.v" \

vlog -work xil_defaultlib \
"glbl.v"

