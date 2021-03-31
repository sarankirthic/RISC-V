`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2021 11:21:29 PM
// Design Name: 
// Module Name: instruction_fetch
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


module instruction_fetch(
    input i_clk_100M,
    input i_reset_n,
    input i_output_en,
    input [31:0] i_instr_addr,
    output o_instr_valid,
    output [31:0] o_instr
    );
    
    wire [31:0] w_instr;
    
    //instantiate instruction memory module
    instr_mem instr_mem_inst1(
        .i_clk_100M(i_clk_100M),
        .i_instr_addr(i_instr_addr),
        .o_mem_instr(w_instr)
    );
    
    reg [31:0] r_addr_del_1 = 0;
    reg [31:0] r_addr_del_2 = 0;
    
    reg [2:0] r_init_clk_count = 0;
    
    always @(posedge i_clk_100M)
    begin
        if(r_init_clk_count < 7)
            r_init_clk_count <= r_init_clk_count + 1;
    end
    
    always @(posedge i_clk_100M)
    begin
        r_addr_del_1 <= i_instr_addr;
        r_addr_del_2 <= r_addr_del_1;
    end
    
    assign o_instr_valid = ((i_instr_addr == r_addr_del_2) && (r_init_clk_count == 7)) ? 1'b1 : 1'b0;
    assign o_instr = i_output_en ? w_instr : 0; //Maybe NOOP instruction instead of 0?
    
endmodule