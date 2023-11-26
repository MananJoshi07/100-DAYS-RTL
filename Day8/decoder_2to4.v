`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2023 11:06:08 PM
// Design Name: 
// Module Name: decoder_2to4
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
module decoder_2to4(
                    input a_in, b_in,
                    input en,
                    output reg [3:0] y_out);
always@*
begin
    if(en==0)
    begin
        if(a_in==1'b0 & b_in==1'b0)
        y_out=4'b1110;
        else if(a_in==1'b0 & b_in==1'b1)
        y_out=4'b1101;
        else if(a_in==1'b1 & b_in==1'b0)
        y_out=4'b1011;
        else if(a_in==1'b1 & b_in==1'b1)
        y_out=4'b0111;
        else
        y_out=4'b0000;
    end
end                    
endmodule