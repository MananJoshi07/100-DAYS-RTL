`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 11:39:00 PM
// Design Name: 
// Module Name: tb_demux_1to8
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
module tb_demux_1to8();
reg [2:0] sel;
reg in;
wire [7:0] y;

demux_1to8 DUT(.sel(sel),
          .in(in),
          .y(y));
          
always #10 in=$urandom();
always #20 sel=$urandom(); 

initial
begin
$monitor("time=%0t, sel=%0b, in=%0b, y=%0b",
$time, sel, in, y);
in='b0;
sel='b0;
end          
endmodule