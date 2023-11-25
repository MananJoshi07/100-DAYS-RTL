`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 11:29:12 AM
// Design Name: 
// Module Name: tb_carry_select_adder
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
module tb_carry_select_adder();
reg [3:0] x;
reg [3:0] y;
reg carry;
wire cout;
wire [3:0] s;

carry_select_adder DUT(.x(x),
                       .y(y),
                       .carry(carry),
                       .cout(cout),
                       .s(s));
always #10 x=$urandom();
always #20 y=$urandom();
always #30 carry=$urandom;
initial
begin
$monitor("time=%0t, x=%0b, y=%0b, carry=%0b, cout=%0b, s=%0b",
$time, x, y, carry, cout, s); 
x='b0;
y='b0;
carry='b0;
end                      
endmodule