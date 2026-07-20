module BitBalancer(
    input  [7:0] data_in,
    output reg [3:0] count
);

integer i;

always @(*) begin
    count = 4'd0;

    for(i = 0; i < 8; i = i + 1)
    begin
        count = count + data_in[i];
    end
end

endmodule