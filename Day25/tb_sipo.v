`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 10:21:09 PM
// Design Name: 
// Module Name: tb_sipo
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

module tb_sipo();
reg clk;
reg rst;
reg din;
wire dout;

sipo DUT(.clk(clk),
         .rst(rst),
         .din(din),
         .dout(dout));

always #10 clk=~clk;
always #20 din=$urandom();
always #60 rst=~rst;

initial
begin
$monitor("time=%0t, clk=%0b, rst=%0b, din=%0b, dout=%0b",
$time, clk, rst, din, dout);
clk='b0;
rst='b0;
din='b0;
end         
endmodule