# 4-Bit Arithmetic Logic Unit (ALU)

## Overview

This project implements a **4-bit Arithmetic Logic Unit (ALU)** in Verilog.
The ALU performs multiple arithmetic, logical, and shift operations based on a 3-bit selector input.

This was my first Verilog project after learning combinational and sequential fundamentals.

---

## Features

Supported operations:

| Selector | Operation              |     |
| -------- | ---------------------- | --- |
| ADD      | Addition (`A + B`)     |     |
| SUB      | Subtraction (`A - B`)  |     |
| AND_OP   | Bitwise AND (`A & B`)  |     |
| OR_OP    | Bitwise OR (`A         | B`) |
| NOT_OP   | Bitwise NOT (`~A`)     |     |
| XOR_OP   | Bitwise XOR (`A ^ B`)  |     |
| SHL      | Left Shift (`A << 1`)  |     |
| SHR      | Right Shift (`A >> 1`) |     |

---

## Module Details

### Inputs

* `a [3:0]` → First operand
* `b [3:0]` → Second operand
* `sel [2:0]` → Operation selector

### Output

* `y [4:0]` → ALU result

Output is 5-bit to support overflow during arithmetic operations.

---

## Concepts Used

* Combinational logic
* `always @(*)`
* `case` statements
* Parameters for opcode readability
* Arithmetic operators
* Bitwise operators
* Shift operators

---

## Files

* `alu.v` → ALU design module
* `alu_tb.v` → Testbench
* `alu_wave.vcd` → Waveform dump
* `waveform.png` → Simulation waveform screenshot

---

## Learning Outcomes

Through this project, I learned:

* How ALUs work at RTL level
* How Verilog synthesis maps operators into hardware
* How to use parameters for cleaner opcode design
* Width matching and overflow handling
* Writing combinational testbenches

---

## Future Improvements

* Add multiplication and division
* Add compare operations
* Add carry/zero flags
* Add signed arithmetic support

