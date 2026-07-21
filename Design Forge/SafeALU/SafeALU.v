module SafeALU(
    input [7:0] A,
    input [7:0] B,
    input [2:0] sel,
    output reg [7:0] result,
    output reg overflow
);

always @(*)
begin
    overflow = 1'b0;

    case(sel)
        3'b000: begin
            result = A + B;
            overflow = (result < A);
        end

        3'b001: begin
            result = A - B;
        end

        3'b010: begin
            result = A & B;
        end

        3'b011: begin
            result = A | B;
        end

        3'b100: begin
            result = A ^ B;
        end

        3'b101: begin
            result = ~A;
        end

        3'b110: begin
            result = A << 1;
        end

        3'b111: begin
            result = A >> 1;
        end

        default: begin
            result = 8'd0;
            overflow = 1'b0;
        end
    endcase
end

endmodule