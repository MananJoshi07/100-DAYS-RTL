`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 12:02:08 AM
// Design Name: 
// Module Name: tb_encoder_3to8
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


module tb_encoder_3to8();
reg en;
reg [7:0] d_in;
wire [2:0] y_out;

encoder_2to4 DUT(.en(en),
                      .d_in(d_in),
                      .y_out(y_out));
always #10 en=$urandom();
always #20 d_in=$urandom();
initial
begin
$monitor("time=%0t, en=%0b, d_in=%0b, y_out=%0b", $time, en, d_in, y_out);
en='b0;
d_in='b0;
end                 
endmodule