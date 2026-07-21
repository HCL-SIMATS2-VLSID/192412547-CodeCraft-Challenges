# ByteStreamer

## Aim

To design an 8-bit serial-to-parallel converter with shift enable.

## Description

- Accepts one serial bit on each clock.
- Data shifts into an internal register.
- After receiving 8 bits, the complete byte is available on the output.
- A byte_ready signal indicates that the byte is complete.

## Inputs

- clk
- reset
- shift_enable
- serial_in

## Outputs

- parallel_out[7:0]
- byte_ready

## Test Cases

- Reset operation
- Serial data shifting
- Byte formation after 8 clock cycles
- Byte ready indication

## Result

The ByteStreamer was successfully designed and verified using the testbench.