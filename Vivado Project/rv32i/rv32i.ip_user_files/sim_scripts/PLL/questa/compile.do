vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv "+incdir+../../../../riscv_j.gen/sources_1/bd/PLL/ipshared/d0f7" \
"S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  "+incdir+../../../../riscv_j.gen/sources_1/bd/PLL/ipshared/d0f7" \
"../../../bd/PLL/ip/PLL_clk_wiz_0_0/PLL_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/PLL/ip/PLL_clk_wiz_0_0/PLL_clk_wiz_0_0.v" \
"../../../bd/PLL/sim/PLL.v" \

vlog -work xil_defaultlib \
"glbl.v"

