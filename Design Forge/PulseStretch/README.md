# PulseStretch

## Aim

To design a pulse stretcher that extends a short input pulse for multiple clock cycles.

## Description

- Detects a short input pulse.
- Extends the pulse duration to four clock cycles.
- Supports asynchronous reset.

## Inputs

- clk
- reset
- pulse_in

## Outputs

- pulse_out

## Test Cases

- Reset operation
- Single input pulse
- Multiple input pulses
- Pulse stretching verification

## Result

The PulseStretch module successfully extends a short input pulse to a longer output pulse.