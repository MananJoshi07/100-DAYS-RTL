`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 09:37:32 AM
// Design Name: 
// Module Name: tb_full_sub
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


module tb_full_sub();
reg a_in;
reg b_in;
reg br_in;
wire d_out;
wire borrow;

full_sub DUT(.a_in(a_in),
             .b_in(b_in),
             .br_in(br_in),
             .d_out(d_out),
             .borrow(borrow));

always #10 a_in=$urandom();
always #20 b_in=$urandom();
always #30 br_in=$urandom(); 

initial
begin
$monitor("time=%0t, a_in=%0b, b_in=%0b, br_in=%0b, d_out=%0b, borrow=%0b",
$time, a_in, b_in, br_in, d_out, borrow);
a_in='b0;
b_in='b0;
br_in='b0;
end            
endmodule