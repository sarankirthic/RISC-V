`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2021 08:03:40 PM
// Design Name: 
// Module Name: register_file_tb
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

module register_file_tb;

    reg i_clk_100M;
    reg [4:0]i_wPort_addr;
    reg [7:0]i_wPort_din;
    reg i_wPort_en;
    reg i_wPort_we;
    reg [4:0]i_portA_addr;
    reg i_portA_en;
    reg [4:0]i_portB_addr;
    reg i_portB_en;
    wire [7:0]o_portA_dout;
    wire [7:0]o_portB_dout;
    
    register_file uut (
        .i_clk_100M(i_clk_100M),
        .i_wPort_addr(i_wPort_addr),
        .i_wPort_din(i_wPort_din),
        .i_wPort_en(i_wPort_en),
        .i_wPort_we(i_wPort_we),
        .i_portA_addr(i_portA_addr),
        .i_portA_en(i_portA_en),
        .i_portB_addr(i_portB_addr),
        .i_portB_en(i_portB_en),
        .o_portA_dout(o_portA_dout),
        .o_portB_dout(o_portB_dout)
    );
    
    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
    initial begin
        i_clk_100M = 1'b1;
        
        i_wPort_addr = 0;
        i_wPort_din = 0;
        i_wPort_en = 1'b0;
        i_wPort_we = 1'b0;
        
        i_portA_addr = 0;
        i_portA_en = 1'b0;
        
        i_portB_addr = 0;
        i_portB_en = 1'b0;
        
        #20
        i_wPort_addr = 0;
        i_wPort_din = 10;
        i_wPort_en = 1'b1;
        i_wPort_we = 1'b1;
        #10
        i_wPort_en = 1'b0;
        i_wPort_we = 1'b0;
        #10
        i_portA_en = 1'b1;
        i_portB_en = 1'b1;
        i_wPort_addr = 2;
        i_wPort_din = 20;
        i_wPort_en = 1'b1;
        i_wPort_we = 1'b1;
        #10
        i_wPort_en = 1'b0;
        i_wPort_we = 1'b0;
        i_portB_addr = 2;
        #50
        $finish;
        
    end

endmodule
