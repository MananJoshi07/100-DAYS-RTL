`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 12:13:53 PM
// Design Name: 
// Module Name: demux
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
module demux_1to4_case(
             input [1:0] sel,
             input  i,
  output reg [3:0] y);
    
  always @(*) begin
    case(sel)
      2'h0: y[0] = i;
      2'h1: y[1] = i;
      2'h2: y[2] = i;
      2'h3: y[3] = i;
      default: $display("Invalid sel input");
    endcase
  end
endmodule
