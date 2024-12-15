module PC(
    input clk,
    input rst_n,
    input [31:0] pcnext,
    output reg[31:0] pc
    );
    
    //当复位信号下降沿或者时钟上升沿到来时更新PC输出
    always@(posedge clk or negedge rst_n)
    begin
        if(!rst_n)
            pc <= 32'b0;
        else
            pc <= pcnext;
    end
endmodule
