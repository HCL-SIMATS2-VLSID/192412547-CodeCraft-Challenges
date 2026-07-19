module EdgeHighlighter(
    input clk,
    input rst,
    input signal_in,
    output reg edge_detect
);

reg previous_signal;

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        previous_signal <= 1'b0;
        edge_detect <= 1'b0;
    end
    else begin
        edge_detect <= signal_in & ~previous_signal;
        previous_signal <= signal_in;
    end
end

endmodule