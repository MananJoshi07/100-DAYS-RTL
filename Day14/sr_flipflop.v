`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 04:32:23 PM
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(
                   input clk,
                   input rst_n,
                   input s,
                   input r,
                   output reg q,
                   output reg q_bar);

 always@(posedge clk or negedge rst_n)
 begin
    if (!rst_n)
    begin
      q <= 0;
      q_bar <= 1;
    end
    else
    begin
      if (s && !r)
      begin
        q <= 1;
        q_bar <= 0;
      end
      else if (!s && r)
      begin
        q <= 0;
        q_bar <= 1;
      end
      else
      begin
        q <= q;
        q_bar <= q_bar;
      end
    end
  end
endmodule