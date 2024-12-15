`timescale 1ns / 1ps
module mips_test();
reg clk, rst_n;

mips m1(
    .clk(clk),
    .rst_n(rst_n)
);

initial begin
    rst_n = 0;
    #5 rst_n = 1;
end

initial
    clk = 1;
always
    #5 clk = ~clk;

endmodule
