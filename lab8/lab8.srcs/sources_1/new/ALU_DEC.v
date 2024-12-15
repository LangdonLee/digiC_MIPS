// ALU“Î¬Î∆˜
`include "mips_para.v"
module ALU_DEC(
    input [5:0] op,
    input [5:0] funct,
    output reg [3:0] aluop
    );
    
    always@(op or funct) begin
        case(op)
            `R_TYPE: begin // R–Õ÷∏¡Ó
                case(funct)
                    `SLL:       aluop <= `alu_shl;
                    `SRL:       aluop <= `alu_shr;
                    `SRA:       aluop <= `alu_sar;
                    `SLLV:      aluop <= `alu_shl;
                    `SRLV:      aluop <= `alu_shr;
                    `SRAV:      aluop <= `alu_sar;
                    `JR:        aluop <= `alu_dis;
                    `JALR:      aluop <= `alu_dis;
                    `ADD:       aluop <= `alu_add;
                    `ADDU:      aluop <= `alu_add;
                    `SUB:       aluop <= `alu_sub;
                    `SUBU:      aluop <= `alu_sub;
                    `AND:       aluop <= `alu_and;
                    `OR:        aluop <= `alu_or;
                    `XOR:       aluop <= `alu_xor;
                    `NOR:       aluop <= `alu_nor;
                    `SLT:       aluop <= `alu_slt;
                    `SLTU:      aluop <= `alu_sltu;
                    default:    aluop <= `alu_dis;
                endcase
            end
            `J:         aluop <= `alu_dis;
            `JAL:       aluop <= `alu_dis;
            `BEQ:       aluop <= `alu_sub;
            `BNE:       aluop <= `alu_sub;
            `BLEZ:      aluop <= `alu_add;
            `BGTZ:      aluop <= `alu_add;
            `ADDI:      aluop <= `alu_add;
            `ADDIU:     aluop <= `alu_add;
            `SLTI:      aluop <= `alu_slt;
            `SLTIU:     aluop <= `alu_sltu;
            `ANDI:      aluop <= `alu_and;
            `ORI:       aluop <= `alu_or;
            `XORI:      aluop <= `alu_xor;
            `LUI:       aluop <= `alu_add;
            `LW:        aluop <= `alu_add;
            `SW:        aluop <= `alu_add;
            default:    aluop <= `alu_dis;
        endcase
    end
    
endmodule
