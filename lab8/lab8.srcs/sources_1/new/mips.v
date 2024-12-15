module mips(
    input clk,
    input rst_n
    );
    
    // 内部网络定义
    wire RegDst, AluSrcA, AluSrcB, MemToReg, RegWrite, MemWrite, Beq, Bne, Blez, Bgtz, Jump, Jr, RaDst, PCtoReg, ExtOp0, ExtOp1, Lui;
    wire [3:0] AluOp;
    
    wire Branch, zero, compo;
    wire [4:0] rt_rd, RegWrA;
    wire [31:0] PC, PCplus4, PCBranch, PCsel1, PCsel2, PCJr, PCNext, PCJump;
    wire [31:0] Instr, RegWrD, Result_extimm, ExtImm;
    wire [31:0] SrcA, SrcB, ALUResult, WriteData, ReadData, Result;
    
    // 实例化
    PC pc(
        .clk(clk),
        .rst_n(rst_n),
        .pcnext(PCNext),
        .pc(PC)
    );
    
    IM im(
        .addr_i(PC),
        .instr(Instr)
    );
    
    RF rf(
        .clk(clk),
        .we(RegWrite),
        .a1(Instr[25:21]),
        .a2(Instr[20:16]),
        .a3(RegWrA),
        .wd(RegWrD),
        .r1(PCJr),
        .r2(WriteData)
    );
    
    ALU alu(
        .srca_i(SrcA),
        .srcb_i(SrcB),
        .aluop_i(AluOp),
        .zero(Zero),
        .aluresult(ALUResult)
    );
    
    DEC dec(
        .op(Instr[31:26]),
        .funct(Instr[5:0]),
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
        .Lui(Lui),
        .aluop(AluOp)
    );
    
    DM dm(
        .clk(clk),
        .we(MemWrite),
        .addr(ALUResult),
        .writedata(WriteData),
        .readdata(ReadData)
    );
    
    COMP comp(
        .ALUResult(ALUResult),
        .y(compo)
    );
    
    extend ext(
        .imm(Instr[15:0]),
        .ExtOp0(ExtOp0),
        .ExtOp1(ExtOp1),
        .signImm(ExtImm)
    );
    
    MUX2 #(32) mux1(
        .a(PCplus4),
        .b(PCBranch),
        .s(Branch),
        .y(PCsel1)
    );
    
    MUX2 #(32) mux2(
        .a(PCsel1),
        .b(PCJump),
        .s(Jump),
        .y(PCsel2)
    );
    
    MUX2 #(32) mux3(
        .a(PCsel2),
        .b(PCJr),
        .s(Jr),
        .y(PCNext)
    );
    
    MUX2 #(5) mux4(
        .a(Instr[20:16]),
        .b(Instr[15:11]),
        .s(RegDst),
        .y(rt_rd)
    );
    
    wire [4:0] ra;
    assign ra = 5'b11111;
    MUX2 #(5) mux5(
        .a(rt_rd),
        .b(ra),
        .s(RaDst),
        .y(RegWrA)
    );
    
    MUX2 #(32) mux6(
        .a(Result_extimm),
        .b(PCplus4),
        .s(PCtoReg),
        .y(RegWrD)
    );
    
    MUX2 #(32) mux7(
        .a(Result),
        .b(ExtImm),
        .s(Lui),
        .y(Result_extimm)
    );
    
    MUX2 #(32) mux8(
        .a(PCJr),
        .b(ExtImm),
        .s(AluSrcA),
        .y(SrcA)
    );
    
    MUX2 #(32) mux9(
        .a(WriteData),
        .b(ExtImm),
        .s(AluSrcB),
        .y(SrcB)
    );
    
    MUX2 #(32) mux10(
        .a(ALUResult),
        .b(ReadData),
        .s(MemToReg),
        .y(Result)
    );
    
    // 内部逻辑
    assign PCplus4 = PC + 4;
    assign PCJump = {PCplus4[31:28], Instr[25:0], 2'b00};
    assign Branch = (Beq && Zero) || (Bne && (!Zero)) || (Blez && compo) || (Bgtz && (!compo));
    assign PCBranch = ExtImm * 4 + PCplus4;
    
endmodule
