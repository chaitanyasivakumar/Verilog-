`timescale 1ns/1ps
module tb;
    reg J;
    reg K;
    reg EN;
    wire Q;
    wire Qbar;
    jk_latch uut (
        .J(J),
        .K(K),
        .EN(EN),
        .Q(Q),
        .Qbar(Qbar)
    );
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
        $monitor("Time=%0t | EN=%b | J=%b | K=%b | Q=%b | Qbar=%b",
                 $time, EN, J, K, Q, Qbar);
        J = 0;
        K = 0;
        EN = 0;
        #10 EN = 1;
            J = 0;
            K = 0;
        #10 J = 1;
            K = 0;
        #10 J = 0;
            K = 1;
        #10 J = 1;
            K = 1;
        #10 J = 1;
            K = 1;
        #10 EN = 0;
            J = 0;
            K = 1;
        #10 $finish;
    end

endmodule

