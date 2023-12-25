`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 10:15:54 PM
// Design Name: 
// Module Name: piso
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

`define DATA_WIDTH 4
module piso(input [`DATA_WIDTH-1:0] p_in,
            input clk,load,
            output reg s_out);

reg [`DATA_WIDTH-1:0]temp = 0;
always @(posedge clk)
begin
    if(load)
    temp<=p_in;
    else
    begin
    s_out<=temp[3];
    temp<={temp[2:0],1'b0};
    end
end
endmodule