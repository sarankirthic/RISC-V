`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 09:38:50 PM
// Design Name: 
// Module Name: anton_mcu_top_tb
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

module anton_mcu_top_tb;

    reg i_clk_100M;
    reg i_reset_n;
    
    wire [31:0] o_instr_addr;
    wire o_instr_valid;
    wire [31:0] o_instr;
    wire [31:0] o_pc;
    
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
    
    wire o_output_portA[16];
    wire o_clk;
    wire o_locked;
    
    anton_mcu_top uut (
        .i_clk_100M(i_clk_100M),
        .i_reset(i_reset_n),
        .o_clk(o_clk),
        .o_locked(o_locked),
        .o_instr_addr(o_instr_addr),
        .o_instr(o_instr),
        .o_instr_valid(o_instr_valid),
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
        .o_done(o_done),
        .o_portA(o_output_portA)
    );
    
    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
    initial begin
        i_clk_100M = 1'b1;
        i_reset_n = 1'b0;
        
        #2200
        $finish;
    end

endmodule