module ModeMux(
    input [7:0] A,
    input [7:0] B,
    input mode,
    output reg [7:0] Y
);

always @(*)
begin
    if (mode)
        Y = B;
    else
        Y = A;
end

endmodule