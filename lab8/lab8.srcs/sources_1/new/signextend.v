// 兼用于立即数扩展，shamt扩展，lui扩展
module extend(
    input [15:0] imm,
    input ExtOp0,
    input ExtOp1,
    output [31:0] signImm
    );
    
    assign signImm = ExtOp0 ? {27'b0, imm[10:6]} : ( ExtOp1 ? {imm, 16'b0} : {{16{imm[15]}}, imm});
    
endmodule
