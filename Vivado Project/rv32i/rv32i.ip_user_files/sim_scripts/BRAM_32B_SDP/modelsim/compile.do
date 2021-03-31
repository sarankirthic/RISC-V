vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/xil_defaultlib

vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work blk_mem_gen_v8_4_4  -incr \
"../../../../riscv_j.gen/sources_1/bd/BRAM_32B_SDP/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr \
"../../../bd/BRAM_32B_SDP/ip/BRAM_32B_SDP_blk_mem_gen_0_0/sim/BRAM_32B_SDP_blk_mem_gen_0_0.v" \
"../../../bd/BRAM_32B_SDP/sim/BRAM_32B_SDP.v" \

vlog -work xil_defaultlib \
"glbl.v"

