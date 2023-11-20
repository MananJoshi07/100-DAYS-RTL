`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 09:49:24 AM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
                input [3:0] d_in,
                input [1:0] sel_in,
                output reg out);
always@*
begin
     case(sel_in)
     2'b00: out= d_in[0];
     2'b01: out= d_in[1];
     2'b10: out= d_in[2];
     2'b11: out= d_in[3];
     default: out= d_in[0];
     endcase
end                    
endmodule
