# PulseTracer

## Challenge
Detect a single-cycle high pulse from a noisy input signal.

## Objective
Design a Verilog module that detects a rising edge of the input signal and generates a one-clock-cycle output pulse.

## Inputs
- clk : Clock signal
- rst : Active-high reset
- signal_in : Input signal

## Output
- pulse_out : One clock cycle pulse when a rising edge is detected.

## Working
The module stores the previous value of the input signal. During every positive clock edge, it compares the current input with the previous input. If the current input is HIGH and the previous input was LOW, the module generates a pulse for one clock cycle.

## Files
- PulseTracer.v

## Language
Verilog HDL