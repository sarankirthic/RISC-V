//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Fri May 28 22:24:43 2021
//Host        : Harid-PC running 64-bit major release  (build 9200)
//Command     : generate_target Instr_ROM_wrapper.bd
//Design      : Instr_ROM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Instr_ROM_wrapper
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_dout);
  input [31:0]BRAM_PORTA_0_addr;
  input BRAM_PORTA_0_clk;
  output [31:0]BRAM_PORTA_0_dout;

  wire [31:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [31:0]BRAM_PORTA_0_dout;

  Instr_ROM Instr_ROM_i
       (.BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
        .BRAM_PORTA_0_clk(BRAM_PORTA_0_clk),
        .BRAM_PORTA_0_dout(BRAM_PORTA_0_dout));
endmodule
