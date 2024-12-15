module DM(
    input clk,
    input we,
    input [31:0] addr,
    input [31:0] writedata,
    output [31:0] readdata
    );

    // 4 KB 存储空间
    reg [31:0] RAM [1023:0];

    // 按字寻址
    assign readdata = RAM[addr[11:2]]; // 扩展地址范围，使用 addr[11:2]

    always @(posedge clk) begin
        if (we)
            RAM[addr[11:2]] <= writedata; // 修改为 addr[11:2]
    end

endmodule
