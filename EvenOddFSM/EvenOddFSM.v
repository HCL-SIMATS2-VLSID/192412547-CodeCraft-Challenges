module EvenOddFSM(
    input clk,
    input rst,
    input [7:0] number,
    output reg even,
    output reg odd
);

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        even <= 1'b0;
        odd  <= 1'b0;
    end
    else begin
        if (number[0] == 1'b0) begin
            even <= 1'b1;
            odd  <= 1'b0;
        end
        else begin
            even <= 1'b0;
            odd  <= 1'b1;
        end
    end
end

endmodule