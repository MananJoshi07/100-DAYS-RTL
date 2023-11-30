`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 03:56:50 PM
// Design Name: 
// Module Name: comparator
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
`define DATA_WIDTH 4
module comparator(
                    input [`DATA_WIDTH-1:0] a_in,
                    input [`DATA_WIDTH-1:0] b_in,
                    output  a_in_gt_b_in,
                    output  a_in_eq_b_in,
                    output  a_in_ls_b_in);
                        
assign a_in_eq_b_in=(a_in ==b_in);
assign a_in_gt_b_in=(a_in>b_in);
assign a_in_ls_b_in=(a_in<b_in);
endmodule