`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2021 09:19:23 PM
// Design Name: 
// Module Name: program_counter
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


module program_counter(
    input i_clk_100M,
    input i_reset_n,
    input i_count_en,
    input i_load_en,
    input [31:0] i_load_val,
    output [31:0] o_pc
    );
    
    reg [31:0] counter = 0;
    
    always@ (posedge i_clk_100M or negedge i_reset_n)
    begin
        if(!i_reset_n)
            counter <= 0;
    
        if(i_load_en)
            counter <= i_load_val;
        else if(i_count_en)
            counter <= counter + 4;
    end
    
    assign o_pc = counter;
    
endmodule