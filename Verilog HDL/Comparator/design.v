`timescale 1ns/1ps
module comparator( 
    input A, 
    input B, 
    output reg A_greater_B, 
    output reg A_less_B, 
    output reg A_equal_B 
); 
 
always @(*) begin 
 
    if (A > B) begin 
        A_greater_B = 1; 
        A_less_B    = 0; 
        A_equal_B   = 0; 
    end 
 
    else if (A < B) begin 
        A_greater_B = 0; 
        A_less_B    = 1; 
        A_equal_B   = 0; 
    end 
 
    else begin 
        A_greater_B = 0; 
        A_less_B    = 0; 
        A_equal_B   = 1; 
    end 
 
end 
 
endmodule

