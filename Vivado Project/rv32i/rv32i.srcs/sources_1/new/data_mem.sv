`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 10:33:16 PM
// Design Name: 
// Module Name: data_mem
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


module data_mem(
    input i_clk_100M,
    input [31:0] i_data_addr,
    input [31:0] i_data_in,
    input i_data_we,
    output [31:0] o_mem_data
    );
    
    Data_RAM Data_RAM_1
       (.BRAM_PORTA_0_addr(i_data_addr),
        .BRAM_PORTA_0_clk(i_clk_100M),
        .BRAM_PORTA_0_din(i_data),
        .BRAM_PORTA_0_dout(o_mem_data),
        .BRAM_PORTA_0_we(i_data_we));
        
endmodule
