`timescale 1ns/1ps

module PriorityLock_tb;

reg [3:0] req;
wire [1:0] grant;
wire valid;

PriorityLock uut(
    .req(req),
    .grant(grant),
    .valid(valid)
);

initial
begin
    req = 4'b0000; #10;
    req = 4'b0001; #10;
    req = 4'b0010; #10;
    req = 4'b0100; #10;
    req = 4'b1000; #10;
    req = 4'b1010; #10;
    req = 4'b1111; #10;

    $finish;
end

endmodule