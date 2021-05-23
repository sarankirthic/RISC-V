`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2021 09:58:41 PM
// Design Name: 
// Module Name: instr_mem_tb
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

module instr_mem_tb;

    reg i_clk_100M;
    reg [31:0]i_instr_addr;
    wire [31:0]o_mem_instr;
    
    instr_mem uut (
        .i_clk_100M(i_clk_100M),
        .i_instr_addr(i_instr_addr),
        .o_mem_instr(o_mem_instr)
    );
    
    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
    initial begin
        i_clk_100M = 1'b1;
         
        i_instr_addr = 0;
        
        #80
        i_instr_addr = 1;
        
        #40
        i_instr_addr = 2;
        
        #40
        i_instr_addr = 3;
        
        #40
        i_instr_addr = 4;
        
        #40
        i_instr_addr = 8;
        
        #40
        i_instr_addr = 7;
        
        #40
        i_instr_addr = 25000;
        
        #50
        $finish;
        
    end

endmodule
