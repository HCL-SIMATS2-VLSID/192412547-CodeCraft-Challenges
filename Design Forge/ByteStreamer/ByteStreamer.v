module ByteStreamer(
    input clk,
    input reset,
    input shift_enable,
    input serial_in,
    output reg [7:0] parallel_out,
    output reg byte_ready
);

reg [7:0] shift_reg;
reg [2:0] count;

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        shift_reg <= 8'd0;
        parallel_out <= 8'd0;
        count <= 3'd0;
        byte_ready <= 1'b0;
    end
    else if (shift_enable)
    begin
        shift_reg <= {shift_reg[6:0], serial_in};

        if (count == 3'd7)
        begin
            parallel_out <= {shift_reg[6:0], serial_in};
            byte_ready <= 1'b1;
            count <= 3'd0;
        end
        else
        begin
            count <= count + 1;
            byte_ready <= 1'b0;
        end
    end
end

endmodule