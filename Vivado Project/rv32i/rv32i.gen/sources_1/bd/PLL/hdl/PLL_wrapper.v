//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu May 27 09:56:33 2021
//Host        : Harid-PC running 64-bit major release  (build 9200)
//Command     : generate_target PLL_wrapper.bd
//Design      : PLL_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PLL_wrapper
   (clk_in1_0,
    clk_out1_0,
    locked_0,
    resetn_0);
  input clk_in1_0;
  output clk_out1_0;
  output locked_0;
  input resetn_0;

  wire clk_in1_0;
  wire clk_out1_0;
  wire locked_0;
  wire resetn_0;

  PLL PLL_i
       (.clk_in1_0(clk_in1_0),
        .clk_out1_0(clk_out1_0),
        .locked_0(locked_0),
        .resetn_0(resetn_0));
endmodule
