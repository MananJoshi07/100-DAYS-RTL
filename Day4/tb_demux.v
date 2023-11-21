`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 11:33:18 PM
// Design Name: 
// Module Name: tb_demux
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
module tb_demux();
reg [1:0] sel;
reg i;
wire y0;
wire y1;
wire y2;
wire y3;

demux DUT(.sel(sel),
          .i(i),
          .y0(y0),
          .y1(y1),
          .y2(y2),
          .y3(y3));
          
always #10 i=$urandom();
always #20 sel=$urandom(); 

initial
begin
$monitor("time=%0t, sel=%0b, i=%0b, y0=%0b, y1=%0b, y2=%0b, y3=%0b",
$time, sel, i, y0, y1, y2, y3);
i='b0;
sel='b0;
end          
endmodule