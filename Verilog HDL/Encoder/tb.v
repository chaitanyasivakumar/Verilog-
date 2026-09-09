`timescale 1ns/1ps
module tb_encoder_4to2;

    reg D0;
    reg D1;
    reg D2;
    reg D3;

    wire Y1;
    wire Y0;

    encoder_4to2 uut (
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .Y1(Y1),
        .Y0(Y0)
    );

    initial begin

        $dumpfile("encoder.vcd");
        $dumpvars(0, tb_encoder_4to2);

        D0 = 1; D1 = 0; D2 = 0; D3 = 0;
        #10;

        D0 = 0; D1 = 1; D2 = 0; D3 = 0;
        #10;

        D0 = 0; D1 = 0; D2 = 1; D3 = 0;
        #10;

        D0 = 0; D1 = 0; D2 = 0; D3 = 1;
        #10;

        $finish;

    end

endmodule

