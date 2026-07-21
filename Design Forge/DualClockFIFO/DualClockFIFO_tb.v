`timescale 1ns/1ps

module DualClockFIFO_tb;

reg wr_clk;
reg rd_clk;
reg reset;
reg wr_en;
reg rd_en;
reg [7:0] data_in;

wire [7:0] data_out;
wire full;
wire empty;

DualClockFIFO uut(
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .reset(reset),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

always #5 wr_clk = ~wr_clk;
always #8 rd_clk = ~rd_clk;

initial
begin
    wr_clk = 0;
    rd_clk = 0;
    reset = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 0;

    #10;
    reset = 0;

    // Write Data
    wr_en = 1;
    data_in = 8'h11; #10;
    data_in = 8'h22; #10;
    data_in = 8'h33; #10;
    data_in = 8'h44; #10;
    wr_en = 0;

    // Read Data
    #20;
    rd_en = 1;
    #80;
    rd_en = 0;

    $finish;
end

endmodule