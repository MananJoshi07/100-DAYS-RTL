`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 10:03:05 PM
// Design Name: 
// Module Name: tb_pipo
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
module tb_pipo();
reg clk;
reg rst;
reg [`DATA_WIDTH-1:0] d;
wire [`DATA_WIDTH-1:0] q_out;

pipo DUT(.clk(clk),
         .rst(rst),
         .d(d),
         .q_out(q_out));

always #10 clk=~clk;
always #20 d=$urandom();
always #60 rst=~rst;

initial
begin
$monitor("time=%0t, clk=%0b, rst=%0b, d=%0b, q_out=%0b",
$time, clk, rst, d, q_out);
clk='b0;
rst='b0;
d='b0;
end         
endmodule