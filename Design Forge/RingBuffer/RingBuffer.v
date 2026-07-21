module RingBuffer(
    input clk,
    input reset,
    input write_en,
    input read_en,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg full,
    output reg empty
);

reg [7:0] mem [3:0];
reg [1:0] wr_ptr, rd_ptr;
reg [2:0] count;

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        wr_ptr <= 2'd0;
        rd_ptr <= 2'd0;
        count <= 3'd0;
        full <= 1'b0;
        empty <= 1'b1;
    end
    else
    begin
        // Write Operation
        if (write_en && !full)
        begin
            mem[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
            count <= count + 1;
        end

        // Read Operation
        if (read_en && !empty)
        begin
            data_out <= mem[rd_ptr];
            rd_ptr <= rd_ptr + 1;
            count <= count - 1;
        end

        full <= (count == 4);
        empty <= (count == 0);
    end
end

endmodule