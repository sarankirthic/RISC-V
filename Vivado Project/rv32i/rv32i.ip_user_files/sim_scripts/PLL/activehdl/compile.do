vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../riscv_j.gen/sources_1/bd/PLL/ipshared/d0f7" \
"S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../riscv_j.gen/sources_1/bd/PLL/ipshared/d0f7" \
"../../../bd/PLL/ip/PLL_clk_wiz_0_0/PLL_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/PLL/ip/PLL_clk_wiz_0_0/PLL_clk_wiz_0_0.v" \
"../../../bd/PLL/sim/PLL.v" \

vlog -work xil_defaultlib \
"glbl.v"

