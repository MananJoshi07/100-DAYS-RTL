`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 04:39:27 PM
// Design Name: 
// Module Name: t_flipflop
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
module t_flipflop(
                  input t,clk,
                  output reg q,q_bar);

always@(posedge clk)
begin
    if(t==0)
    begin
    q= 1'b1;
    q_bar= 1'b0;
    end
    else
    begin
    q= 1'b0;
    q_bar= 1'b1;
    end
end
endmodule