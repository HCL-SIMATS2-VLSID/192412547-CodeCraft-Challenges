# SmartCounter

## Aim

To design an 8-bit counter with asynchronous reset, load and enable inputs.

## Description

- 8-bit counter
- Asynchronous reset
- Load input loads external data
- Enable increments counter on every clock
- Counter holds value when enable is LOW

## Inputs

- clk
- reset
- load
- enable
- data_in[7:0]

## Output

- count[7:0]

## Test Cases

- Reset operation
- Load operation
- Counter increment
- Counter hold
- Asynchronous reset verification

## Result

The SmartCounter was designed and verified successfully using the testbench.