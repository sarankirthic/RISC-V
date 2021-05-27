`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2021 10:49:49 AM
// Design Name: 
// Module Name: alu
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


module alu(
    input [3:0] i_arithmetic,
    input [9:0] i_logical,
    input [5:0] i_shift,
    input i_i_type,
    input i_r_type,
    input i_rf_rs1_valid,
    input i_rf_rs2_valid,
    input i_imm_valid,
    input [31:0] i_pc,
    input [31:0] i_rf_rs1,
    input [31:0] i_rf_rs2,
    input [31:0] i_imm,
    output o_result_valid,
    output reg [31:0] o_alu_result,
    output o_compare_valid,
    output o_eq,
    output o_ne,
    output o_lt,
    output o_ge,
    output o_ltu,
    output o_geu
    );
    
    wire w_alu_operation = (i_arithmetic != 0) || (i_logical != 0) || (i_shift != 0);
        
    parameter c_addi = 4'b0001, c_add = 4'b0010, c_sub = 4'b0100, c_auipc = 4'b1000;
    parameter c_slti = 10'b0000_0000_01, c_sltiu = 10'b0000_0000_10, c_xori = 10'b0000_0001_00, c_ori = 10'b0000_0010_00,
                       c_andi = 10'b0000_0100_00, c_slt = 10'b0000_1000_00, c_sltu = 10'b0001_0000_00, c_xor = 10'b0010_0000_00,
                       c_or = 10'b0100_0000_00, c_and = 10'b1000_0000_00;
    parameter c_slli = 6'b000_001, c_srli = 6'b000_010, c_srai = 6'b000_100, c_sll = 6'b001_000, c_srl = 6'b010_000, c_sra = 6'b100_000;
    
    wire [4:0] w_shamt = (i_shift != 0) ? (i_imm_valid) ? i_imm[4:0] : i_rf_rs2[4:0] :
                         0;                         
    
    reg [31:0] r_arith_result;
    reg [31:0] r_logical_result = 0;
    reg [31:0] r_shift_result = 0;
    
    always @(*)
    begin
        case (i_arithmetic)
            c_addi:     r_arith_result <= i_rf_rs1 + i_imm;
            c_add:      r_arith_result <= i_rf_rs1 + i_rf_rs2;
            c_sub:      r_arith_result <= i_rf_rs1 - i_rf_rs2;
            c_auipc:    r_arith_result <= i_pc + i_imm;
            default:    r_arith_result <= 0;
        endcase
        case (i_logical)
            c_slti:     r_logical_result <= ($signed(i_rf_rs1) < $signed(i_imm)) ? 1 : 0;
            c_sltiu:    r_logical_result <= (i_rf_rs1 < i_imm) ? 1 : 0;
            c_xori:     r_logical_result <= (i_rf_rs1 ^ i_imm);
            c_ori:      r_logical_result <= (i_rf_rs1 | i_imm);
            c_andi:     r_logical_result <= (i_rf_rs1 & i_imm);
            c_slt:      r_logical_result <= (i_rf_rs1 < i_rf_rs2) ? 1 : 0;
            c_sltu:     r_logical_result <= ($signed(i_rf_rs1) < $signed(i_rf_rs2)) ? 1 : 0;
            c_xor:      r_logical_result <= (i_rf_rs1 ^ i_rf_rs2);
            c_or:       r_logical_result <= (i_rf_rs1 | i_rf_rs2);
            c_and:      r_logical_result <= (i_rf_rs1 & i_rf_rs2);
        endcase 
        case (i_shift)
            c_slli:     r_shift_result = (i_rf_rs1 << w_shamt);
            c_srli:     r_shift_result = (i_rf_rs1 >> w_shamt);
            c_srai:     r_shift_result = (i_rf_rs1 >>> w_shamt);
            c_sll:      r_shift_result = (i_rf_rs1 << w_shamt);
            c_srl:      r_shift_result = (i_rf_rs1 >> w_shamt);
            c_sra:      r_shift_result = (i_rf_rs1 >>> w_shamt);
        endcase                  
    end
    
    assign o_alu_result = ((i_arithmetic != 0) && (i_logical == 0) && (i_shift == 0)) ? r_arith_result :
                          ((i_arithmetic == 0) && (i_logical != 0) && (i_shift == 0)) ? r_logical_result :
                          ((i_arithmetic == 0) && (i_logical == 0) && (i_shift != 0)) ? r_shift_result :
                          0;
                          
    assign o_result_valid = w_alu_operation ? i_r_type ? (i_rf_rs1_valid && i_rf_rs2_valid) :
                                              i_i_type ? (i_rf_rs1_valid && i_imm_valid) :
                                              (i_arithmetic == c_auipc) ? (i_imm_valid) :
                                              0 :
                                          
                            0;
                                
    /*assign o_result_valid = i_r_type ? (i_rf_rs1_valid && i_rf_rs2_valid) :
                            (i_arithmetic == c_auipc) ? (i_imm_valid) :
                            (i_i_type) ? (i_rf_rs1_valid && i_imm_valid) :
                             1'b0;*/
    
    assign o_compare_valid = (i_rf_rs1_valid && i_rf_rs2_valid) ? 1'b1 : 1'b0;
                            
    assign o_eq = o_compare_valid ? (i_rf_rs1 == i_rf_rs2) : 1'b0;
    assign o_ne = o_compare_valid ? (i_rf_rs1 != i_rf_rs2) : 1'b0;
    assign o_lt = o_compare_valid ? ($signed(i_rf_rs1) < $signed(i_rf_rs2)) : 1'b0;
    assign o_ge = o_compare_valid ? ($signed(i_rf_rs1) >= $signed(i_rf_rs2)) : 1'b0;
    assign o_ltu = o_compare_valid ? (i_rf_rs1 < i_rf_rs2) : 1'b0;
    assign o_geu = o_compare_valid ? (i_rf_rs1 >= i_rf_rs2) : 1'b0;                            
    
endmodule
