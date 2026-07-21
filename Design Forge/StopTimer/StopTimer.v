module StopTimer(
    input clk,
    input reset,
    input start,
    input stop,
    output reg [7:0] time_count,
    output reg running
);

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        time_count <= 8'd0;
        running <= 1'b0;
    end
    else
    begin
        if (start)
            running <= 1'b1;
        else if (stop)
            running <= 1'b0;

        if (running)
            time_count <= time_count + 1;
    end
end

endmodule