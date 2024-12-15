// 多路选择器模块
module MUX2 #(parameter width = 5) (
    input [width-1:0] a, b,
    input s,
    output [width-1:0] y
    );
    
    assign y = s ? b : a;
    
endmodule
