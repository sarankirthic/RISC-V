`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2021 09:49:15 PM
// Design Name: 
// Module Name: instr_mem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module instr_mem(
    input i_clk_100M,
    input [31:0] i_instr_addr,
    output [31:0] o_mem_instr
    );
    
    Instr_ROM Instr_ROM_1
       (.BRAM_PORTA_0_addr(i_instr_addr),
        .BRAM_PORTA_0_clk(i_clk_100M),
        .BRAM_PORTA_0_dout(o_mem_instr));

endmodule
