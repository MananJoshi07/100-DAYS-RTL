`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 04:43:14 PM
// Design Name: 
// Module Name: tb_t_flipflop
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
module tb_t_flipflop();
reg t;
reg clk;
wire q;
wire q_bar;

t_flipflop DUT (
                .t(t), 
                .clk(clk), 
                .q(q), 
                .q_bar(q_bar));

always #10 clk = ~clk;
always #20 t=~t;
initial
begin
$monitor("time=%0t, clk=%0b, t=%0b, q=%0b, q_bar=%0b", $time, clk, t, q, q_bar); 
clk = 'b0;
t='b0;
end
endmodule