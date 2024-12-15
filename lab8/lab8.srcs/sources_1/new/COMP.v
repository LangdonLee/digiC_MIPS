module COMP(
    input [31:0] ALUResult,
    output y
    );
    
    assign y = ALUResult[31] ? 1 : (!(|ALUResult));
    
endmodule
