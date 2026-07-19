module DebouncerLite(
    input clk,
    input rst,
    input noisy_in,
    output reg clean_out
);

reg [2:0] counter;

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        counter <= 3'b000;
        clean_out <= 1'b0;
    end
    else begin
        if (noisy_in) begin
            if (counter < 3'd4)
                counter <= counter + 1'b1;
            else
                clean_out <= 1'b1;
        end
        else begin
            counter <= 3'b000;
            clean_out <= 1'b0;
        end
    end
end

endmodule