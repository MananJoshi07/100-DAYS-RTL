`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 11:24:33 AM
// Design Name: 
// Module Name: mod_8_counter
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


module mod_8_counter#(parameter WIDTH = 8)(
                                            input clk,
                                            input reset,
                                            output reg [WIDTH-1:0] count);

always @(posedge clk)
begin
    if (reset) begin
        count <= 0;
    end else begin
        count <= count + 1'b1;
        if (count == 'b111) 
        begin
            count <= 0;
        end
    end
end
endmodule
