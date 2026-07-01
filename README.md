# 32-bit 5-Stage Pipelined RISC-V Processor

A 32-bit 5-stage pipelined RISC-V (RV32I) Processor designed in Verilog HDL with simulation, synthesis, and verification.

---

# Project Overview

This project aims to design and verify a complete 32-bit pipelined RISC-V processor from scratch.

Development Flow:

- RTL Design using Verilog HDL
- Functional Verification using Icarus Verilog
- Waveform Analysis using GTKWave
- RTL/Synthesis using AMD Vivado
- Version Control using Git & GitHub

---

# Pipeline Stages

- ✅ Instruction Fetch (IF)
- ⏳ Instruction Decode (ID)
- ⏳ Execute (EX)
- ⏳ Memory Access (MEM)
- ⏳ Write Back (WB)

---

# Modules Completed

| Module | Status |
|---------|--------|
| Program Counter (PC) | ✅ Completed |
| Instruction Memory | ✅ Completed |
| Register File | ⏳ Pending |
| Immediate Generator | ⏳ Pending |
| Control Unit | ⏳ Pending |
| ALU | ⏳ Pending |
| Branch Unit | ⏳ Pending |
| Data Memory | ⏳ Pending |
| Pipeline Registers | ⏳ Pending |
| Hazard Detection Unit | ⏳ Pending |
| Forwarding Unit | ⏳ Pending |
| Top Module | ⏳ Pending |

---

# Project Structure

```
riscv-32bit-pipelined-processor
│
├── RTL
│   ├── IF
│   │   ├── pc.v
│   │   └── instruction_memory.v
│   ├── ID
│   ├── EX
│   ├── MEM
│   ├── WB
│   ├── Pipeline
│   ├── Hazard
│   └── Branch
│
├── Testbench
│   ├── pc_tb.v
│   └── instruction_memory_tb.v
│
├── Memory
│   └── program.mem
│
├── Images
│   ├── pc_waveform.png
│   ├── instruction_memory_waveform.png
│   └── instruction_memory_rtl.png
│
├── Reports
│
└── README.md
```

---

# Program Counter Verification

### GTKWave

![Program Counter Waveform](images/pc_waveform.png)

---

# Instruction Memory Verification

### GTKWave

![Instruction Memory Waveform](images/instruction_memory_waveform.png)

---

### RTL Schematic (Vivado)

![Instruction Memory RTL](images/instruction_memory_rtl.png)

---

# Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- AMD Vivado 2025.1
- Git
- GitHub
- Visual Studio Code

---

# Progress

- ✅ Day 1 – Project Setup & GitHub
- ✅ Day 2 – Program Counter (PC)
- ✅ Day 3 – Instruction Memory
- ⏳ Day 4 – Register File
- ⏳ Day 5 – Immediate Generator & Control Unit
- ⏳ Day 6 – ALU & ALU Control
- ⏳ Day 7 – Pipeline Registers
- ⏳ Day 8 – Data Memory
- ⏳ Day 9 – Hazard Detection & Forwarding Unit
- ⏳ Day 10 – Complete 5-Stage Pipelined RISC-V Processor

---

# Author

**Arun Undrajavarapu**

B.Tech Electronics and Communication Engineering

Sardar Vallabhbhai National Institute of Technology (SVNIT), Surat

---

⭐ This repository documents the complete journey of building a 32-bit 5-stage pipelined RISC-V processor from scratch, including RTL design, verification, synthesis, and documentation.