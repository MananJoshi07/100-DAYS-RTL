`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2023 01:12:58 PM
// Design Name: 
// Module Name: gray_to_binary
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
module gray_to_binary(
                      input [3:0] gray_in,
                      output [3:0] binary_out);

assign binary_out[3]=gray_in[3];
assign binary_out[2]=gray_in[3]^gray_in[2];
assign binary_out[1]=binary_out[2]^gray_in[1];
assign binary_out[0]=binary_out[1]^gray_in[0];
    
endmodule