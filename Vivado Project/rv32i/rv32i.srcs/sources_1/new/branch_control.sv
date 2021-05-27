`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2021 10:11:07 PM
// Design Name: 
// Module Name: branch_control
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


module branch_control(
    input [7:0] i_branch_type,
    input i_eq,
    input i_ne,
    input i_lt,
    input i_ge,
    input i_ltu,
    input i_geu,
    input [31:0] i_imm,
    input [31:0] i_pc,
    input [31:0] i_rf_rs1_data,
    input i_rf_rs1_valid,
    output o_branch_taken,
    output o_new_pc_valid,
    output o_ret_addr_valid,
    output [31:0] o_new_pc,
    output [31:0] o_ret_addr
    );
    
    wire w_branch_operation = (i_branch_type != 0) ? 1'b1 : 1'b0;
    
    wire w_beq = i_branch_type[0];
    wire w_bne = i_branch_type[1];
    wire w_blt = i_branch_type[2];
    wire w_bge = i_branch_type[3];
    wire w_bltu = i_branch_type[4];
    wire w_bgeu = i_branch_type[5];
    wire w_jalr = i_branch_type[6];
    wire w_jal = i_branch_type[7];
    
    assign o_branch_taken = w_beq ? i_eq :
                                    w_bne ? i_ne :
                                    w_blt ? i_lt :
                                    w_bge ? i_ge :
                                    w_bltu ? i_ltu :
                                    w_bgeu ? i_geu :
                                    w_jal ? 1'b1 :
                                    w_jalr ? 1'b1 :
                                    1'b0;
                                    
    assign o_new_pc_valid = w_branch_operation ? w_jalr ? i_rf_rs1_valid :
                                                 1'b1 :
                            1'b0;
    assign o_new_pc = !(w_jalr ) ? (i_pc + i_imm) : (i_rf_rs1_data + i_imm);
    assign o_ret_addr_valid = w_branch_operation ? (w_jal || w_jalr) ? 1'b1 :
                                                    1'b0 :
                              1'b0;
    assign o_ret_addr = i_pc + 4;
    
endmodule
