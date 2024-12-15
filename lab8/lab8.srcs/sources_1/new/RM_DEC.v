// Ö÷ÒëÂëÆ÷Register and Memory Decoder
`include "mips_para.v"
module RM_DEC(
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
    output Lui
    );
    
    reg [16:0] controls;
    assign {RegDst, AluSrcA, AluSrcB, MemToReg, RegWrite, MemWrite, Beq, Bne, Blez, Bgtz, Jump, Jr, RaDst, PCtoReg, ExtOp0, ExtOp1, Lui} = controls;
    
    always@(op or funct) begin
        case(op)
            `R_TYPE: begin // RÐÍÖ¸Áî
                case(funct)
                    `SLL:    controls <= 17'b1_1001_0000_0000_0100;
                    `SRL:    controls <= 17'b1_1001_0000_0000_0100;
                    `SRA:    controls <= 17'b1_1001_0000_0000_0100;
                    `SLLV:   controls <= 17'b1_0001_0000_0000_0000;
                    `SRLV:   controls <= 17'b1_0001_0000_0000_0000;
                    `SRAV:   controls <= 17'b1_0001_0000_0000_0000;
                    `JR:     controls <= 17'b0_0000_0000_0010_0000;
                    `JALR:   controls <= 17'b0_0001_0000_0011_1000;
                    `ADD:    controls <= 17'b1_0001_0000_0000_0000;
                    `ADDU:   controls <= 17'b1_0001_0000_0000_0000;
                    `SUB:    controls <= 17'b1_0001_0000_0000_0000;
                    `SUBU:   controls <= 17'b1_0001_0000_0000_0000;
                    `AND:    controls <= 17'b1_0001_0000_0000_0000;
                    `OR:     controls <= 17'b1_0001_0000_0000_0000;
                    `XOR:    controls <= 17'b1_0001_0000_0000_0000;
                    `NOR:    controls <= 17'b1_0001_0000_0000_0000;
                    `SLT:    controls <= 17'b1_0001_0000_0000_0000;
                    `SLTU:   controls <= 17'b1_0001_0000_0000_0000;
                    default: controls <= 17'b0_0000_0000_0000_0000;
                endcase
            end
            `J:      controls <= 17'b0_0000_0000_0100_0000;
            `JAL:    controls <= 17'b0_0001_0000_0101_1000;
            `BEQ:    controls <= 17'b0_0000_0100_0000_0000;
            `BNE:    controls <= 17'b0_0000_0010_0000_0000;
            `BLEZ:   controls <= 17'b0_0000_0001_0000_0000;
            `BGTZ:   controls <= 17'b0_0000_0000_1000_0000;
            `ADDI:   controls <= 17'b0_0101_0000_0000_0000;
            `ADDIU:  controls <= 17'b0_0101_0000_0000_0000;
            `SLTI:   controls <= 17'b0_0101_0000_0000_0000;
            `SLTIU:  controls <= 17'b0_0101_0000_0000_0000;
            `ANDI:   controls <= 17'b0_0101_0000_0000_0000;
            `ORI:    controls <= 17'b0_0101_0000_0000_0000;
            `XORI:   controls <= 17'b0_0101_0000_0000_0000;
            `LUI:    controls <= 17'b0_0001_0000_0000_0011;
            `LW:     controls <= 17'b0_0111_0000_0000_0000;
            `SW:     controls <= 17'b0_0100_1000_0000_0000;
            default: controls <= 17'b0_0000_0000_0000_0000;
        endcase
    end
    
endmodule
