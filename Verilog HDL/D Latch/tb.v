`timescale 1ns/1ps
module tb;
reg D;
reg EN;
wire Q;
wire Qbar;
d_latch uut(
    .D(D),
    .EN(EN),
    .Q(Q),
    .Qbar(Qbar)
);
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $monitor("time=%0t | EN=%b | D=5b | Q=%b | Qbar=%b",
$time,EN,D,Q,Qbar);
D = 0;
EN = 0;

#10 D = 1;
#10 EN = 1;
#10 D = 0;
#10 D = 1;
#10 EN = 0;
#10 D = 0;
#10 D = 1;
#10 EN =1;
#10 D = 0;
#10 $finish;
end 
endmodule



