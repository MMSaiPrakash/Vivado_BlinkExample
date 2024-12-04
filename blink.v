`timescale 1ns / 1ps

module servoMotor (
    input wire clk, // Internal clock
    input wire rst, // Reset signal
    output reg led  // LED output
);

    // Clock divider counter
    reg [31:0] counter;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            led <= 0;
        end else begin
            counter <= counter + 1;
            if (counter == 50_000_000) begin // Adjust the value for a visible LED blink
                counter <= 0;
                led <= ~led;
            end
        end
    end

endmodule
