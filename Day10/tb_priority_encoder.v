`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2023 12:19:10 AM
// Design Name: 
// Module Name: tb_priority_encoder
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
module tb_priority_encoder();
reg en;
reg [3:0]d_in;
wire [1:0] y_out;

priority_encoder DUT(.en(en),
                     .d_in(d_in),
                     .y_out(y_out));
always #200 en =en+1;
always #10 d_in =$urandom();
initial
begin
 en ='b0;
 d_in ='b0;

#1000 $finish();
end
endmodule