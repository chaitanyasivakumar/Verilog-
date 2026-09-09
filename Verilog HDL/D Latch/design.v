module d_latch(
    input wire D,
    input wire EN,
    output reg Q,
    output wire Qbar
);
assign Qbar = ~Q;
always @ (D or EN) begin
    if(EN)
    Q <= D;
end
endmodule

