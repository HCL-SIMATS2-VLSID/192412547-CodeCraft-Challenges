# ModeMux

## Aim

To design a 2-to-1 multiplexer that selects one of two 8-bit inputs based on a mode signal.

## Description

- Selects between two 8-bit inputs.
- Mode = 0 selects input A.
- Mode = 1 selects input B.
- Output changes immediately when inputs or mode change.

## Inputs

- A[7:0]
- B[7:0]
- mode

## Output

- Y[7:0]

## Test Cases

- Select input A
- Select input B
- Change input values
- Verify output switching

## Result

The ModeMux successfully selects one of the two 8-bit inputs based on the mode signal.