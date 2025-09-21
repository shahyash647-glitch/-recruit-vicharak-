
# CPU 19 bit architecture

Most CPUs use standard word sizes like 8, 16, 32, or 64 bits. In this project, I designed a 19-bit CPU using Verilog HDL—a unique, non-standard architecture that gives insight into how processors work at a fundamental level.

This project explores how instructions are fetched, decoded, executed, and stored in memory. By choosing 19 bits, it challenges conventional design practices and provides a hands-on learning experience with datapath design, control logic, and instruction handling.

It’s intended primarily for educational purposes, helping anyone interested in CPU design, digital logic, or Verilog HDL to understand how a processor operates internally.


## Features
19-bit instruction and data path – unique and educational

Custom Instruction Set Architecture (ISA) for arithmetic, logic, and memory operations

Core CPU modules:

Program Counter (PC): Tracks instruction addresses

Instruction Memory: Stores program instructions

Control Unit: Decodes instructions and generates control signals

Register File: Stores temporary values for computations

ALU (Arithmetic Logic Unit): Performs all arithmetic and logical operations

Data Memory: Handles load/store instructions

Implemented entirely in Verilog HDL

Simulation and waveform verified to demonstrate correct functionality

##CPU Block Diagram

Purpose: Shows the high-level CPU components and how they connect.

Level of detail: Simple, abstract.

##Example components:

Program Counter (PC)

Instruction Memory

Control Unit

Register File

ALU

Data Memory

When to use: To give readers a quick overview of your CPU structure.
![block diagram](https://github.com/user-attachments/assets/cab2bf33-02c2-4482-94f7-b1c52fc5241d)

## Datapath Diagram

![datapathdiagram](https://github.com/user-attachments/assets/5a581c91-6558-4bf5-9d18-1cd8a2eeeef5)

Purpose: Shows the detailed flow of data between components during instruction execution.

Level of detail: More technical; often shows buses, multiplexers, registers, ALU inputs/outputs.

When to use: To explain how instructions are executed step by step.

## Set Architecture (ISA)
 // Format: opcode(5) | rd(4) | rs1(4) | rs2(4) | extra(2)

 // ADD r1 = r2 + r3
        mem[0] = 19'b00000_0001_0010_0011_00;
        
## Simulation Instructions
Open the project in EDA Playground

Ensure your testbench includes:

$dumpfile("dump.vcd");

$dumpvars(0, cpu_tb);

Run the simulation.

Open the waveform viewer to watch your CPU execute instructions.
## Results
ALU operations (ADD, SUB, AND).

Program Counter increments correctly and handles jumps.

Waveforms confirm sequential execution of instructions.
## Future Improvements
Expand the ISA with more instructions
Implement interrupts and I/O handling
Scale to 32-bit or 64-bit architectures
## Conclusion
This project demonstrates how a custom 19-bit CPU can be designed and simulated using Verilog HDL. It provides insight into CPU architecture, instruction execution, and digital design principles.

Even though it’s non-standard, the 19-bit CPU is a great learning tool, showing how components like the program counter ,ALU, registersfile,Data memory, instrction memory, and decodercontrol  work together to execute instruction.
