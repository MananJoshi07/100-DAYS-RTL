`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 03:50:18 PM
// Design Name: 
// Module Name: tristate_case
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
module tristate_case(
                        input [`DATA_WIDTH-1:0] data_in,
                        input enable,
                        output reg [`DATA_WIDTH-1:0]y_out);

always@*
begin
    case (enable)
    'b1: y_out=data_in;
    'b0:y_out='bZ;
    default: y_out='b0;
    endcase
end
endmodule