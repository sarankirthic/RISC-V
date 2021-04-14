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


module data_mmu(
    input i_clk_100M,
    input [5:0] i_load_type,
    input [2:0] i_store_type,
    input i_rs1_valid,
    input i_rs2_valid,
    input i_rd_valid,
    input i_imm_valid,
    input [4:0] i_rs1_addr,
    input [4:0] i_rs2_addr,
    input [4:0] i_rd_addr,
    input [31:0] i_rf_wr_data,
    input [31:0] i_imm_offset,   
    output o_dataA_valid,
    output o_dataB_valid,
    output [31:0] o_rf_out_dataA,
    output [31:0] o_rf_out_dataB
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
      
    wire [31:0] w_data_addr = 0;
    wire [31:0] w_data_in = 32'b0;
    wire w_data_we = 1'b0;
    
    data_mem data_mem_inst1(
        .i_clk_100M(i_clk_100M),
        .i_data_addr(),
        .i_data_in(),
        .i_data_we(),
        .o_mem_data(o_data_out)
    );
    
    register_file register_file_inst1(
        .i_clk_100M(i_clk_100M),
        .i_wPort_addr(),
        .i_wPort_din(),
        .i_wPort_en(),
        .i_wPort_we(),
        .i_portA_addr(i_rs1_addr),
        .i_portA_en(i_rs1_valid),
        .i_portB_addr(i_rs2_addr),
        .i_portB_en(i_rs2_valid),
        .o_portA_valid(w_portA_valid),
        .o_portB_valid(w_portB_valid),
        .o_portA_dout(o_rf_out_dataA),
        .o_portB_dout(o_rf_out_dataB)
    );
    
endmodule
