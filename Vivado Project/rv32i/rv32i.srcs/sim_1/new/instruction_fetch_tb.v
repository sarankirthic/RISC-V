`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2021 11:18:01 PM
// Design Name: 
// Module Name: instruction_fetch_tb
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
`define clk_period 10

module instruction_fetch_tb;

    reg i_clk_100M;
    reg i_output_en;
    reg i_reset_n;
    wire o_instr_valid;
    wire [31:0] o_pc_val;
    wire [31:0] o_instr;

    instruction_fetch uut (
        .i_clk_100M(i_clk_100M),
        .i_output_en(i_output_en),
        .i_reset_n(i_reset_n),
        .o_instr_valid(o_instr_valid),
        .o_pc_val(o_pc_val),
        .o_instr(o_instr)
    );
    
    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
    initial begin
        i_clk_100M = 1'b1;
        
        i_output_en = 1'b1;
        i_reset_n = 1'b1;
    end

endmodule
