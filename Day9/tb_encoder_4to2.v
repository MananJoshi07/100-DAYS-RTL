`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 11:57:37 PM
// Design Name: 
// Module Name: tb_encoder_2to4
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


module tb_encoder_4to2();
reg en;
reg [3:0] d_in;
wire [1:0] y_out;

encoder_4to2 DUT(.en(en),
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
