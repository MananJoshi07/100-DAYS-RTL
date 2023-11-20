`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 09:58:32 AM
// Design Name: 
// Module Name: tb_mux_4to1
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
module tb_mux_4to1();
reg [3:0] d_in;
reg [1:0] sel_in;
wire y_out;
mux_4to1 DUT(
                 .d_in(d_in),
                 .sel_in(sel_in),
                 .out(out)
                 );
 always #10 d_in = d_in +1;
 always #50 sel_in = sel_in +1;
 initial
 begin
 d_in='b0;
 sel_in='b0;
 #250 $finish ();
 end
endmodule
