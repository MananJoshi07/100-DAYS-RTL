`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2023 11:42:23 AM
// Design Name: 
// Module Name: carry_look_ahead
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


module carry_look_ahead(
                        input [3:0] a_in,
                        input [3:0] b_in,
                        input  c_in,
                        output [3:0] sum_out,
                        output carry_out);
wire y1,y2,y3;
    
full_adder f1(a_in[0],b_in[0],c_in,sum_out[0],y1);
full_adder f2(a_in[1],b_in[1],y1,sum_out[1],y2);
full_adder f3(a_in[2],b_in[2],y2,sum_out[2],y3);
full_adder f4(a_in[3],b_in[3],y3,sum_out[3],carry_out);
endmodule