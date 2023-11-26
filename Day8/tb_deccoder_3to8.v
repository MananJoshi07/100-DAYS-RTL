`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 11:35:56 PM
// Design Name: 
// Module Name: tb_deccoder_3to8
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


module tb_deccoder_3to8();
reg [2:0] en;
wire [7:0] out;

decoder_3to8 DUT(.en(en),
                 .out(out));
always #20 en=en+1;
initial
begin
$monitor("time=%0t, en=%0b, out=%0b", $time, en, out);
en='b0;
end                 
endmodule