# DualClockFIFO

## Aim

To design a dual-clock FIFO for safe data transfer between two clock domains.

## Description

- Separate write and read clocks.
- 4-entry FIFO memory.
- Independent write and read operations.
- Full and empty status indicators.

## Inputs

- wr_clk
- rd_clk
- reset
- wr_en
- rd_en
- data_in[7:0]

## Outputs

- data_out[7:0]
- full
- empty

## Test Cases

- Reset operation
- Write data using write clock
- Read data using read clock
- Verify FIFO operation
- Check full and empty flags

## Result

The DualClockFIFO successfully transfers data between separate write and read clock domains.