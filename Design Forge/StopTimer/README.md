# StopTimer

## Aim

To design a stopwatch timer with start and stop control.

## Description

- Starts counting when the start signal is HIGH.
- Stops counting when the stop signal is HIGH.
- Supports asynchronous reset.
- Indicates whether the timer is running.

## Inputs

- clk
- reset
- start
- stop

## Outputs

- time_count[7:0]
- running

## Test Cases

- Reset operation
- Start timer
- Stop timer
- Restart timer

## Result

The StopTimer successfully starts, stops, and resumes counting as expected.