`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 10:18:27 PM
// Design Name: 
// Module Name: tb_siso
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

`define DATA_WIDTH 4
module tb_siso();
reg clk;
reg rst;
reg s_in;
wire s_out;

siso DUT(.clk(clk),
         .rst(rst),
         .s_in(s_in),
         .s_out(s_out));

always #10 clk=~clk;
always #20 s_in=$urandom();
always #60 rst=~rst;

initial
begin
$monitor("time=%0t, clk=%0b, rst=%0b, s_in=%0b, s_out=%0b",
$time, clk, rst, s_in, s_out);
clk='b0;
rst='b0;
s_in='b0;
end         
endmodule