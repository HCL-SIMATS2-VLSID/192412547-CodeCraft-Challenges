module RotatorUnit(
    input clk,
    input rst,
    input rotate,
    input dir,
    input [7:0] data_in,
    output reg [7:0] data_out
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        data_out <= 8'b00000000;
    else if (rotate) begin
        if (dir)
            data_out <= {data_in[6:0], data_in[7]};   // Left Rotate
        else
            data_out <= {data_in[0], data_in[7:1]};   // Right Rotate
    end
    else
        data_out <= data_out;
end

endmodule