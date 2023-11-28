`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 06:03:36
// Design Name: 
// Module Name: tb_alu
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
module tb_alu #(parameter data_width=4)();
reg [data_width-1:0] a_in;
reg [1:0] op_code;
wire [data_width-1:0] y_out;

alu DUT(.a_in(a_in),
        .op_code(op_code),
        .y_out(y_out));
always #10 a_in=$urandom();
always #20 op_code=$urandom();
initial
begin
$monitor("time=%0t, a_in=%0b, op_code=%0b, y_out=%0b", $time, a_in, op_code, y_out);
a_in='b0;
op_code='b0;
end        
endmodule
