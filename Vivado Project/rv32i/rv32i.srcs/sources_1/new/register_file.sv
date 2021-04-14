`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2021 08:00:40 PM
// Design Name: 
// Module Name: register_file
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


module register_file(
    input i_clk_100M,
    input [4:0]i_wPort_addr,
    input [7:0]i_wPort_din,
    input i_wPort_en,
    input i_wPort_we,
    input [4:0]i_portA_addr,
    input i_portA_en,
    input [4:0]i_portB_addr,
    input i_portB_en,
    output o_portA_valid,
    output o_portB_valid,
    output [7:0]o_portA_dout,
    output [7:0]o_portB_dout
    );
    
     BRAM_32B_SDP BRAM_32B_SDP_RPORTA
       (.BRAM_PORTA_0_addr(i_wPort_addr),
        .BRAM_PORTA_0_clk(i_clk_100M),
        .BRAM_PORTA_0_din(i_wPort_din),
        .BRAM_PORTA_0_en(i_wPort_en),
        .BRAM_PORTA_0_we(i_wPort_we),
        .BRAM_PORTB_0_addr(i_portA_addr),
        .BRAM_PORTB_0_clk(i_clk_100M),
        .BRAM_PORTB_0_dout(o_portA_dout),
        .BRAM_PORTB_0_en(i_portA_en));
        
        BRAM_32B_SDP BRAM_32B_SDP_RPORTB
       (.BRAM_PORTA_0_addr(i_wPort_addr),
        .BRAM_PORTA_0_clk(i_clk_100M),
        .BRAM_PORTA_0_din(i_wPort_din),
        .BRAM_PORTA_0_en(i_wPort_en),
        .BRAM_PORTA_0_we(i_wPort_we),
        .BRAM_PORTB_0_addr(i_portB_addr),
        .BRAM_PORTB_0_clk(i_clk_100M),
        .BRAM_PORTB_0_dout(o_portB_dout),
        .BRAM_PORTB_0_en(i_portB_en));
        
    reg [31:0] r_portA_addr_del_1 = 0;
    reg [31:0] r_portA_addr_del_2 = 0;
    reg [31:0] r_portB_addr_del_1 = 0;
    reg [31:0] r_portB_addr_del_2 = 0;
    
    reg [2:0] r_init_clk_count = 0;
    
    always @(posedge i_clk_100M)
    begin
        if(r_init_clk_count < 7)
            r_init_clk_count <= r_init_clk_count + 1;
    end
    
    always @(posedge i_clk_100M)
    begin
        r_portA_addr_del_1 <= i_portA_addr;
        r_portA_addr_del_2 <= r_portA_addr_del_1;
        r_portB_addr_del_1 <= i_portB_addr;
        r_portB_addr_del_2 <= r_portB_addr_del_1;
    end
    
    assign o_portA_valid = ((i_portA_addr == r_portA_addr_del_2) && (r_init_clk_count == 7)) ? 1'b1 : 1'b0;
    assign o_portB_valid = ((i_portB_addr == r_portB_addr_del_2) && (r_init_clk_count == 7)) ? 1'b1 : 1'b0;
        
endmodule
