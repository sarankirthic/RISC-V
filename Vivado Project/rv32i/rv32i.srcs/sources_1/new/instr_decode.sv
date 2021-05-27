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
    wire w_add = (w_funct_op == 11'b0_000_0110011);
    wire w_sub = (w_funct_op == 11'b1_000_0110011); 
    wire w_sll = (w_funct_op == 11'b0_001_0110011);
    wire w_slt = (w_funct_op == 11'b0_010_0110011);
    wire w_sltu = (w_funct_op == 11'b0_011_0110011);
    wire w_xor = (w_funct_op == 11'b0_100_0110011);
    wire w_srl = (w_funct_op == 11'b0_101_0110011);
    wire w_sra = (w_funct_op == 11'b1_101_0110011);
    wire w_or = (w_funct_op == 11'b0_110_0110011);
    wire w_and = (w_funct_op == 11'b0_111_0110011);
    
    //I type instructions
    wire w_slli = (w_funct_op == 11'b0_001_0010011);
    wire w_srli = (w_funct_op == 11'b0_101_0010011);
    wire w_srai = (w_funct_op == 11'b1_101_0010011);
    wire w_addi = (w_funct_op inside {11'b?_000_0010011});
    wire w_slti = (w_funct_op inside {11'b?_010_0010011});
    wire w_sltiu = (w_funct_op inside {11'b?_011_0010011});
    wire w_xori = (w_funct_op inside {11'b?_100_0010011});
    wire w_ori = (w_funct_op inside {11'b?_110_0010011});
    wire w_andi = (w_funct_op inside {11'b?_111_0010011});
    wire w_fence = (w_funct_op inside {11'b?_000_0001111});
    //I type Jump Intruction
    wire w_jalr = (w_funct_op inside {11'b?_000_1100111});
    //I type Load instructions
    wire w_lb = (w_funct_op inside {11'b?_000_0000011});
    wire w_lh = (w_funct_op inside {11'b?_001_0000011});
    wire w_lw = (w_funct_op inside {11'b?_010_0000011});
    wire w_lbu = (w_funct_op inside {11'b?_100_0000011});
    wire w_lhu = (w_funct_op inside {11'b?_101_0000011});
    //I type ecall ebreak (debugging instrtuctions)
    wire w_ebreak = (w_funct_op == 11'b0_000_1110011);
    wire w_ecall = (w_funct_op == 11'b1_000_1110011);
    
    //S type instructions
    wire w_sb = (w_funct_op == 11'b0_000_0100011);    //Store Byte
    wire w_sh = (w_funct_op == 11'b0_001_0100011);    //Store Halfword
    wire w_sw = (w_funct_op == 11'b0_010_0100011);    //Store Word
    
    //B type instructions
    wire w_beq = (w_funct_op == 11'b0_000_1100011);
    wire w_bne = (w_funct_op == 11'b0_001_1100011);
    wire w_blt = (w_funct_op == 11'b0_100_1100011);
    wire w_bge = (w_funct_op == 11'b0_101_1100011);
    wire w_bltu = (w_funct_op == 11'b0_110_1100011);
    wire w_bgeu = (w_funct_op == 11'b0_111_1100011);
    
    //U type instructions
    wire w_lui = (w_funct_op == 11'b0_000_0110111);  //Load Upper Immediate
    wire w_auipc = (w_funct_op == 11'b0_000_0010111);
    
    //J type instructions
    wire w_jal = (w_funct_op == 11'b0_000_1101111);
    
    assign o_load_type = w_lui ? 6'b000001 :
                         w_lb  ? 6'b000010 :
                         w_lh  ? 6'b000100 :
                         w_lw  ? 6'b001000 :
                         w_lbu ? 6'b010000 :
                         w_lhu ? 6'b100000 :
                         6'b000000;
                         
   assign o_store_type = w_sb ? 3'b001 :
                         w_sh ? 3'b010 :
                         w_sw ? 3'b100 :
                         3'b000;
                         
    assign o_branch_type = w_beq ? 8'b0000_0001 :
                           w_bne ? 8'b0000_0010 :
                           w_blt ? 8'b0000_0100 :
                           w_bge ? 8'b0000_1000 :
                           w_bltu ? 8'b0001_0000 :
                           w_bgeu ? 8'b0010_0000 :
                           w_jalr ? 8'b0100_0000 :
                           w_jal ? 8'b1000_0000 :
                           0;
                           
    assign o_arithmetic = w_addi ? 4'b0001 :
                          w_add ? 4'b0010 :
                          w_sub ? 4'b0100 :
                          w_auipc ? 4'b1000 :
                          0;
                          
    assign o_logical = w_slti ? 10'b0000_0000_01 :
                       w_sltiu ? 10'b0000_0000_10 :
                       w_xori ? 10'b0000_0001_00 :
                       w_ori ? 10'b0000_0010_00 :
                       w_andi ? 10'b0000_0100_00 :
                       w_slt ? 10'b0000_1000_00 :
                       w_sltu ? 10'b0001_0000_00 :
                       w_xor ? 10'b0010_0000_00 :
                       w_or ? 10'b0100_0000_00 :
                       w_and ? 10'b1000_0000_00 :
                       0;
                       
    assign o_shift = w_slli ? 6'b000_001 :
                     w_srli ? 6'b000_010 :
                     w_srai ? 6'b000_100 :
                     w_sll ? 6'b001_000 :
                     w_srl ? 6'b010_000 :
                     w_sra ? 6'b100_000 :
                     0;                     
                                                                                                                                  
endmodule
