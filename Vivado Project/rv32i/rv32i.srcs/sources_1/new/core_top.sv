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
    output o_r_type
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
    
    wire w_r_type;
    
    //instantiate instruction decode unit
    instr_decode instr_decode_inst1(
        .i_clk_100M(i_clk_100M),
        .i_reset_n(i_reset_n),
        .i_instr_valid(w_instr_valid),
        .i_instr(w_instr)
    );
    
    assign o_pc = w_pc;
    assign o_instr_valid = w_instr_valid;
    assign o_instr = w_instr;
    
endmodule
