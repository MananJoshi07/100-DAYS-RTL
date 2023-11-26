`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 12:16:23 AM
// Design Name: 
// Module Name: priority_encoder_8to3
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
module priority_encoder_8to3(
                            input en,
                            input [7:0] d_in,
                            output reg [3:0] y_out);
always@*
    if(en=='b0)
    y_out='b0;
    else
        begin
        casex(d_in)
        8'b00000001:y_out=3'b000;
        8'b0000001x:y_out=3'b001;
        8'b000001xx:y_out=3'b010;
        8'b00001xxx:y_out=3'b011;
        8'b0001xxxx:y_out=3'b100;
        8'b001xxxxx:y_out=3'b101;
        8'b01xxxxxx:y_out=3'b110;
        8'b1xxxxxxx:y_out=3'b111;
        default: y_out=3'bxxx;
        endcase
        end
endmodule