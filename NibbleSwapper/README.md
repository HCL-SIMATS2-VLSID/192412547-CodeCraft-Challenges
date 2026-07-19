# NibbleSwapper

## Challenge

Swap the upper 4 bits and lower 4 bits of an 8-bit input when a control signal is asserted.

## Objective

Design a Verilog module that swaps the upper nibble and lower nibble of an 8-bit input when the swap signal is HIGH. The output should remain unchanged when the swap signal is LOW.

## Inputs

- clk : Clock signal
- swap : Control signal
- data_in : 8-bit input data

## Output

- data_out : 8-bit swapped output

## Working

The module checks the swap control signal on every rising edge of the clock. When the signal is HIGH, the upper four bits and lower four bits of the input are exchanged and stored in the output. When the signal is LOW, the previous output value is retained, ensuring output stability.

## Files

- NibbleSwapper.v

## Language

Verilog HDL