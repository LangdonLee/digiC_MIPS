`timescale 1ns / 1ps
module fetch_instr_test();
reg clk, rst_n;
wire [31:0] instr;

fetch_instr_datapath fd(clk, rst_n, instr);

initial begin
    rst_n = 0;
    #5 rst_n = 1;
end

initial
    clk = 1;

always
    #5 clk = ~clk;

endmodule
