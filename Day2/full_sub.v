`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 09:17:01 AM
// Design Name: 
// Module Name: full_sub
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


module full_sub(
                input a_in,
                input b_in,
                input br_in,
                output d_out,
                output borrow);
  assign d_out = a_in ^ b_in ^ br_in;
  assign borrow = (~a_in & b_in) | (~(a_in ^ b_in) & br_in);               
endmodule
