`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 16:16:37
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();
reg a_in;
reg b_in;
reg c_in;
wire sum_out;
wire c_out;

full_adder DUT(.a_in(a_in),
               .b_in(b_in),
               .c_in(c_in),
               .sum_out(sum_out),
               .c_out(c_out));

always #10 a_in= $urandom();
always #20 b_in= $urandom();
always #30 c_in= $urandom();

initial
begin
$monitor("time=%0t, a_in=%0b, b_in=%0b, c_in=%0b, sum_out=%0b, c_out=%0b", 
$time, a_in, b_in, c_in, sum_out, c_out);
a_in= 'b0;
b_in= 'b0;
c_in='b0;
#1000 $finish();
end               
endmodule
