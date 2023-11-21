`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 12:26:06 PM
// Design Name: 
// Module Name: demux_2to1
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


module demux_2to1(
                    input sel,
                    input i,
                    output reg y0,y1);
    
  always @(*) begin
    case(sel)
      'h0: {y0,y1} = {i,1'b0};
      'h1: {y0,y1} = {1'b0,i,1'b0};
      default: $display("Invalid sel input");
    endcase
  end
endmodule