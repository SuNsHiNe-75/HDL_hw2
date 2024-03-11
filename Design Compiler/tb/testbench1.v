`timescale 1ns/1ns
module testbench();
	reg [7:0] a, b, c;
	reg s;
	wire [15:0] d;

	hw2_nonpipe uut(a, b, c, s, d);

	initial
		begin
			// (a+b)*c
			s = 1;
            a = 1; b = 2; c = 3; #10;
            a = 2; b = 0; c = 0; #10;
            a = 5; b = 8; c = 6; #10;
			a = 20; b = 50; c = 2; #10;

			// (a-b)*c
			s = 0;
            a = 12; b = 5; c = 10; #10;
            a = 20; b = 17; c = 3; #10;
            a = 500; b = 103; c = 0; #10;
			a = 201; b = 200; c = 20; #10;
		end
endmodule