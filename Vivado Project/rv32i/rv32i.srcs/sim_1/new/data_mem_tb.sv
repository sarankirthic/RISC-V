`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 10:37:18 PM
// Design Name: 
// Module Name: data_mem_tb
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

module data_mem_tb;

    reg i_clk_100M;
    reg i_dm_en, i_data_we;
    reg [31:0]i_data_addr;
    reg [31:0] i_data_in;
    wire o_dm_valid;
    wire [31:0]o_mem_data;
    
    data_mem uut (
        .i_clk_100M(i_clk_100M),
        .i_dm_en(i_dm_en),
        .i_data_addr(i_data_addr),
        .i_data_in(i_data_in),
        .i_data_we(i_data_we),
        .o_dm_valid(o_dm_valid),
        .o_mem_data(o_mem_data)
    );
    
    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
    initial begin
        i_clk_100M = 1'b1;
        i_dm_en = 1'b1;
        i_data_in = 0;
        i_data_we = 1'b0; 
        i_data_addr = 0;
        
        #80
        i_data_addr = 1;
        
        #40
        i_data_addr = 2;
        i_data_in = 420;
        i_data_we = 1'b1;
        
        #10
        i_data_we = 1'b0;
        
        #40
        i_data_addr = 3;
        
        #40
        i_data_addr = 4;
        
        #40
        i_data_addr = 2;
        
        #40
        i_data_addr = 7;
        
        #40
        i_data_addr = 24990;
        
        #50
        $finish;
    end

endmodule
