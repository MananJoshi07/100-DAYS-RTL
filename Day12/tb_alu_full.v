`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 06:27:18
// Design Name: 
// Module Name: tb_alu_full
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

module tb_alu_full();
reg [`DATA_WIDTH-1:0] a_in;
reg [`DATA_WIDTH-1:0] b_in;
reg [`OPCODE_SIZE-1:0] op_code;
wire [`DATA_WIDTH-1:0] y_out;

alu_full DUT(.a_in(a_in),
        .b_in(b_in),
        .op_code(op_code),
        .y_out(y_out));
always #10 a_in=$urandom();
always #20 b_in=$urandom();
always #30 op_code=$urandom();
initial
begin
$monitor("time=%0t, a_in=%0b, b_in=%0b, op_code=%0b, y_out=%0b", $time, a_in, b_in, op_code, y_out);
a_in='b0;
b_in='b0;
op_code='b0;
end        
endmodule