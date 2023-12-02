`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 11:31:53 PM
// Design Name: 
// Module Name: gray_counter
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


module gray_counter(
                    input clk,
                    input reset_n,
                    output reg [3:0] count);
reg [3:0] q;
always @ (posedge clk, negedge reset_n) 
begin
      if (!reset_n) 
      begin
      q <= 0;
      count <= 0;
      end
      else 
      begin
      q <= q + 1;
      count <= {q[3], q[3:1] ^ q[2:0]};
    end
  end
endmodule