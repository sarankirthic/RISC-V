`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2021 09:58:19 AM
// Design Name: 
// Module Name: pll
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


module pll(
    input i_clk_100M,
    input i_reset_n,
    output o_clk,
    output o_locked
    );
    
    PLL PLL_inst1
       (.clk_in1_0(i_clk_100M),
        .clk_out1_0(o_clk),
        .locked_0(o_locked),
        .resetn_0(i_reset_n));
    
endmodule
