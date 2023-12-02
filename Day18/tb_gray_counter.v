`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 11:37:04 PM
// Design Name: 
// Module Name: tb_gray_counter
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

module tb_gray_counter();
reg clk;
reg reset_n;
wire [3:0] count;

gray_counter DUT(.clk(clk),.reset_n(reset_n),.count(count));
always #5 clk=~clk;
always #200 reset_n= 'b1;
initial
begin
$monitor("time=%0t ,clk=%0b, rst=%0b, count=%0h", 
$time, clk,reset_n,count);
clk='b0;
#10 reset_n='b0;
#700 $finish();
end  
endmodule
