`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 11:31:54 PM
// Design Name: 
// Module Name: tb_decoder_2to4
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

module tb_decoder_2to4();
reg [1:0] en;
wire [3:0] out;

decoder_2to4_case DUT(.en(en),
                 .out(out));
always #10 en=$urandom();
initial
begin
$monitor("time=%0t, en=%0b, out=%0b", $time, en, out);
en='b0;
end                 
endmodule
