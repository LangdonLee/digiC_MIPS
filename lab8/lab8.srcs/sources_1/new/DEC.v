// Ö¸ÁîÒëÂëÆ÷Ä£¿é
module DEC(
    input [5:0] op,
    input [5:0] funct,
    output RegDst,
    output AluSrcA,
    output AluSrcB,
    output MemToReg,
    output RegWrite,
    output MemWrite,
    output Beq,
    output Bne,
    output Blez,
    output Bgtz,
    output Jump,
    output Jr,
    output RaDst,
    output PCtoReg,
    output ExtOp0,
    output ExtOp1,
    output Lui,
    output [3:0] aluop
    );
    
    RM_DEC m1(
        .op(op),
        .funct(funct),
        .RegDst(RegDst),
        .AluSrcA(AluSrcA),
        .AluSrcB(AluSrcB),
        .MemToReg(MemToReg),
        .RegWrite(RegWrite),
        .MemWrite(MemWrite),
        .Beq(Beq),
        .Bne(Bne),
        .Blez(Blez),
        .Bgtz(Bgtz),
        .Jump(Jump),
        .Jr(Jr),
        .RaDst(RaDst),
        .PCtoReg(PCtoReg),
        .ExtOp0(ExtOp0),
        .ExtOp1(ExtOp1),
        .Lui(Lui)
    );
    
    ALU_DEC a1(
        .op(op),
        .funct(funct),
        .aluop(aluop)
    );
    
endmodule
