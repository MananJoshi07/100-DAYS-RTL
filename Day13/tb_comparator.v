`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 04:00:20 PM
// Design Name: 
// Module Name: tb_comparator
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
module tb_comparator();
reg [`DATA_WIDTH-1:0] a_in;
reg [`DATA_WIDTH-1:0] b_in;
wire  a_in_gt_b_in;
wire  a_in_eq_b_in;
wire  a_in_ls_b_in;

comparator DUT(                         
               .a_in(a_in),
               .b_in(b_in),
               .a_in_gt_b_in(a_in_gt_b_in),
               .a_in_eq_b_in(a_in_eq_b_in),
               .a_in_ls_b_in(a_in_ls_b_in));
         
always #10 a_in =a_in +1'b1;
always #40 b_in =b_in +1'b1;                
initial
begin    
a_in='b0;
b_in='b0;
#500 $finish;
end  
endmodule