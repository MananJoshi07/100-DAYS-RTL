`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 11:51:37 PM
// Design Name: 
// Module Name: encoder_3to8
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
module encoder_8to3(
                    input en,
                    input [7:0] d_in,
                    output reg [2:0] y_out);
always@*
    if(en=='b0)
    y_out='b0;
    else
        begin
        case(d_in)
        8'b00000001:y_out=3'b000;
        8'b00000010:y_out=3'b001;
        8'b00000100:y_out=3'b010;
        8'b00001000:y_out=3'b011;
        8'b00010000:y_out=3'b100;
        8'b00100000:y_out=3'b101;
        8'b01000000:y_out=3'b110;
        8'b10000000:y_out=3'b111;
        default: y_out=3'b000;
     endcase
     end
endmodule
