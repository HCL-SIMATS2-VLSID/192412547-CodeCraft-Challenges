module DualClockFIFO(
    input wr_clk,
    input rd_clk,
    input reset,
    input wr_en,
    input rd_en,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg full,
    output reg empty
);

reg [7:0] mem [3:0];
reg [1:0] wr_ptr, rd_ptr;
reg [2:0] count;

// Write Logic
always @(posedge wr_clk or posedge reset)
begin
    if (reset)
    begin
        wr_ptr <= 2'd0;
        count <= 3'd0;
        full <= 1'b0;
        empty <= 1'b1;
    end
    else if (wr_en && !full)
    begin
        mem[wr_ptr] <= data_in;
        wr_ptr <= wr_ptr + 1;
        count <= count + 1;
    end
end

// Read Logic
always @(posedge rd_clk or posedge reset)
begin
    if (reset)
    begin
        rd_ptr <= 2'd0;
        data_out <= 8'd0;
    end
    else if (rd_en && !empty)
    begin
        data_out <= mem[rd_ptr];
        rd_ptr <= rd_ptr + 1;
        count <= count - 1;
    end
end

always @(*)
begin
    full = (count == 4);
    empty = (count == 0);
end

endmodule