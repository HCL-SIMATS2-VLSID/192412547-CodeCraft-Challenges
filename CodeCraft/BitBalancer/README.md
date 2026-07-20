# BitBalancer

## Challenge
Count the number of logic 1s present in an 8-bit input.

## Objective
Design a Verilog module that counts the number of HIGH bits in an 8-bit input and outputs the total count.

## Inputs

- data_in : 8-bit input value

## Output

- count : Number of HIGH bits (0 to 8)

## Working

The module initializes the output count to zero whenever the input changes. It then checks each bit of the 8-bit input using a loop. Every time a bit is HIGH (1), the count is incremented. The output always represents the total number of HIGH bits in the current input.

## Files

- BitBalancer.v

## Language

Verilog HDL