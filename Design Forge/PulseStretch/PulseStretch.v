module PulseStretch(
    input clk,
    input reset,
    input pulse_in,
    output reg pulse_out
);

reg [2:0] counter;

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        counter <= 3'd0;
        pulse_out <= 1'b0;
    end
    else
    begin
        if (pulse_in)
        begin
            counter <= 3'd4;      // Stretch pulse for 4 clock cycles
            pulse_out <= 1'b1;
        end
        else if (counter > 0)
        begin
            counter <= counter - 1;
            pulse_out <= 1'b1;
        end
        else
        begin
            pulse_out <= 1'b0;
        end
    end
end

endmodule