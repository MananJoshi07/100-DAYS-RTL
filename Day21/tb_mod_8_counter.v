module tb_mod_8_counter#(parameter WIDTH = 16)();
reg clk;
reg reset;
wire [WIDTH-1:0] count;

mod_8_counter DUT (.clk(clk),
                   .reset(reset),
                   .count(count));
always #10 clk=~clk;
always #200 reset= $urandom();

initial
begin
$monitor("time=%0t, clk=%0b, reset=%0b, count=%0b", $time, clk, reset, count);
clk='b0;
reset='b0;
end                   
endmodule
