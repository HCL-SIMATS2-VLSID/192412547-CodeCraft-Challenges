`timescale 1ns/1ps

module ByteStreamer_tb;

reg clk;
reg reset;
reg shift_enable;
reg serial_in;

wire [7:0] parallel_out;
wire byte_ready;

ByteStreamer uut(
    .clk(clk),
    .reset(reset),
    .shift_enable(shift_enable),
    .serial_in(serial_in),
    .parallel_out(parallel_out),
    .byte_ready(byte_ready)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    shift_enable = 0;
    serial_in = 0;

    #10;
    reset = 0;
    shift_enable = 1;

    // Send 11001010
    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;

    #20;
    $finish;
end

endmodule