# EdgeHighlighter

## Challenge

Highlight every rising edge of an input signal by generating a one-clock-cycle output pulse.

## Objective

Design a Verilog module that detects the rising edge of an input signal and generates a HIGH pulse for one clock cycle whenever a rising edge occurs.

## Inputs

- clk : Clock signal
- rst : Active-high reset
- signal_in : Input signal

## Output

- edge_detect : One-clock-cycle pulse on every rising edge

## Working

The module stores the previous value of the input signal. On every rising edge of the clock, it compares the current and previous values. If the current signal changes from LOW to HIGH, the output becomes HIGH for one clock cycle. Otherwise, the output remains LOW.

## Files

- EdgeHighlighter.v

## Language

Verilog HDL