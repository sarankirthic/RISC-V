`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 09:16:11 AM
// Design Name: 
// Module Name: core_top
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


module core_top(
    input i_clk_100M,
    input i_reset_n,
    output [31:0] o_instr,
    output o_instr_valid,
    output [31:0] o_pc,
    output o_add,
    output o_and,
    output o_or
    );
    
    wire w_count_en = w_instr_valid;
    wire w_load_en = 1'b0;
    reg [31:0] r_load_val = 0;
    wire [31:0] w_pc;
    
    //instantiate program counter module
    program_counter program_counter_inst1(
        .i_clk_100M(i_clk_100M),
        .i_reset_n(i_reset_n),
        .i_count_en(w_count_en),
        .i_load_en(w_load_en),
        .i_load_val(r_load_val),
        .o_pc(w_pc)
    );
    
    wire w_instr_valid;
    wire w_output_en = 1'b1;
    wire [31:0] w_instr;
    
    //instantiate instruction fetch unit
    instruction_fetch instruction_fetch_inst1(
        .i_clk_100M(i_clk_100M),
        .i_reset_n(i_reset_n),
        .i_output_en(w_output_en),
        .i_instr_addr(w_pc),
        .o_instr_valid(w_instr_valid),
        .o_instr(w_instr)
    );
    
    wire w_rd_valid;
    wire w_rs1_valid;
    wire w_rs2_valid;
    wire w_imm_valid;
    wire [4:0] w_rd;
    wire [4:0] w_rs1;    
    wire [4:0] w_rs2;
    wire [31:0] w_imm;
    
    wire w_add;
    wire w_sub; 
    wire w_sll; 
    wire w_slt; 
    wire w_sltu; 
    wire w_xor; 
    wire w_srl; 
    wire w_sra; 
    wire w_or; 
    wire w_and; 
    wire w_slli; 
    wire w_srli; 
    wire w_srai; 
    wire w_addi; 
    wire w_slti; 
    wire w_sltiu; 
    wire w_xori; 
    wire w_ori; 
    wire w_andi; 
    wire w_fence; 
    wire w_lb; 
    wire w_lh; 
    wire w_lw; 
    wire w_lbu; 
    wire w_lhu; 
    wire w_ebreak; 
    wire w_ecall; 
    wire w_sb; 
    wire w_sh; 
    wire w_sw; 
    wire w_beq; 
    wire w_bne; 
    wire w_blt; 
    wire w_bge; 
    wire w_bltu; 
    wire w_bgeu; 
    wire w_lui; 
    wire w_auipc; 
    wire w_jal;
    
    wire [5:0] w_load_type;
    wire [2:0] w_store_type;
    
    
    assign o_add = w_add;
    assign o_and = w_and;
    assign o_or = w_or;
    
    //instantiate instruction decode unit
    instr_decode instr_decode_inst1(
        .i_clk_100M(i_clk_100M),
        .i_reset_n(i_reset_n),
        .i_instr_valid(w_instr_valid),
        .i_instr(w_instr),
        .o_rd_valid(w_rd_valid),
        .o_rs1_valid(w_rs1_valid),
        .o_rs2_valid(w_rs2_valid),
        .o_imm_valid(w_imm_valid),
        .o_rd(w_rd),
        .o_rs1(w_rs1),    
        .o_rs2(w_rs2),
        .o_imm(w_imm),
        .o_add(w_add),
        .o_sub(w_sub), 
        .o_sll(w_sll), 
        .o_slt(w_slt), 
        .o_sltu(w_sltu), 
        .o_xor(w_xor), 
        .o_srl(w_srl), 
        .o_sra(w_sra), 
        .o_or(w_or), 
        .o_and(w_and), 
        .o_slli(w_slli), 
        .o_srli(w_srli), 
        .o_srai(w_srai), 
        .o_addi(w_addi), 
        .o_slti(w_slti), 
        .o_sltiu(w_sltiu), 
        .o_xori(w_xori), 
        .o_ori(w_ori), 
        .o_andi(w_andi), 
        .o_fence(w_fence), 
        .o_lb(w_lb), 
        .o_lh(w_lh), 
        .o_lw(w_lw), 
        .o_lbu(w_lbu), 
        .o_lhu(w_lhu), 
        .o_ebreak(w_ebreak), 
        .o_ecall(w_ecall), 
        .o_sb(w_sb), 
        .o_sh(w_sh), 
        .o_sw(w_sw), 
        .o_beq(w_beq), 
        .o_bne(w_bne), 
        .o_blt(w_blt), 
        .o_bge(w_bge), 
        .o_bltu(w_bltu), 
        .o_bgeu(w_bgeu), 
        .o_lui(w_lui), 
        .o_auipc(w_auipc), 
        .o_jal(w_jal),
        .o_load_type(w_load_type),
        .o_store_type(w_store_type)
    );
    
    assign o_pc = w_pc;
    assign o_instr_valid = w_instr_valid;
    assign o_instr = w_instr;
    
endmodule
