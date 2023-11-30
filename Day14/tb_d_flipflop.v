`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 04:49:46 PM
// Design Name: 
// Module Name: tb_d_flipflop
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
module tb_d_flipflop();
reg d;
reg clk;
reg reset;
wire q;

d_flipflop DUT (
                .d(d), 
                .clk(clk),
                .reset(reset), 
                .q(q));

always #10 clk = ~clk;
always #20 d=~d;
always #200 reset=~reset;
initial
begin
$monitor("time=%0t, clk=%0b, d=%0b, reset=%0b, q=%0b", $time, clk, d, reset, q); 
clk = 'b0;
d='b0;
reset='b0;
end
endmodule
