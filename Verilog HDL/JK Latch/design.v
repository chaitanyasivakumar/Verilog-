module jk_latch (
    input wire J,
    input wire K,
    input wire EN,
    output reg Q,
    output wire Qbar
);
    assign Qbar = ~Q;
    always @ (J or K or EN) begin
        if (EN) begin
            case ({J, K})
                2'b00: Q <= Q;     
                2'b01: Q <= 1'b0;   
                2'b10: Q <= 1'b1;  
                2'b11: Q <= ~Q;     
            endcase
        end
    end

endmodule

