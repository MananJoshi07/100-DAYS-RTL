`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 12:44:39 PM
// Design Name: 
// Module Name: tb_ring_counter
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

module tb_ring_counter();
reg clk;
reg reset_n;
wire [3:0] count;

ring_counter DUT(.clk(clk),.reset_n(reset_n),.count(count));
always #5 clk=~clk;
always #200 reset_n= ~reset_n;
initial
begin
$monitor("time=%0t ,clk=%0b, rst=%0b, count=%0h", 
$time, clk,reset_n,count);
clk='b0;
reset_n='b0;
#700 $finish();
end  
endmodule