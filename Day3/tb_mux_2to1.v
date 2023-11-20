`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2023 10:00:00 AM
// Design Name: 
// Module Name: tb_mux_2to1
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


module tb_mux_2to1();
reg a_in;
reg b_in;
reg sel_in;
wire out;
mux_2to1 DUT(
                 .a_in(a_in),
                 .b_in(b_in),
                 .sel_in(sel_in),
                 .out(out)
                 );
 always #10 a_in = a_in +1;
  always #20 b_in = b_in +1;
 always #50 sel_in = sel_in +1;
 initial
 begin
 a_in='b0;
 b_in='b0;
 sel_in='b0;
 #250 $finish ();
 end
endmodule
