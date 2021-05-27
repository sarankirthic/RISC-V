`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 10:33:16 PM
// Design Name: 
// Module Name: data_mem
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


module data_mem(
    input i_clk_100M,
    input i_dm_en,
    input [31:0] i_data_addr,
    input [31:0] i_data_in,
    input i_data_we,
    output o_dm_valid,
    output [31:0] o_mem_data
    );
    
   wire [14:0] w_dm_addr = i_data_addr[14:0];
    
   Data_RAM Data_RAM_1
       (.BRAM_PORTA_0_addr(w_dm_addr),
        .BRAM_PORTA_0_clk(i_clk_100M),
        .BRAM_PORTA_0_din(i_data_in),
        .BRAM_PORTA_0_en(i_dm_en),
        .BRAM_PORTA_0_we(i_data_we),
        .BRAM_PORTB_0_addr(w_dm_addr),
        .BRAM_PORTB_0_clk(i_clk_100M),
        .BRAM_PORTB_0_dout(o_mem_data),
        .BRAM_PORTB_0_en(i_dm_en));
        
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
        r_addr_del_1 <= i_data_addr;
        r_addr_del_2 <= r_addr_del_1;
    end
    
    assign o_dm_valid = i_dm_en ? ((i_data_addr == r_addr_del_2) && (r_init_clk_count == 7)) : 1'b0;
        
endmodule
