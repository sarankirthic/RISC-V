-makelib xcelium_lib/xpm -sv \
  "S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../riscv_j.gen/sources_1/bd/Data_RAM/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Data_RAM/ip/Data_RAM_blk_mem_gen_0_0/sim/Data_RAM_blk_mem_gen_0_0.v" \
  "../../../bd/Data_RAM/sim/Data_RAM.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

