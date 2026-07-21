`timescale 1ns/1ps

module StopTimer_tb;

reg clk;
reg reset;
reg start;
reg stop;

wire [7:0] time_count;
wire running;

StopTimer uut(
    .clk(clk),
    .reset(reset),
    .start(start),
    .stop(stop),
    .time_count(time_count),
    .running(running)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    start = 0;
    stop = 0;

    #10;
    reset = 0;

    // Start Timer
    start = 1;
    #10;
    start = 0;

    // Count for some time
    #50;

    // Stop Timer
    stop = 1;
    #10;
    stop = 0;

    // Wait
    #20;

    // Start Again
    start = 1;
    #10;
    start = 0;

    #30;

    $finish;
end

endmodule