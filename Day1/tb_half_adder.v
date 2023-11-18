`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 15:48:27
// Design Name: 
// Module Name: tb_half_adder
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
module tb_half_adder();
reg a_in;
reg b_in;
wire sum;
wire carry;

half_adder DUT(.a_in(a_in),
               .b_in(b_in),
               .sum(sum),
               .carry(carry));

always #10 a_in= $urandom();
always #20 b_in= $urandom();

initial
begin
$monitor("time=%0t, a_in=%0b, b_in=%0b, sum=%0b, carry=%0b", $time, a_in, b_in, sum, carry);
a_in= 'b0;
b_in= 'b0;
#1000 $finish();
end               
endmodule