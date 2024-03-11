`timescale 1ns/1ns
module hw2_pipe (input [7:0] a, b, c, input s, reset, clk, output [15:0] d);
    wire [7:0] c1, alu;
    pipe1 p1 (a, b, c, s, reset, clk, c1, alu);
    pipe2 p2 (c1, alu, reset, clk, d);
endmodule

module pipe1 (a, b, c, s, reset, clk, reg_c1, reg_alu);//(input [7:0] a, b, c, input s, reset, clk, output [7:0] reg_c1, reg_alu);
    input [7:0] a, b, c;
    input s, reset, clk;
    output [7:0] reg_c1, reg_alu;
    
    reg [7:0] reg_c1, reg_alu;
    wire [7:0] w1, w2;

    assign w1 = s ? (a + b) : (a - b);
    assign w2 = c;

    always @ (posedge clk or posedge reset)
        begin
            if (reset) begin
                reg_alu <= 0;
                reg_c1 <= 0;
            end
            else begin
                reg_alu <= w1;
                reg_c1 <= w2;
            end
        end
endmodule

module pipe2 (input [7:0] regc, regalu, input reset, clk, output [15:0] d);
    reg [15:0] reg_out;
    wire [15:0] mul;

    assign mul = regc * regalu;
    assign d = reg_out;

    always @ (posedge clk or posedge reset)
        begin
            if (reset) begin
                reg_out <= 0;
            end
            else begin
                reg_out <= mul;
            end
        end
endmodule