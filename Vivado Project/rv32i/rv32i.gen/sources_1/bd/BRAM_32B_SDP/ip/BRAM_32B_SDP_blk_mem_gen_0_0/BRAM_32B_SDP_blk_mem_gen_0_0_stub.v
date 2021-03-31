// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Feb 16 21:26:34 2021
// Host        : Harid-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Harid/Hobby Projects/Electronics/FPGA
//               Projetcs/riscv_j/riscv_j.gen/sources_1/bd/BRAM_32B_SDP/ip/BRAM_32B_SDP_blk_mem_gen_0_0/BRAM_32B_SDP_blk_mem_gen_0_0_stub.v}
// Design      : BRAM_32B_SDP_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module BRAM_32B_SDP_blk_mem_gen_0_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[4:0],dina[31:0],clkb,enb,addrb[4:0],doutb[31:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [4:0]addra;
  input [31:0]dina;
  input clkb;
  input enb;
  input [4:0]addrb;
  output [31:0]doutb;
endmodule
