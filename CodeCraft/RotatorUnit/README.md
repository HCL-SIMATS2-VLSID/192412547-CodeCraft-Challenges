# RotatorUnit

## Challenge

Rotate an 8-bit input left or right based on a control signal.

## Objective

Design a Verilog module that rotates an 8-bit input either left or right when the rotate signal is HIGH. The output remains unchanged when rotation is disabled.

## Inputs

- clk : Clock signal
- rst : Active-high reset
- rotate : Rotation enable signal
- dir : Rotation direction (1 = Left, 0 = Right)
- data_in : 8-bit input data

## Output

- data_out : Rotated 8-bit output

## Working

The module checks the rotate signal on every rising edge of the clock. If rotation is enabled, the input data is rotated either left or right depending on the direction signal. If rotation is disabled, the previous output value is retained.

## Files

- RotatorUnit.v

## Language

Verilog HDL