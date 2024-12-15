Hello! This is a Verilog program based on a single-cycle 32-bit MIPS processor in the Digital Circuits course.

It should support 34 MIPS instructions include:
SLL, SRL, SRA, SLLV, SRLV, SRAV, JR, JALR, ADD, ADDU, SUB, SUBU, AND, OR, XOR, NOR, SLT, SLTU, BEQ, BNE, BLEZ, BGTZ, ADDI, ADDIU, SLTI, SLTIU, ANDI, ORI, XORI, LUI, LW, SW, J, JAL.

Please use MARS to translate your instructions into machine code. If J and JAL instructions are involved, please manually modify the jump address. This code assumes that the address starts from 0. In the IM module, modify the address to the instruction data file you exported using MARS (it is recommended to use a .bat file).

My environment: vivado2021.1 with ModelSim simulation.
