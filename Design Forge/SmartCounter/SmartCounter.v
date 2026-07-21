module SmartCounter(
    input clk,
    input reset,
    input load,
    input enable,
    input [7:0] data_in,
    output reg [7:0] count
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        count <= 8'd0;
    else if (load)
        count <= data_in;
    else if (enable)
        count <= count + 1;
end

endmodule