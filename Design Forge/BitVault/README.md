# BitVault

## Aim

To design a 4×8 register file with one write port and one read port.

## Description

- 4 memory locations
- Each location stores 8-bit data
- 2-bit address selects memory location
- Data is written when write enable is HIGH
- Data can be read from the selected address

## Inputs

- clk
- we
- addr[1:0]
- data_in[7:0]

## Output

- data_out[7:0]

## Test Cases

- Write to multiple addresses
- Read stored values
- Verify write enable operation
- Check overwrite protection when write enable is LOW

## Result

The BitVault register file was designed and verified successfully.