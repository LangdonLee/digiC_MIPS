`define J 6'h2
`define JAL 6'h3
`define BEQ 6'h4
`define BNE 6'h5
`define BLEZ 6'h6
`define BGTZ 6'h7
`define ADDI 6'h8
`define ADDIU 6'h9
`define SLTI 6'ha
`define SLTIU 6'hb
`define ANDI 6'hc
`define ORI 6'hd
`define XORI 6'he
`define LUI 6'hf
`define LW 6'h23
`define SW 6'h2b

// R-type instr funct
`define R_TYPE 6'h0
`define SLL 6'h0
`define SRL 6'h2
`define SRA 6'h3
`define SLLV 6'h4
`define SRLV 6'h6
`define SRAV 6'h7

`define JR 6'h8 // not use alu, so alu_op=4'bx
`define JALR 6'h9 // not use alu, so alu_op=4'bx

`define ADD 6'h20
`define ADDU 6'h21
`define SUB 6'h22
`define SUBU 6'h23
`define AND 6'h24
`define OR 6'h25
`define XOR 6'h26
`define NOR 6'h27
`define SLT 6'h2a
`define SLTU 6'h2b

// ALU的运算类型
`define alu_shl 4'h0 // 逻辑左移
`define alu_shr 4'h1 // 逻辑右移
`define alu_sar 4'h2 // 算术右移
`define alu_add 4'h3 // 加法
`define alu_sub 4'h4 // 减法
`define alu_and 4'h5 // 按位与
`define alu_or 4'h6 // 按位或
`define alu_xor 4'h7 // 按位异或
`define alu_nor 4'h8 // 按位或非
`define alu_slt 4'h9 // 有符号小于则输出1
`define alu_sltu 4'ha // 无符号小于则输出1
`define alu_dis 4'bx // 不使用alu的助记符
