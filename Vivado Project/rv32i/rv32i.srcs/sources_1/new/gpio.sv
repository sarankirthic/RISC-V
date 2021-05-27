`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 10:48:45 PM
// Design Name: 
// Module Name: gpio
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


module gpio(
    input i_clk_100M,
    input i_gpio_en_n,
    input i_gpio_wr_en,
    input [31:0] i_gpio_addr,
    input [31:0] i_gpio_data,
    output [31:0] o_portA
    );
    
    reg [31:0] r_gpio_data = 0;
    
    always @(posedge i_clk_100M)
    begin
        if(!i_gpio_en_n && i_gpio_wr_en)
            r_gpio_data <= i_gpio_data;
        else
            r_gpio_data <= r_gpio_data;
    end
    
    assign o_portA = r_gpio_data[31:0];
     
endmodule
