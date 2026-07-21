`timescale 1ns/1ps

module BitVault_tb;

reg clk;
reg we;
reg [1:0] addr;
reg [7:0] data_in;
wire [7:0] data_out;

BitVault uut(
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    we = 0;
    addr = 0;
    data_in = 0;

    // Write to Address 0
    #10;
    we = 1;
    addr = 2'b00;
    data_in = 8'hAA;

    // Write to Address 1
    #10;
    addr = 2'b01;
    data_in = 8'h55;

    // Write to Address 2
    #10;
    addr = 2'b10;
    data_in = 8'hF0;

    // Disable Write
    #10;
    we = 0;

    // Read Address 0
    addr = 2'b00;
    #10;

    // Read Address 1
    addr = 2'b01;
    #10;

    // Read Address 2
    addr = 2'b10;
    #10;

    // Verify no overwrite when WE = 0
    addr = 2'b00;
    data_in = 8'hFF;
    #10;

    $finish;
end

endmodule