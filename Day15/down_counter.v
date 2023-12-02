`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 10:43:39 PM
// Design Name: 
// Module Name: down_counter
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


module down_counter(
                    input clk,
                    input reset_n,
                    output reg [3:0] count);
always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
    count<='b0;
    else
    count<= count-'b1;
end                     
endmodule