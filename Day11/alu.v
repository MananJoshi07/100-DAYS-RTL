`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 05:56:38
// Design Name: 
// Module Name: alu
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
module alu#(parameter data_width=4)(
           input [data_width-1:0] a_in,
           input [1:0] op_code,
           output reg [data_width-1:0]  y_out);
always@*
begin
    case(op_code)
    2'b00: y_out= a_in;
    2'b01: y_out= a_in>>1;
    2'b10: y_out= a_in<<1;
    2'b00: y_out= ~a_in;
    default: y_out='b0;
    endcase
end               
endmodule