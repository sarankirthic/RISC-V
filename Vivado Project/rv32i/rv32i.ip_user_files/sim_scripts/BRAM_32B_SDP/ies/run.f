-makelib ies_lib/xpm -sv \
  "S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "S:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../rv32i.gen/sources_1/bd/BRAM_32B_SDP/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BRAM_32B_SDP/ip/BRAM_32B_SDP_blk_mem_gen_0_0/sim/BRAM_32B_SDP_blk_mem_gen_0_0.v" \
  "../../../bd/BRAM_32B_SDP/sim/BRAM_32B_SDP.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

