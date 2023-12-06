`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 11:45:18 AM
// Design Name: 
// Module Name: tb_mod_2_counter
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


module tb_mod_2_counter#(parameter WIDTH = 2)();
reg clk;
reg reset;
wire [WIDTH-1:0] count;

mod_2_counter DUT (.clk(clk),
                   .reset(reset),
                   .count(count));
always #10 clk=~clk;
always #200 reset= $urandom();

initial
begin
$monitor("time=%0t, clk=%0b, reset=%0b, count=%0b", $time, clk, reset, count);
clk='b0;
reset='b0;
end                   
endmodule

