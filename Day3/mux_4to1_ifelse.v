`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 09:55:22 AM
// Design Name: 
// Module Name: mux_4to1_ifelse
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


module mux_4to1_ifelse(
                        input[3:0] d_in,
                        input[1:0] sel_in,
                        output reg y_out);

always@(*)
begin
    if(sel_in==2'b00)
        y_out=d_in[0];
    else if(sel_in==2'b01)
        y_out=d_in[1];
       
    else if(sel_in==2'b10)
        y_out=d_in[2];
        
    else
        y_out=d_in[3];
end
endmodule
