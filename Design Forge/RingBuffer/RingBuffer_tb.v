`timescale 1ns/1ps

module RingBuffer_tb;

reg clk;
reg reset;
reg write_en;
reg read_en;
reg [7:0] data_in;

wire [7:0] data_out;
wire full;
wire empty;

RingBuffer uut(
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .read_en(read_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    write_en = 0;
    read_en = 0;
    data_in = 0;

    #10;
    reset = 0;

    // Write Data
    write_en = 1;
    data_in = 8'h11; #10;
    data_in = 8'h22; #10;
    data_in = 8'h33; #10;
    data_in = 8'h44; #10;

    write_en = 0;

    // Read Data
    read_en = 1;
    #40;

    read_en = 0;

    $finish;
end

endmodule