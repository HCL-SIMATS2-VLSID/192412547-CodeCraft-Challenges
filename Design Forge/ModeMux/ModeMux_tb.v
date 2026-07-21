`timescale 1ns/1ps

module ModeMux_tb;

reg [7:0] A;
reg [7:0] B;
reg mode;

wire [7:0] Y;

ModeMux uut(
    .A(A),
    .B(B),
    .mode(mode),
    .Y(Y)
);

initial
begin
    A = 8'h55;
    B = 8'hAA;
    mode = 0;

    #10;

    mode = 1;

    #10;

    A = 8'h0F;
    B = 8'hF0;

    #10;

    mode = 0;

    #10;

    mode = 1;

    #10;

    $finish;
end

endmodule