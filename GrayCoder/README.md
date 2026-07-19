# GrayCoder

## Challenge

Convert a 4-bit binary input into its Gray code equivalent.

## Objective

Design a Verilog module that converts a 4-bit binary number into Gray code. The output automatically updates whenever the input changes.

## Inputs

- binary : 4-bit binary input

## Output

- gray : 4-bit Gray code output

## Working

The module converts binary to Gray code using XOR operations. The most significant bit remains unchanged, while each remaining Gray bit is obtained by XORing two adjacent binary bits. Since the design is combinational, the output updates immediately whenever the input changes.

## Files

- GrayCoder.v

## Language

Verilog HDL