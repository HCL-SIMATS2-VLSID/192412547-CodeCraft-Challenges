`timescale 1ns/1ps

module SmartCounter_tb;

reg clk;
reg reset;
reg load;
reg enable;
reg [7:0] data_in;
wire [7:0] count;

SmartCounter uut (
    .clk(clk),
    .reset(reset),
    .load(load),
    .enable(enable),
    .data_in(data_in),
    .count(count)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    load = 0;
    enable = 0;
    data_in = 8'd0;

    #10;
    reset = 0;

    // Load value
    data_in = 8'd25;
    load = 1;
    #10;
    load = 0;

    // Count
    enable = 1;
    #50;

    enable = 0;

    // Async Reset
    reset = 1;
    #10;
    reset = 0;

    #20;
    $finish;
end

endmodule