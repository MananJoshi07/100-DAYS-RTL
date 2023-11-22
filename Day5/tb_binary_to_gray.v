`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2023 01:16:32 PM
// Design Name: 
// Module Name: tb_binary_to_gray
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
module tb_binary_to_gray();
reg [3:0]binary_in;
wire [3:0]gray_out;

binary_to_gray DUT(.binary_in(binary_in),
                   .gray_out(gray_out));
                   
 always #10 binary_in =binary_in+1;
 initial
 begin
 binary_in ='b0;
 end
endmodule