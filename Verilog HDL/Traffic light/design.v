`timescale 1ns/1ps
module traffic_light(
    input clk,
    input rst,
    output reg [2:0] light
);
parameter RED    = 3'b100;
parameter YELLOW = 3'b010;
parameter GREEN  = 3'b001;
reg [1:0] state;
reg [3:0] count;
parameter RED_TIME    = 4'd5;
parameter YELLOW_TIME = 4'd2;
parameter GREEN_TIME  = 4'd5;
always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        state <= 2'b00;
        count <= 4'd0;
    end
    else
    begin
        case (state)

            2'b00:
            begin
                light <= RED;

                if (count == RED_TIME - 1)
                begin
                    count <= 4'd0;
                    state <= 2'b01;
                end
                else
                    count <= count + 1'b1;
            end

            2'b01:
            begin
                light <= GREEN;

                if (count == GREEN_TIME - 1)
                begin
                    count <= 4'd0;
                    state <= 2'b10;
                end
                else
                    count <= count + 1'b1;
            end

            2'b10:
            begin
                light <= YELLOW;

                if (count == YELLOW_TIME - 1)
                begin
                    count <= 4'd0;
                    state <= 2'b00;
                end
                else
                    count <= count + 1'b1;
            end

            default:
            begin
                state <= 2'b00;
                count <= 4'd0;
            end

        endcase
    end
end

endmodule