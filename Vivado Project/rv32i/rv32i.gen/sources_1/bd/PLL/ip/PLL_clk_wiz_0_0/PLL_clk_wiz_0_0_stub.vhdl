-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu May 27 11:43:02 2021
-- Host        : Harid-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Harid/College/Win 2020/ECE3003/Project/RISC-V/Vivado
--               Project/rv32i/rv32i.gen/sources_1/bd/PLL/ip/PLL_clk_wiz_0_0/PLL_clk_wiz_0_0_stub.vhdl}
-- Design      : PLL_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PLL_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end PLL_clk_wiz_0_0;

architecture stub of PLL_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,resetn,locked,clk_in1";
begin
end;
