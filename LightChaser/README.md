# LightChaser

## Challenge

Create a rotating LED pattern that moves one bit to the left every few clock cycles.

## Objective

Design a Verilog module that generates a running LED pattern. The LEDs rotate left whenever the enable signal is HIGH. The pattern resets to the first LED when reset is asserted.

## Inputs

- clk : Clock signal
- rst : Active-high reset
- enable : Enable signal

## Output

- leds : 8-bit LED output

## Working

The LED pattern starts with the least significant LED ON. On every rising clock edge, if enable is HIGH, the pattern rotates left by one position. When reset is asserted, the pattern returns to its initial position.

## Files

- LightChaser.v

## Language

Verilog HDL