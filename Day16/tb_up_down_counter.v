`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 10:52:37 PM
// Design Name: 
// Module Name: tb_up_down_counter
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
module tb_up_down_counter();
reg clk;
reg reset_n;
reg updown;
wire [3:0] count;

up_down_counter DUT(.clk(clk),.reset_n(reset_n),.updown(updown),.count(count));
always #5 clk=~clk;
always #150 updown=~updown;
always #200 reset_n= 'b1;
initial
begin
$monitor("time=%0t ,clk=%0b, updown=%0b, rst=%0b, count=%0h", 
$time, clk,reset_n, updown, count);
clk='b0;
updown='b0;
#10 reset_n='b0;
#700 $finish();
end  
endmodule
