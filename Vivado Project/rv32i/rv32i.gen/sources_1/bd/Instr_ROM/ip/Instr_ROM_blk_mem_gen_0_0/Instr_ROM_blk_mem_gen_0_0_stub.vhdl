-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu May 27 14:47:32 2021
-- Host        : Harid-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Harid/College/Win 2020/ECE3003/Project/RISC-V/Vivado
--               Project/rv32i/rv32i.gen/sources_1/bd/Instr_ROM/ip/Instr_ROM_blk_mem_gen_0_0/Instr_ROM_blk_mem_gen_0_0_stub.vhdl}
-- Design      : Instr_ROM_blk_mem_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instr_ROM_blk_mem_gen_0_0 is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end Instr_ROM_blk_mem_gen_0_0;

architecture stub of Instr_ROM_blk_mem_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[31:0],douta[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2020.2";
begin
end;
