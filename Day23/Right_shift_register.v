`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/21/2023 08:38:31 PM
// Design Name: 
// Module Name: left_shift_register
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

module right_shift_register#(parameter WIDTH = 4)(
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
        dout <= {din[WIDTH-2:0], dout[WIDTH-1]}; // circular shift right by 1 bit
      end else begin
        dout <= 0;
      end
    end
  end

endmodule
