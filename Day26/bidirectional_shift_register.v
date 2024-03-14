module bidirectional_shift_register(
                                input      clk, rst, s,
                                input      [3:0] d_in,
                                output reg [3:0] y_out);
                                
always@(posedge clk, negedge rst)
begin
    if(!rst)
    y_out <= 'b0;
    else begin
      case(s)
    1'b0: y_out <= {1'b0, d_in[3:1]}; //right
    1'b1: y_out <= {d_in[2:0], 1'b0}; //left
    default: y_out <= y_out;
    endcase
    end
end
endmodule
