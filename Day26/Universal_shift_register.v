module universal_shift_register(
                                input      clk, rst,
                                input      [1:0] s,
                                input      [3:0] d_in,
                                output reg [3:0] y_out);
                                
always@(posedge clk, negedge rst)
begin
    if(!rst)
    y_out <= 'b0;
    else begin
    case(s)
    2'b00: y_out <= y_out;
    2'b01: y_out <= {1'b0, d_in[3:1]}; //right
    2'b10: y_out <= {d_in[2:0], 1'b0}; //left
    2'b11: y_out <= d_in;
    default: y_out <= y_out;
    endcase
    end
end
endmodule
