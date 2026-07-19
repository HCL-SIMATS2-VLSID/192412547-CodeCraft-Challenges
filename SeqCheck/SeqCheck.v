module SeqCheck(
    input clk,
    input rst,
    input signal_in,
    output reg flag
);

reg prev_signal;
reg [2:0] edge_count;
reg [2:0] window_count;

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        prev_signal  <= 0;
        edge_count   <= 0;
        window_count <= 0;
        flag         <= 0;
    end
    else begin
        flag <= 0;

        if (window_count == 5) begin
            window_count <= 0;
            edge_count <= 0;
        end
        else
            window_count <= window_count + 1;

        if (~prev_signal && signal_in)
            edge_count <= edge_count + 1;

        if (edge_count == 3) begin
            flag <= 1;
            edge_count <= 0;
            window_count <= 0;
        end

        prev_signal <= signal_in;
    end
end

endmodule