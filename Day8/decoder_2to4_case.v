`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 11:19:29 PM
// Design Name: 
// Module Name: decoder_2to4_case
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


module decoder_2to4_case(
                        input wire [1:0] en,
                        output wire [3:0] out);

// Define internal signals
reg [3:0] temp;


always @(*) begin
    case (en)
        2'b00: temp = 4'b0000; 
        2'b01: temp = 4'b0001;
        2'b10: temp = 4'b0010;
        2'b11: temp = 4'b0100;
        default: temp = 4'b0000; 
    endcase
end
assign out = temp;

endmodule