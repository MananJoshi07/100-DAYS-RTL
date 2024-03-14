module tb_usr();
 
reg clk;
reg rst;
reg [1:0]s;
reg [3:0]d_in;
wire [3:0]y_out; 
    
 universal_shift_register DUT(.clk(clk),.rst(rst),.s(s),.d_in(d_in),.y_out(y_out));

always #200 rst= 'b1;
always #10 clk =~clk;
always #100 s = s+'b1;
always #50 d_in =$urandom;
initial
begin
$monitor("time=%0t ,clk=%0b, rst=%0b,  s=%0h, d_in=%0b ,y_out=%0b", 
$time, clk,rst,s,d_in,y_out);
clk='b0;
s='b0;
d_in='b0;
#10 rst='b0;

#1000 $finish();
end  
endmodule
