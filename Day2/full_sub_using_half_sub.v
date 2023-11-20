`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 09:23:42 AM
// Design Name: 
// Module Name: full_sub_using_half_sub
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
module full_sub_using_half_sub(
                                  input a_in,
                                  input b_in,
                                  input borrow_in,
                                  output difference,
                                  output borrow_out);

  wire diff1, borrow1;

  half_sub(
    .a_in(a_in),
    .b_in(b_in),
    .d_out(diff1),
    .borrow(borrow1)
  );

  half_sub(
    .a_in(borrow1),
    .b_in(borrow_in),
    .d_out(difference),
    .borrow(borrow_out)
  );
endmodule