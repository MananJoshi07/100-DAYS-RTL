`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 12:29:58 PM
// Design Name: 
// Module Name: ring_counter
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
//module d_ff (input d_in,
//             input clk,
//             input reset_n,
//             output reg q,
//             output qn);  
//always @ (posedge clk or negedge reset_n)  
//      if (!reset_n)  
//         q <= 0;  
//      else  
//         q <= d_in;  
//   assign qn = ~q;  
//endmodule

module ring_counter(
                    input clk,
                    input reset_n,
                    output reg [3:0] count);

always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
    count<=4'b1000;
    else
    count<={count[2:0], count[3]};
end                    
endmodule