module NibbleSwapper(
    input clk,
    input swap,
    input [7:0] data_in,
    output reg [7:0] data_out
);

always @(posedge clk)
begin
    if (swap)
        data_out <= {data_in[3:0], data_in[7:4]};
    else
        data_out <= data_out;
end

endmodule