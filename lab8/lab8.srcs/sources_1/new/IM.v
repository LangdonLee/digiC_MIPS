module IM(
    input [31:0] addr_i,
    output reg[31:0] instr
    );
    
    //定义可存储64条指令的存储器，每一条指令为32位4字节
    //指令存储器大小为64*6=256字节
    reg[31:0] rom[0:63];
    
    //用readmemh函数读取MIPS指令程序编译后的机器码文件，将其加载到存储器中
    initial
        $readmemh("D:/MyDownloads/MARS/lab8/sort.bat", rom);
        
    //总是输出当前地址指向的指令
    always@(addr_i)
        instr = rom[addr_i[31:2]];
endmodule
