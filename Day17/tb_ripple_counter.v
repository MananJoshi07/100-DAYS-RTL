`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 11:16:58 PM
// Design Name: 
// Module Name: tb_ripple_counter
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
module tb_ripple_counter();
reg clk;
reg reset_n;
wire [3:0] count;

ripple_counter DUT(.clk(clk),.reset_n(reset_n),.count(count));
always #5 clk=~clk;
always #200 reset_n= 'b1;
initial
begin
$monitor("time=%0t ,clk=%0b, rst=%0b, count=%0h", 
$time, clk,reset_n,count);
clk='b0;
#10 reset_n='b0;
#500 $finish();
end  
endmodule
