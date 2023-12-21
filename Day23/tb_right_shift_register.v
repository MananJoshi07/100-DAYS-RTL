module tb_right_shift_register#(parameter WIDTH = 4)();
reg clk;
reg rst_n;
reg enable;
reg [WIDTH-1:0] din;
wire [WIDTH-1:0] dout;

right_shift_register DUT (.clk(clk),
                         .rst_n(rst_n),
                         .enable(enable),
                         .din(din),
                         .dout(dout));
always #10 clk=~clk;
always #20 din =$urandom();
always #20 enable= 'b1;
always #100 rst_n=$urandom();

initial
begin
clk='b0;
din='b0;
enable='b0;
rst_n='b0; 
end                   
endmodule
