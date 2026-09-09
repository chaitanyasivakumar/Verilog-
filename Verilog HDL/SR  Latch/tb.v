`timescale 1ns/1ps

module tb;
    reg S;
    reg R;
    wire Q;
    wire Qbar;

    sr_latch uut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qbar(Qbar)
    );
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb);
        $monitor("Time=%0t | S=%b | R=%b | Q=%b | Qbar=%b",
                 $time, S, R, Q, Qbar);
        S = 0;
        R = 0;

        #10 S = 1;
            R = 0;

        #10 S = 0;
            R = 0;

        #10 S = 0;
            R = 1;

        #10 S = 0;
            R = 0;

        #10 S = 1;
            R = 1;
        #10 $finish;
    end

endmodule

