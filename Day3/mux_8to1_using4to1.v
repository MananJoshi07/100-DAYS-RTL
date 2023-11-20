`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 10:58:09 PM
// Design Name: 
// Module Name: mux_8to1_using4to1
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


module mux_8to1_using4to1(input [7:0] d,
                          input [2:0] s,
                          output y);

mux_4to1 m1 (.d_in(d[7:4]), .sel_in(s[2:1]), .out(y1));
mux_4to1 m2 (.d_in(d[3:0]), .sel_in(s[1:0]), .out(y2));
mux_2to1 m3 (.a_in(y1), .b_in(y2), .sel_in(s[0]), .out(y));

endmodule
