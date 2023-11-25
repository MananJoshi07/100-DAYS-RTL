`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 11:45:36 AM
// Design Name: 
// Module Name: tb_carry_look_ahead
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
module tb_carry_look_ahead();
reg [3:0] a_in;
reg [3:0] b_in;
reg  c_in;
wire [3:0] sum_out;
wire carry_out;

carry_look_ahead DUT(.a_in(a_in),
                     .b_in(b_in),
                     .c_in(c_in),
                     .sum_out(sum_out),
                     .carry_out(carry_out));
always #10 a_in=$urandom;
always #20 b_in=$urandom;
always #30 c_in=$urandom;

initial
begin
$monitor("time=%0t, a_in=%0b, b_in=%0b, c_in=%0b, sum_out=%0b, carry_out=%0b",
$time, a_in, b_in, c_in, sum_out, carry_out);
a_in='b0;
b_in='b0;
c_in='b0;
end                     
endmodule
