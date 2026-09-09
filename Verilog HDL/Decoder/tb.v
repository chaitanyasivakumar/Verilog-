`timescale  1ns/1ps
module tb_decoder_2to4;
    reg A1;
    reg A0;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;
    decoder_2to4 uut (
        .A1(A1),
        .A0(A0),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );
    initial begin
        $dumpfile("decoder.vcd");
        $dumpvars(0, tb_decoder_2to4);
        A1 = 0; A0 = 0;
        #10;
        A1 = 0; A0 = 1;
        #10;
        A1 = 1; A0 = 0;
        #10;
        A1 = 1; A0 = 1;
        #10;
        $finish;

    end

endmodule