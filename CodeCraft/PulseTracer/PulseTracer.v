module PulseTracer(
    input clk,
    input rst,
    input signal_in,
    output reg pulse_out
);

reg prev_signal;

always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        prev_signal <= 0;
        pulse_out <= 0;
    end
    else
    begin
        pulse_out <= signal_in & ~prev_signal;
        prev_signal <= signal_in;
    end
end

endmodule