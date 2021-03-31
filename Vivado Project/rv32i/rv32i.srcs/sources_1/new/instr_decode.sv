`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 05:08:20 PM
// Design Name: 
// Module Name: instr_decode
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


module instr_decode(
    input i_clk_100M,
    input i_reset_n,
    input i_instr_valid,
    input [31:0] i_instr,
    output o_rd_valid,
    output o_rs1_valid,
    output o_rs2_valid,
    output o_imm_valid,
    output [4:0] o_rd,
    output [4:0] o_rs1,    
    output [4:0] o_rs2,
    output [31:0] o_imm
    );
    
    wire w_r_type = i_instr_valid ? (i_instr[6:2] == 5'b01100 ? 1'b1 : 1'b0) : 1'b0;
    wire w_i_type = i_instr_valid ? ((i_instr[6:2] == 5'b11001 || i_instr[6:2] == 5'b00000 || i_instr[6:2] == 5'b00100 || i_instr[6:2] == 5'b11100 || i_instr[6:2] == 5'b00011) ? 1'b1 : 1'b0) : 1'b0;
    wire w_s_type = i_instr_valid ? (i_instr[6:2] == 5'b01000 ? 1'b1 : 1'b0) : 1'b0;
    wire w_b_type = i_instr_valid ? (i_instr[6:2] == 5'b11000 ? 1'b1 : 1'b0) : 1'b0;
    wire w_u_type = i_instr_valid ? ((i_instr[6:2] == 5'b01101 || i_instr[6:2] == 5'b00101) ? 1'b1 : 1'b0) : 1'b0;
    wire w_j_type = i_instr_valid ? (i_instr[6:2] == 5'b11011 ? 1'b1 : 1'b0) : 1'b0;
    
    assign o_rd_valid = !(w_s_type || w_b_type);
    assign o_rs1_valid = !(w_u_type || w_j_type);
    assign o_rs2_valid = !(w_i_type || w_u_type || w_j_type);
    wire w_funct3_valid = !(w_u_type || w_j_type);
    wire w_funct7_valid = w_r_type;
    assign o_imm_valid = !w_r_type;
    
    assign o_rd = o_rs2_valid ? i_instr[15:7] : 5'b0;
    assign o_rs1 = o_rs1_valid ? i_instr[19:15] : 5'b0;
    assign o_rs2 = o_rs2_valid ? i_instr[24:20] : 5'b0;
    wire [2:0] w_funct3 = w_funct3_valid ? i_instr[14:12] : 3'b0;
    wire [6:0] w_funct7 = w_funct7_valid ? i_instr[31:25] : 7'b0;
    assign o_imm = o_imm_valid ? w_i_type ? {{21{i_instr[31]}},i_instr[30:20]} : 
                                      w_s_type ? {{21{i_instr[31]}}, i_instr[30:25], i_instr[11:7]} :
                                      w_b_type ? {{21{i_instr[31]}}, i_instr[30:25], i_instr[11:8], 1'b0} :
                                      w_u_type ? {i_instr[31], i_instr[30:20], i_instr[19:12], 12'b0} :
                                      w_j_type ? {{12{i_instr[31]}}, i_instr[19:12], i_instr[20], i_instr[30:21], 1'b0} :
                                      32'b0 : 32'b0;                               
    
    wire [10:0] w_funct_op = (w_r_type || w_i_type) ? {i_instr[30],i_instr[14:12],i_instr[6:0]} :
                             (w_s_type || w_b_type) ? {1'b0,i_instr[14:12],i_instr[6:0]} :
                             (w_u_type || w_j_type) ? {4'b0,i_instr[6:0]} :
                              11'b0;
    //R type instructions    
    assign o_add = (w_funct_op == 11'b0_000_0110011);
    assign o_sub = (w_funct_op == 11'b1_000_0110011); 
    assign o_sll = (w_funct_op == 11'b0_001_0110011);
    assign o_slt = (w_funct_op == 11'b0_010_0110011);
    assign o_sltu = (w_funct_op == 11'b0_011_0110011);
    assign o_xor = (w_funct_op == 11'b0_100_0110011);
    assign o_srl = (w_funct_op == 11'b0_101_0110011);
    assign o_sra = (w_funct_op == 11'b1_101_0110011);
    assign o_or = (w_funct_op == 11'b0_110_0110011);
    assign o_and = (w_funct_op == 11'b0_111_0110011);
    
    //I type instructions
    assign o_slli = (w_funct_op == 11'b0_001_0010011);
    assign o_srli = (w_funct_op == 11'b0_101_0010011);
    assign o_srai = (w_funct_op == 11'b1_101_0010011);
    assign o_addi = (w_funct_op inside {11'b?_000_0010011});
    assign o_slti = (w_funct_op inside {11'b?_010_0010011});
    assign o_sltiu = (w_funct_op inside {11'b?_011_0010011});
    assign o_xori = (w_funct_op inside {11'b?_100_0010011});
    assign o_ori = (w_funct_op inside {11'b?_110_0010011});
    assign o_slti = (w_funct_op inside {11'b?_111_0010011});
    assign o_fence = (w_funct_op inside {11'b?_000_0001111});
    
    //S type instructions
    assign o_sb = (w_funct_op == 11'b0_000_0100011);
    assign o_sh = (w_funct_op == 11'b0_001_0100011);
    assign o_sw = (w_funct_op == 11'b0_010_0100011);
    
    //B type instructions
    assign o_beq = (w_funct_op == 11'b0_000_1100011);
    assign o_bne = (w_funct_op == 11'b0_001_1100011);
    assign o_blt = (w_funct_op == 11'b0_100_1100011);
    assign o_bge = (w_funct_op == 11'b0_101_1100011);
    assign o_bltu = (w_funct_op == 11'b0_110_1100011);
    assign o_bgeu = (w_funct_op == 11'b0_111_1100011);
    
    //U type instructions
    assign o_lui = (w_funct_op == 11'b0_000_0110111);
    assign o_lui = (w_funct_op == 11'b0_000_0010111);
    
    //J type instructions
    assign o_jal = (w_funct_op == 11'b0_000_1101111);
                                             
endmodule
