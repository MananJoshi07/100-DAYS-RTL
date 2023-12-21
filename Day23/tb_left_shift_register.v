`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2023 08:48:15 PM
// Design Name: 
// Module Name: tb_left_shift_register
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


module tb_left_shift_register#(parameter WIDTH = 4)();
reg clk;
reg rst_n;
reg enable;
reg [WIDTH-1:0] din;
wire [WIDTH-1:0] dout;

left_shift_register DUT (.clk(clk),
                         .rst_n(rst_n),
                         .enable(enable),
                         .din(din),
                         .dout(dout));
always #10 clk=~clk;
always #20 din =$urandom();
always #20 enable= 'b1;
always #100 rst_n=$urandom();

initial
begin
clk='b0;
din='b0;
enable='b0;
rst_n='b0; 
end                   
endmodule
