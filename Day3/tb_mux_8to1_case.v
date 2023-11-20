`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 11:06:07 PM
// Design Name: 
// Module Name: tb_mux_8to1_case
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


module tb_mux_8to1_case();

reg [7:0] d_in;
reg [2:0] sel_in;
wire y_out;

mux_8to1_case DUT(
                 .d_in(d_in),
                 .sel_in(sel_in),
                 .y_out(y_out));
                 
 always #10 d_in = d_in +1;
 always #50 sel_in = sel_in +1;
 initial
 begin
 d_in='b0;
 sel_in='b0;
 #500 $finish ();
 end
endmodule