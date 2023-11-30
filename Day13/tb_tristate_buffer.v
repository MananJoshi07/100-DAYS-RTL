`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 03:53:40 PM
// Design Name: 
// Module Name: tb_tristate_buffer
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
module tb_tristate_buffer();
reg [`DATA_WIDTH-1:0] data_in;
reg enable;
wire [`DATA_WIDTH-1:0] y_out;

tristate_buffer DUT(
       .data_in(data_in),
       .enable(enable),
       .y_out(y_out));
            
initial
    begin   
    data_in=1'b0;
    enable='b0;
    #300 $finish;
       end
       always #10 enable=!enable;
       always #10 data_in=data_in +1;
endmodule