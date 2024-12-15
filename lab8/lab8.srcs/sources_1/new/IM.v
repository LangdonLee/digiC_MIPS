module IM(
    input [31:0] addr_i,
    output reg[31:0] instr
    );
    
    //����ɴ洢64��ָ��Ĵ洢����ÿһ��ָ��Ϊ32λ4�ֽ�
    //ָ��洢����СΪ64*6=256�ֽ�
    reg[31:0] rom[0:63];
    
    //��readmemh������ȡMIPSָ���������Ļ������ļ���������ص��洢����
    initial
        $readmemh("D:/MyDownloads/MARS/lab8/sort.bat", rom);
        
    //���������ǰ��ַָ���ָ��
    always@(addr_i)
        instr = rom[addr_i[31:2]];
endmodule
