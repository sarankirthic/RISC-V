`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2021 08:21:28 PM
// Design Name: 
// Module Name: mmu_tb
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

module mmu_tb;

    reg i_clk_100M;
    reg i_instr_valid;
    reg [5:0] i_load_type;
    reg [2:0] i_store_type;
    reg i_rs1_valid;
    reg i_rs2_valid;
    reg i_rd_valid;
    reg i_rf_wr_vaild;
    reg i_imm_valid;
    reg [4:0] i_rs1_addr;
    reg [4:0] i_rs2_addr;
    reg [4:0] i_rd_addr;
    reg [31:0] i_rf_wr_data;
    reg [31:0] i_imm_offset;   
    wire o_dataA_valid;
    wire o_dataB_valid;
    wire [31:0] o_rf_out_dataA;
    wire [31:0] o_rf_out_dataB;
    
    mmu uut(
        .i_clk_100M(i_clk_100M),
        .i_instr_valid(i_instr_valid),
        .i_load_type(i_load_type),
        .i_store_type(i_store_type),
        .i_rs1_valid(i_rs1_valid),
        .i_rs2_valid(i_rs2_valid),
        .i_rd_valid(i_rd_valid),
        .i_rf_wr_vaild(i_rf_wr_vaild),
        .i_imm_valid(i_imm_valid),
        .i_rs1_addr(i_rs1_addr),
        .i_rs2_addr(i_rs2_addr),
        .i_rd_addr(i_rd_addr),
        .i_rf_wr_data(i_rf_wr_data),
        .i_imm_offset(i_imm_offset),   
        .o_dataA_valid(o_dataA_valid),
        .o_dataB_valid(o_dataB_valid),
        .o_rf_out_dataA(o_rf_out_dataA),
        .o_rf_out_dataB(o_rf_out_dataB)
    );

    always begin
        #(`clk_period/2);
        i_clk_100M = ~i_clk_100M;
    end
    
        initial begin
        i_clk_100M = 1'b1;
        i_instr_valid = 1'b1;
        i_load_type = 0;
        i_store_type = 0;
        i_rs1_valid = 1'b0;
        i_rs2_valid = 1'b0;
        i_rd_valid = 1'b0;
        i_rf_wr_vaild = 1'b0;
        i_imm_valid = 1'b0;
        i_rs1_addr = 0;
        i_rs2_addr = 0;
        i_rd_addr = 0;
        i_rf_wr_data = 0;
        i_imm_offset = 0;
        #20
        i_rs1_valid = 1'b1;
        #20
        i_rs2_valid = 1'b1;
        i_rs1_addr = 2;
        #50
        $finish;
    end

endmodule
