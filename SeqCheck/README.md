# SeqCheck

## Challenge

Detect three rising edges on an input signal within a 5-clock-cycle window.

## Objective

Design a Verilog module that counts rising edges occurring within five clock cycles. If three rising edges are detected during the window, a flag is asserted for one clock cycle.

## Inputs

- clk : Clock signal
- rst : Active-high reset
- signal_in : Input signal

## Output

- flag : One-clock-cycle detection flag

## Working

The module monitors the input signal for rising edges. A five-clock-cycle window is maintained. If three rising edges occur before the window expires, the output flag becomes HIGH for one clock cycle, after which the counters reset for the next detection window.

## Files

- SeqCheck.v

## Language

Verilog HDL