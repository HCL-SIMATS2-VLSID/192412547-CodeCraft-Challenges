module PriorityLock(
    input [3:0] req,
    output reg [1:0] grant,
    output reg valid
);

always @(*)
begin
    valid = 1'b1;

    casex(req)
        4'b1xxx: grant = 2'b11;
        4'b01xx: grant = 2'b10;
        4'b001x: grant = 2'b01;
        4'b0001: grant = 2'b00;

        default:
        begin
            grant = 2'b00;
            valid = 1'b0;
        end
    endcase
end

endmodule