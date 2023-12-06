`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 11:15:03 AM
// Design Name: 
// Module Name: mod_4_counter
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


module mod_4_counter#(parameter WIDTH = 4)(
                                            input clk,
                                            input reset,
                                            output reg [WIDTH-1:0] count);

always @(posedge clk)
begin
    if (reset) begin
        count <= 0;
    end else begin
        count <= count + 1'b1;
        if (count == WIDTH-1) 
        begin
            count <= 0;
        end
    end
end
endmodule