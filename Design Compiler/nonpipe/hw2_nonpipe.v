`timescale 1ns/1ns
module hw2_nonpipe (input [7:0] a, b, c, input s, output [15:0] d);
    reg [15:0] d;

    always @ (a or b or c or s)
        begin
            if (s)
                d = (a + b)* c;
            else
                d = (a - b)* c;
        end
endmodule