//¼Ä´æÆ÷¶Ñ
module RF(
    input clk,
    input we,
    input [4:0] a1, a2, a3,
    input [31:0] wd,
    output [31:0] r1, r2
    );
    
    reg [31:0] rf [0:31];
    
    always@(posedge clk)
        if(we)
            rf[a3] <= wd;
    
    assign r1 = (a1 != 5'b0) ? rf[a1] : 32'b0;
    assign r2 = (a2 != 5'b0) ? rf[a2] : 32'b0;
    
endmodule
