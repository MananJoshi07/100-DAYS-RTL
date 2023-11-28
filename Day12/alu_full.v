`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2023 06:18:30
// Design Name: 
// Module Name: alu_full
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
`define DATA_WIDTH 8
`define OPCODE_SIZE 3
`define OUT_DATA_WIDTH 16
`define ADD 3'b000
`define SUB 3'b001
`define MUL 3'b010
`define DIV 3'b011
`define OR 3'b100
`define XOR 3'b101
`define AND 3'b110
`define TRANSFER 2'b00
`define RS 2'b01
`define LS 2'b10
`define NOT 2'b11

module alu_full(
                input [`DATA_WIDTH-1:0] a_in,
                input [`DATA_WIDTH-1:0] b_in,
                input [`OPCODE_SIZE-1:0] op_code,
                output reg [`DATA_WIDTH-1:0] y_out);
always@*
begin
    case(op_code)
    `ADD: y_out= a_in + b_in;
    `SUB: y_out= a_in - b_in;
    `MUL: y_out= a_in * b_in;
    `DIV: y_out= a_in / b_in;
    `OR: y_out= a_in | b_in;
    `XOR: y_out= a_in ^ b_in;
    `AND: y_out= a_in & b_in;
    `TRANSFER: y_out= a_in;
    `RS: y_out= a_in>>1;
    `LS: y_out= a_in<<1;
    `NOT: y_out= ~a_in;
    default: y_out='b0;
    endcase
end                    
endmodule