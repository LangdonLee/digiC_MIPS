module PC(
    input clk,
    input rst_n,
    input [31:0] pcnext,
    output reg[31:0] pc
    );
    
    //����λ�ź��½��ػ���ʱ�������ص���ʱ����PC���
    always@(posedge clk or negedge rst_n)
    begin
        if(!rst_n)
            pc <= 32'b0;
        else
            pc <= pcnext;
    end
endmodule
