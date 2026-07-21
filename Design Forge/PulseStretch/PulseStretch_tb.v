`timescale 1ns/1ps

module PulseStretch_tb;

reg clk;
reg reset;
reg pulse_in;

wire pulse_out;

PulseStretch uut(
    .clk(clk),
    .reset(reset),
    .pulse_in(pulse_in),
    .pulse_out(pulse_out)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    pulse_in = 0;

    #10;
    reset = 0;

    // First Pulse
    pulse_in = 1;
    #10;
    pulse_in = 0;

    #60;

    // Second Pulse
    pulse_in = 1;
    #10;
    pulse_in = 0;

    #60;

    $finish;
end

endmodule