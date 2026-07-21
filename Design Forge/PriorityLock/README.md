# PriorityLock

## Aim

To design a 4-input priority encoder that grants access to the highest-priority request.

## Description

- Four request inputs.
- Highest-priority request is selected.
- Outputs a 2-bit grant code.
- Generates a valid signal when any request is active.

## Inputs

- req[3:0]

## Outputs

- grant[1:0]
- valid

## Test Cases

- No request
- Single request
- Multiple requests
- Highest-priority request selection

## Result

The PriorityLock module correctly selects the highest-priority request and generates the appropriate grant output.