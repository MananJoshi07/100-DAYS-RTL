`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 11:29:03 PM
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8(
                    input wire [2:0] en,
                    output wire [7:0] out);

reg [7:0] temp;

always @(*) begin
    case (en)
        3'b000: temp = 8'b00000001;
        3'b001: temp = 8'b00000010;
        3'b010: temp = 8'b00000100;
        3'b011: temp = 8'b00001000;
        3'b100: temp = 8'b00010000;
        3'b101: temp = 8'b00100000;
        3'b110: temp = 8'b01000000;
        3'b111: temp = 8'b10000000;
        default: temp = 8'b00000000; 
    endcase
end
assign out = temp;
endmodule