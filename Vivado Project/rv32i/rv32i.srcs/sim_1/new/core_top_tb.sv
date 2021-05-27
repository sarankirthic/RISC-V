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
    
    wire o_add;
    wire o_and;
    wire o_or;
    
    wire o_rs1_valid, o_rs2_valid, o_rd_valid;
    wire [4:0] o_rs1_addr, o_rs2_addr, o_rd_addr;
    
    wire o_port_rs1_valid, o_port_rs2_valid;
    wire [31:0] o_port_rs1;
    wire [31:0] o_port_rs2;
    
    wire o_dm_valid, o_dm_we;
    wire [31:0] o_dm_addr;
    wire [31:0] o_dm_out;
    wire [31:0] o_dm_in;
    wire o_done;
    
    core_top uut (
        .i_clk_100M(i_clk_100M),
        .i_reset_n(i_reset_n),
        .o_instr_valid(o_instr_valid),
        .o_instr(o_instr),
        .o_pc(o_pc),
        .o_rs1_valid(o_rs1_valid),
        .o_rs2_valid(o_rs2_valid),
        .o_rd_valid(o_rd_valid),
        .o_rs1_addr(o_rs1_addr),
        .o_rs2_addr(o_rs2_addr),
        .o_rd_addr(o_rd_addr),
        .o_port_rs1_valid(o_port_rs1_valid),
        .o_port_rs2_valid(o_port_rs2_valid),
        .o_port_rs1(o_port_rs1),
        .o_port_rs2(o_port_rs2),
        .o_dm_valid(o_dm_valid),
        .o_dm_we(o_dm_we),
        .o_dm_addr(o_dm_addr),
        .o_dm_out(o_dm_out),
        .o_dm_in(o_dm_in),
        .o_done(o_done)
    );
    
    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
    initial begin
        i_clk_100M = 1'b1;
        i_reset_n = 1'b1;
        
        #700
        $finish;
    end

endmodule
