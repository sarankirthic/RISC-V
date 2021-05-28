`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 10:52:51 PM
// Design Name: 
// Module Name: data_mmu
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


module mmu(
    input i_clk_100M,
    input i_instr_valid,
    input [5:0] i_load_type,
    input [2:0] i_store_type,
    input i_rs1_valid,
    input i_rs2_valid,
    input i_rd_valid,
    input i_rf_wr_valid,
    input i_imm_valid,
    input [4:0] i_rs1_addr,
    input [4:0] i_rs2_addr,
    input [4:0] i_rd_addr,
    input [31:0] i_rf_wr_data,
    input [31:0] i_imm,
    input i_dm_valid,
    input [31:0] i_dm_out,   
    output o_rf_rs1_valid,
    output o_rf_rs2_valid,
    output [31:0] o_rf_out_data_rs1,
    output [31:0] o_rf_out_data_rs2,
    output o_dm_valid,
    output o_dm_en,
    output o_dm_we,
    output [31:0] o_dm_addr,
    output [31:0] o_dm_out,
    output [31:0] o_dm_in,
    output o_mmu_done
    );
    
    wire w_load = (i_load_type != 0);
    wire w_lui = i_load_type[0];
    wire w_lb = i_load_type[1];
    wire w_lh = i_load_type[2];
    wire w_lw = i_load_type[3];
    wire w_lbu = i_load_type[4];
    wire w_lhu = i_load_type[5];
    
    wire w_store = (i_store_type != 0);
    wire w_sb = i_store_type[0];
    wire w_sh = i_store_type[1];
    wire w_sw = i_store_type[2];
    
    wire w_dm_en = (w_lb || w_lh || w_lw || w_lbu || w_lhu || w_store) && o_rf_rs1_valid;
    wire w_compute_dm_addr = ((w_lb || w_lh || w_lw || w_lbu || w_lhu || w_store) && o_rf_rs1_valid);    
    wire [31:0] w_dm_addr = w_compute_dm_addr ? (o_rf_out_data_rs1 + i_imm): 32'b0;
    wire w_dm_we = (w_store && (o_rf_rs2_valid && o_rf_rs1_valid)) ? 1'b1 : 1'b0;
    wire [31:0] w_dm_in = w_sw ? o_rf_out_data_rs2 :
                                   w_sh ? {16'b0, o_rf_out_data_rs2[15:0]} :
                                   w_sb ? {24'b0, o_rf_out_data_rs2[7:0]} :
                                   32'b0;                                                               
    
    /*data_mem data_mem_inst1(
        .i_clk_100M(i_clk_100M),
        .i_dm_en(w_dm_en),
        .i_data_addr(w_dm_addr),
        .i_data_in(w_dm_in),
        .i_data_we(w_dm_we),
        .o_dm_valid(o_dm_valid),
        .o_mem_data(o_dm_out)
    );*/
    
    reg r_dm_we_del_1;
    
    always @(posedge i_clk_100M)
    begin
        r_dm_we_del_1 <= w_dm_we;            
    end
    
    wire w_store_done = (w_dm_we && r_dm_we_del_1);
    
    assign o_dm_en = w_dm_en;
    assign o_dm_we = w_dm_we;
    assign o_dm_in = w_dm_in;
    assign o_dm_addr = w_dm_addr;
    assign o_dm_valid = i_dm_valid;
    assign o_dm_out = i_dm_out;
    
    /*wire w_rf_wr_valid = i_rd_valid ? ((w_load == 0) && (w_store == 0) && i_rf_wr_vaild) || ((w_load != 0 && o_dm_valid) || w_lui) ? 1'b1: 1'b0) :
                         1'b0;*/
    wire w_rf_wr_valid = i_rd_valid ? (w_load & ~ w_lui) ? i_dm_valid :
                                      (w_load & w_lui) ? i_imm_valid :
                                       w_store ? 1'b0 :
                                       i_rf_wr_valid ? 1'b1 :
                                       1'b0 :
                         1'b0;                         
    wire [31:0] w_rf_wr_data = w_rf_wr_valid ? i_dm_valid ? i_dm_out :
                                               w_lui ? i_imm :
                                               i_rf_wr_valid ? i_rf_wr_data : 
                                               32'b0 :
                               32'b0;

    register_file register_file_inst1(
        .i_clk_100M(i_clk_100M),
        .i_instr_valid(i_instr_valid),
        .i_wPort_addr(i_rd_addr),
        .i_wPort_din(w_rf_wr_data),
        .i_wPort_en(w_rf_wr_valid),
        .i_wPort_we(w_rf_wr_valid),
        .i_portA_addr(i_rs1_addr),
        .i_portA_en(i_rs1_valid),
        .i_portB_addr(i_rs2_addr),
        .i_portB_en(i_rs2_valid),
        .o_portA_valid(o_rf_rs1_valid),
        .o_portB_valid(o_rf_rs2_valid),
        .o_portA_dout(o_rf_out_data_rs1),
        .o_portB_dout(o_rf_out_data_rs2)
    );
    
    assign o_mmu_done = ((w_load == 0 && w_store == 0) && w_rf_wr_valid) || ((w_load != 0 && w_lui == 0) && w_rf_wr_valid && o_rf_rs1_valid)
                        || ((w_store != 0) && w_store_done) || (w_lui && w_rf_wr_valid);
    
endmodule
