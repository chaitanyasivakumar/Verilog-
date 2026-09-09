module sr_latch (
    input wire S,
    input wire R,
    output reg Q,
    output wire Qbar
);

    assign Qbar = ~Q;

    always @ (S or R) begin
        if (S && !R)
            Q <= 1'b1;
        else if (!S && R)
            Q <= 1'b0;
        else if (S && R)
            Q <= 1'bx;
    end

endmodule
