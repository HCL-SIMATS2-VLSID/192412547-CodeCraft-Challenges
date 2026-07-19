# EvenOddFSM

## Challenge

Implement a finite state machine that determines whether the current input number is even or odd.

## Objective

Design a Verilog FSM that checks the least significant bit (LSB) of an 8-bit input number and indicates whether it is even or odd while maintaining its state until the next input.

## Inputs

- clk : Clock signal
- rst : Active-high reset
- number : 8-bit input number

## Outputs

- even : HIGH when the number is even
- odd : HIGH when the number is odd

## Working

The FSM checks the least significant bit of the input number on every rising clock edge. If the LSB is 0, the number is even; otherwise, it is odd. The output remains stored until the next clock edge or reset.

## Files

- EvenOddFSM.v

## Language

Verilog HDL