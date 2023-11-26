`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 11:47:22 PM
// Design Name: 
// Module Name: encoder_2to4
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
module encoder_2to4(
                    input en,
                    input [3:0] d_in,
                    output reg [1:0] y_out);
always@*
    if(en=='b0)
    y_out='b0;
    else
        begin
        case(d_in)
        4'b0001:y_out=2'b00;
        4'b0010:y_out=2'b01;
        4'b0100:y_out=2'b10;
        4'b1000:y_out=2'b11;
        default: y_out=2'b00;
     endcase
     end
endmodule