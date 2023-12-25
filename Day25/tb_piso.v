`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 10:24:38 PM
// Design Name: 
// Module Name: tb_piso
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

`define DATA_WIDTH 4
module tb_piso();
reg clk;
reg load;
reg [`DATA_WIDTH-1:0] p_in;
wire s_out;

piso DUT(.clk(clk),
         .load(load),
         .p_in(p_in),
         .s_out(s_out));

always #10 clk=~clk;
always #20 p_in=$urandom();
always #60 load=~load;

initial
begin
$monitor("time=%0t, clk=%0b, load=%0b, p_in=%0b, s_out=%0b",
$time, clk, load, p_in, s_out);
clk='b0;
load='b0;
p_in='b0;
end         
endmodule