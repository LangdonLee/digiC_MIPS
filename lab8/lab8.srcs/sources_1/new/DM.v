module DM(
    input clk,
    input we,
    input [31:0] addr,
    input [31:0] writedata,
    output [31:0] readdata
    );

    // 4 KB �洢�ռ�
    reg [31:0] RAM [1023:0];

    // ����Ѱַ
    assign readdata = RAM[addr[11:2]]; // ��չ��ַ��Χ��ʹ�� addr[11:2]

    always @(posedge clk) begin
        if (we)
            RAM[addr[11:2]] <= writedata; // �޸�Ϊ addr[11:2]
    end

endmodule
