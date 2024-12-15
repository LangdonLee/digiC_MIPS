`include "mips_para.v"
module ALU(
    input [31:0] srca_i,
    input [31:0] srcb_i,
    input [3:0] aluop_i,
    output reg zero,
    output reg [31:0] aluresult
    );
    
    always@(srca_i, srcb_i, aluop_i) begin
        case(aluop_i)
            `alu_shl: begin
                aluresult = srcb_i << srca_i[4:0];
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_shr: begin
                aluresult = srcb_i >> srca_i[4:0];
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_sar: begin
                aluresult = ($signed(srcb_i)) >>> srca_i[4:0];
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_add: begin
                aluresult = srca_i + srcb_i;
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_sub: begin
                aluresult = srca_i - srcb_i;
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_and: begin
                aluresult = srca_i & srcb_i;
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_or: begin
                aluresult = srca_i | srcb_i;
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_xor: begin
                aluresult = srca_i ^ srcb_i;
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_nor: begin
                aluresult = ~(srca_i | srcb_i);
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_slt: begin
                aluresult = ($signed(srca_i)) < ($signed(srcb_i)) ? 32'b1 : 32'b0;
                zero = aluresult == 0 ? 1 : 0;
            end
            `alu_sltu: begin
                aluresult = srca_i < srcb_i ? 32'b1 : 32'b0;
                zero = aluresult == 0 ? 1 : 0;
            end
            default: begin
                aluresult = 32'b0;
                zero = 0;
            end
        endcase
    end
    
endmodule
