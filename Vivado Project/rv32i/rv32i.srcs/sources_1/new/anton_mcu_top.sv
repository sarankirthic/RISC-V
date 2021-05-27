`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 09:20:06 PM
// Design Name: 
// Module Name: anton_mcu_top
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


module anton_mcu_top(
    input i_clk_100M,
    input i_reset,
    /*output o_clk,
    output o_locked,
    output [31:0] o_instr_addr,
    output [31:0] o_instr,
    output o_instr_valid,
    output [31:0] o_pc,
    output o_rs1_valid,
    output o_rs2_valid,
    output o_rd_valid,
    output [4:0] o_rs1_addr,
    output [4:0] o_rs2_addr,
    output [4:0] o_rd_addr,
    output o_port_rs1_valid,
    output o_port_rs2_valid,
    output [31:0] o_port_rs1,
    output [31:0] o_port_rs2,
    output o_dm_valid,
    output o_dm_we,
    output [31:0] o_dm_addr,
    output [31:0] o_dm_out,
    output [31:0] o_dm_in,
    output o_done,*/
    output o_portA[16]
    );
    
    wire w_reset_pll_n = ~i_reset;
    
    wire [31:0] w_instr_addr, w_instr_mem;
    
    wire w_dm_en, w_dm_we, w_dm_valid;
    wire [31:0] w_dm_addr, w_dm_in, w_dm_out;

    assign o_instr_addr = w_instr_addr; 
    assign o_instr = w_instr_mem;
    
    assign o_dm_valid = w_dm_valid;
    assign o_dm_we = w_dm_we;
    assign o_dm_addr = w_dm_addr;
    assign o_dm_in = w_dm_in;
    assign o_dm_out = w_dm_out;
    
    wire w_clk_50M;
    assign o_clk = w_clk_50M;
    
    pll pll_inst1 (
        .i_clk_100M(i_clk_100M),
        .i_reset_n(w_reset_pll_n),
        .o_clk(w_clk_50M),
        .o_locked(o_locked)
    );
    
    wire w_reset_n = o_locked;
    
    core_top core_top_inst1 (
        .i_clk_100M(w_clk_50M),
        .i_reset_n(w_reset_n),
        .i_instr_mem(w_instr_mem),
        .i_dm_valid(w_dm_valid),
        .i_dm_out(w_dm_out),
        .o_instr_addr(w_instr_addr),
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
        .o_dm_we(w_dm_we),
        .o_dm_en(w_dm_en),
        .o_dm_addr(w_dm_addr),
        .o_dm_out(o_dm_out),
        .o_dm_in(w_dm_in),
        .o_done(o_done)       
    );
    
    //instantiate instruction memory module
    instr_mem instr_mem_inst1(
        .i_clk_100M(w_clk_50M),
        .i_instr_addr(w_instr_addr),
        .o_mem_instr(w_instr_mem)    
    );
    
    wire w_data_mem_en = (w_dm_addr <= 32'hFFFF) ? w_dm_en : 1'b0;
    
    //instantiate data memory module
    data_mem data_mem_inst1(
        .i_clk_100M(w_clk_50M),
        .i_dm_en(w_data_mem_en),
        .i_data_addr(w_dm_addr),
        .i_data_in(w_dm_in),
        .i_data_we(w_dm_we),
        .o_dm_valid(w_dm_valid),
        .o_mem_data(w_dm_out)
    );
    
    wire [31:0] w_portA;
    
    gpio gpio_inst1 (
        .i_clk_100M(w_clk_50M),
        .i_gpio_en_n(w_data_mem_en),
        .i_gpio_wr_en(w_dm_we),
        .i_gpio_addr(w_dm_addr),
        .i_gpio_data(w_dm_in),
        .o_portA(w_portA)
    );
    
    assign o_portA[0] = w_portA[0];
    assign o_portA[1] = w_portA[1];
    assign o_portA[2] = w_portA[2];
    assign o_portA[3] = w_portA[3];
    assign o_portA[4] = w_portA[4];
    assign o_portA[5] = w_portA[5];
    assign o_portA[6] = w_portA[6];
    assign o_portA[7] = w_portA[7];
    assign o_portA[8] = w_portA[8];
    assign o_portA[9] = w_portA[9];
    assign o_portA[10] = w_portA[10];
    assign o_portA[11] = w_portA[11];
    assign o_portA[12] = w_portA[12];
    assign o_portA[13] = w_portA[13];
    assign o_portA[14] = w_portA[14];
    assign o_portA[15] = w_portA[15];
    
endmodule
