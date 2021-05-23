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
    output [31:0] o_imm,
    output o_i_type,
    output o_r_type,
    output o_add,
    output o_sub, 
    output o_sll, 
    output o_slt,
    output o_sltu, 
    output o_xor, 
    output o_srl, 
    output o_sra, 
    output o_or, 
    output o_and, 
    output o_slli, 
    output o_srli, 
    output o_srai, 
    output o_addi, 
    output o_slti, 
    output o_sltiu, 
    output o_xori, 
    output o_ori, 
    output o_andi, 
    output o_fence, 
    output o_lb, 
    output o_lh, 
    output o_lw, 
    output o_lbu, 
    output o_lhu, 
    output o_ebreak, 
    output o_ecall, 
    output o_sb, 
    output o_sh, 
    output o_sw, 
    output o_beq, 
    output o_bne, 
    output o_blt, 
    output o_bge, 
    output o_bltu, 
    output o_bgeu, 
    output o_lui, 
    output o_auipc, 
    output o_jal,
    output o_jalr,
    output [5:0] o_load_type,
    output [2:0] o_store_type,
    output [7:0] o_branch_type,
    output [3:0] o_arithmetic,
    output [9:0] o_logical,
    output [5:0] o_shift
    );
    
    wire w_r_type = i_instr_valid ? (i_instr[6:2] == 5'b01100 ? 1'b1 : 1'b0) : 1'b0;
    wire w_i_type = i_instr_valid ? ((i_instr[6:2] == 5'b11001 || i_instr[6:2] == 5'b00000 || i_instr[6:2] == 5'b00100 || i_instr[6:2] == 5'b11100 || i_instr[6:2] == 5'b00011) ? 1'b1 : 1'b0) : 1'b0;
    wire w_s_type = i_instr_valid ? (i_instr[6:2] == 5'b01000 ? 1'b1 : 1'b0) : 1'b0;
    wire w_b_type = i_instr_valid ? (i_instr[6:2] == 5'b11000 ? 1'b1 : 1'b0) : 1'b0;
    wire w_u_type = i_instr_valid ? ((i_instr[6:2] == 5'b01101 || i_instr[6:2] == 5'b00101) ? 1'b1 : 1'b0) : 1'b0;
    wire w_j_type = i_instr_valid ? (i_instr[6:2] == 5'b11011 ? 1'b1 : 1'b0) : 1'b0;
    
    assign o_i_type = w_i_type;
    assign o_r_type = w_r_type;
    
    assign o_rd_valid = i_instr_valid ? (!(w_s_type || w_b_type)) : 1'b0;
    assign o_rs1_valid = i_instr_valid ? (!(w_u_type || w_j_type)) : 1'b0;
    assign o_rs2_valid = i_instr_valid ? (!(w_i_type || w_u_type || w_j_type)) : 1'b0;
    wire w_funct3_valid = i_instr_valid ? (!(w_u_type || w_j_type)) : 1'b0;
    wire w_funct7_valid = i_instr_valid ? (w_r_type) : 1'b0;
    wire w_funct12_valid = i_instr_valid ? ((i_instr[6:2] == 5'b11100)) : 1'b0; //for ebreak and ecall instructions
    assign o_imm_valid = i_instr_valid ? (!(w_r_type | (i_instr[6:2] == 5'b11100))) : 1'b0; //immediate invalid for r-type and ebreak and ecall instructions
    
    assign o_rd = o_rd_valid ? i_instr[11:7] : 5'b0;
    assign o_rs1 = o_rs1_valid ? i_instr[19:15] : 5'b0;
    assign o_rs2 = o_rs2_valid ? i_instr[24:20] : 5'b0;
    wire [2:0] w_funct3 = w_funct3_valid ? i_instr[14:12] : 3'b0;
    wire [6:0] w_funct7 = w_funct7_valid ? i_instr[31:25] : 7'b0;
    wire [11:0] w_funct12 = w_funct12_valid ? i_instr[31:20] : 12'b0;
    assign o_imm = o_imm_valid ? w_i_type ? {{21{i_instr[31]}},i_instr[30:20]} : 
                                      w_s_type ? {{21{i_instr[31]}}, i_instr[30:25], i_instr[11:7]} :
                                      w_b_type ? {{20{i_instr[31]}}, i_instr[7], i_instr[30:25], i_instr[11:8], 1'b0} :
                                      w_u_type ? {i_instr[31], i_instr[30:20], i_instr[19:12], 12'b0} :
                                      w_j_type ? {{12{i_instr[31]}}, i_instr[19:12], i_instr[20], i_instr[30:21], 1'b0} :
                                      32'b0 : 32'b0;                               
    
    wire [10:0] w_funct_op = (w_r_type || (w_i_type & !((i_instr[6:2] == 5'b11100)))) ? {i_instr[30],w_funct3,i_instr[6:0]} :
                             (w_s_type || w_b_type) ? {1'b0,w_funct3,i_instr[6:0]} :
                             (w_u_type || w_j_type) ? {4'b0,i_instr[6:0]} :
                             (w_i_type && (i_instr[6:2] == 5'b11100)) ? {i_instr[20],w_funct3,i_instr[6:0]} :
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
    assign o_andi = (w_funct_op inside {11'b?_111_0010011});
    assign o_fence = (w_funct_op inside {11'b?_000_0001111});
    //I type Jump Intruction
    assign o_jalr = (w_funct_op inside {11'b?_000_1100111});
    //I type Load instructions
    assign o_lb = (w_funct_op inside {11'b?_000_0000011});
    assign o_lh = (w_funct_op inside {11'b?_001_0000011});
    assign o_lw = (w_funct_op inside {11'b?_010_0000011});
    assign o_lbu = (w_funct_op inside {11'b?_100_0000011});
    assign o_lhu = (w_funct_op inside {11'b?_101_0000011});
    //I type ecall ebreak (debugging instrtuctions)
    assign o_ebreak = (w_funct_op == 11'b0_000_1110011);
    assign o_ecall = (w_funct_op == 11'b1_000_1110011);
    
    //S type instructions
    assign o_sb = (w_funct_op == 11'b0_000_0100011);    //Store Byte
    assign o_sh = (w_funct_op == 11'b0_001_0100011);    //Store Halfword
    assign o_sw = (w_funct_op == 11'b0_010_0100011);    //Store Word
    
    //B type instructions
    assign o_beq = (w_funct_op == 11'b0_000_1100011);
    assign o_bne = (w_funct_op == 11'b0_001_1100011);
    assign o_blt = (w_funct_op == 11'b0_100_1100011);
    assign o_bge = (w_funct_op == 11'b0_101_1100011);
    assign o_bltu = (w_funct_op == 11'b0_110_1100011);
    assign o_bgeu = (w_funct_op == 11'b0_111_1100011);
    
    //U type instructions
    assign o_lui = (w_funct_op == 11'b0_000_0110111);  //Load Upper Immediate
    assign o_auipc = (w_funct_op == 11'b0_000_0010111);
    
    //J type instructions
    assign o_jal = (w_funct_op == 11'b0_000_1101111);
    
    assign o_load_type = o_lui ? 6'b000001 :
                         o_lb  ? 6'b000010 :
                         o_lh  ? 6'b000100 :
                         o_lw  ? 6'b001000 :
                         o_lbu ? 6'b010000 :
                         o_lhu ? 6'b100000 :
                         6'b000000;
                         
   assign o_store_type = o_sb ? 3'b001 :
                         o_sh ? 3'b010 :
                         o_sw ? 3'b100 :
                         3'b000;
                         
    assign o_branch_type = o_beq ? 8'b0000_0001 :
                           o_bne ? 8'b0000_0010 :
                           o_blt ? 8'b0000_0100 :
                           o_bge ? 8'b0000_1000 :
                           o_bltu ? 8'b0001_0000 :
                           o_bgeu ? 8'b0010_0000 :
                           o_jalr ? 8'b0100_0000 :
                           o_jal ? 8'b1000_0000 :
                           0;
                           
    assign o_arithmetic = o_addi ? 4'b0001 :
                          o_add ? 4'b0010 :
                          o_sub ? 4'b0100 :
                          o_auipc ? 4'b1000 :
                          0;
                          
    assign o_logical = o_slti ? 10'b0000_0000_01 :
                       o_sltiu ? 10'b0000_0000_10 :
                       o_xori ? 10'b0000_0001_00 :
                       o_ori ? 10'b0000_0010_00 :
                       o_andi ? 10'b0000_0100_00 :
                       o_slt ? 10'b0000_1000_00 :
                       o_sltu ? 10'b0001_0000_00 :
                       o_xor ? 10'b0010_0000_00 :
                       o_or ? 10'b0100_0000_00 :
                       o_and ? 10'b1000_0000_00 :
                       0;
                       
    assign o_shift = o_slli ? 6'b000_001 :
                     o_srli ? 6'b000_010 :
                     o_srai ? 6'b000_100 :
                     o_sll ? 6'b001_000 :
                     o_srl ? 6'b010_000 :
                     o_sra ? 6'b100_000 :
                     0;                     
                                                                                                                                  
endmodule
