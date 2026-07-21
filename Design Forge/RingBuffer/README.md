# RingBuffer

## Aim

To design a 4-entry FIFO ring buffer for temporary data storage.

## Description

- Stores 8-bit data.
- Separate write and read operations.
- Uses circular read and write pointers.
- Generates full and empty status flags.

## Inputs

- clk
- reset
- write_en
- read_en
- data_in[7:0]

## Outputs

- data_out[7:0]
- full
- empty

## Test Cases

- Reset operation
- Write multiple data values
- Read stored data
- Verify full and empty flags

## Result

The RingBuffer successfully stores and retrieves data using FIFO operation while indicating full and empty conditions.