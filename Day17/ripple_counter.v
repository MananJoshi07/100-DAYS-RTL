`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 11:08:59 PM
// Design Name: 
// Module Name: ripple_counter
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
module d_ff (input d_in,
             input clk,
             input reset_n,
             output reg q,
             output qn);  
always @ (posedge clk or negedge reset_n)  
      if (!reset_n)  
         q <= 0;  
      else  
         q <= d_in;  
   assign qn = ~q;  
endmodule  

//taking d-ff instance  
module ripple_counter ( input clk,
                        input reset_n,
                        output [3:0] count);  
wire  q0;  
wire  qn0;  
wire  q1;  
wire  qn1;  
wire  q2;  
wire  qn2;  
wire  q3;  
wire  qn3;  
  
d_ff   dff0 ( .d_in (qn0),.clk (clk),.reset_n (reset_n),.q (q0),.qn (qn0));  
d_ff   dff1 ( .d_in (qn1),.clk (q0),.reset_n (reset_n),.q (q1),.qn (qn1));  
d_ff   dff2 ( .d_in (qn2),.clk (q1),.reset_n (reset_n),.q (q2),.qn (qn2));  
d_ff   dff3 ( .d_in (qn3),.clk (q2),.reset_n (reset_n),.q (q3),.qn (qn3));  
assign count = {qn3, qn2, qn1, qn0};  
endmodule 