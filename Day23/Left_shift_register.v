`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2023 07:40:04 PM
// Design Name: 
// Module Name: right_shift_register
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


module left_shift_register#(parameter WIDTH = 4)(
  input clk,
  input rst_n,
  input enable,
  input [WIDTH-1:0] din,
  output reg [WIDTH-1:0] dout
);

  always @(posedge clk or posedge rst_n) begin
    if (rst_n == 0) begin
      dout <= 0;
    end else begin
      if (enable) begin
        dout <= {dout[WIDTH-2:0], din[WIDTH-1]}; // Circular shift left by 1 bit
      end else begin
        dout <= 0;
      end
    end
  end

endmodule
