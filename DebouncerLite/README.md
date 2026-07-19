# DebouncerLite

## Challenge

Build a simple debouncer that filters a noisy mechanical input.

## Objective

Design a Verilog module that accepts a noisy input signal and generates a clean output only after the input has remained HIGH for several clock cycles.

## Inputs

- clk : Clock signal
- rst : Active-high reset
- noisy_in : Noisy input signal

## Output

- clean_out : Debounced output signal

## Working

The module counts consecutive clock cycles during which the input remains HIGH. When the input stays HIGH long enough, the clean output becomes HIGH. If the input goes LOW before reaching the required count, the counter resets and the output remains LOW.

## Files

- DebouncerLite.v

## Language

Verilog HDL