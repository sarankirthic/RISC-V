`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 09:33:41 AM
// Design Name: 
// Module Name: core_top_tb
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

module core_top_tb;

    reg i_clk_100M;
    reg i_reset_n;
    wire o_instr_valid;
    wire [31:0] o_instr;
    wire [31:0] o_pc;
    
    core_top uut (
        .i_clk_100M(i_clk_100M),
        .i_reset_n(i_reset_n),
        .o_instr_valid(o_instr_valid),
        .o_instr(o_instr),
        .o_pc(o_pc)
    );
    
    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
    initial begin
        i_clk_100M = 1'b1;
        i_reset_n = 1'b1;
        
        #500
        $finish;
    end

endmodule
