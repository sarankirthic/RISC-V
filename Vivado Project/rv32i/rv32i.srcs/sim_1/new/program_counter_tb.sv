`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2021 10:54:00 PM
// Design Name: 
// Module Name: program_counter_tb
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

module program_counter_tb;

    reg i_clk_100M;
    reg i_reset_n;
    reg i_count_en;
    reg i_load_en;
    reg [31:0] i_load_val;
    wire [31:0] o_pc;
    
    program_counter uut (
        .i_clk_100M(i_clk_100M),
        .i_reset_n(i_reset_n),
        .i_count_en(i_count_en),
        .i_load_en(i_load_en),
        .i_load_val(i_load_val),
        .o_pc(o_pc)
    );
    
    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
    initial begin
        i_clk_100M = 1'b1;
        
        i_reset_n = 1'b0;
        i_count_en = 1'b0;
        i_load_en = 1'b0;
        i_load_val = 0;
        
        #10
            i_reset_n = 1'b1;        
            i_count_en = 1'b1;
        #52
            i_load_en = 1'b1;
            i_load_val = 200;
        #10
            i_load_en = 1'b0; 
        #50
        $finish;
    end
    

endmodule
