`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 10:09:56 PM
// Design Name: 
// Module Name: siso
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


module siso(input clk,s_in,rst,
            output reg s_out); 
reg [3:0] tmp;
always @(posedge clk )
begin
    if (rst)
    tmp <=4'b0000;
    else
    tmp <= tmp << 1;
    tmp[0] <= s_in;
    s_out = tmp[3];
end
endmodule