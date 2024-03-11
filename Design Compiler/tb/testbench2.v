`timescale 1ns/1ns
module testbench();
	reg [7:0] a, b, c;
	reg s, reset, clk;
	wire [15:0] d;

	hw2_pipe uut1(a, b, c, s, reset, clk, d);
	//hw2_pipe_gclk uut2(a, b, c, s, reset, clk, d);
	
	initial begin
		#3;
		s = 1;
		reset = 1'b0;
		a = 0; b = 0; c = 0; #20;
		a = 1; b = 2; c = 3; #20;
		a = 4; b = 5; c = 6; #20;
		a = 1; b = 2; c = 3; #20;

		reset = 1'b1;
		a = 4; b = 5; c = 6; #20;
		a = 1; b = 2; c = 3; #20;
		a = 4; b = 5; c = 6; #20;

		s = 0;
		reset = 1'b0;
		a = 10; b = 5; c = 9; #20;
		a = 20; b = 8; c = 3; #20;
		a = 23; b = 20; c = 6; #20;
		a = 68; b = 58; c = 4; #20;

		s = 1;
		reset = 1'b0;
		a = 1; b = 1; c = 1; #20;
		a = 2; b = 2; c = 0; #20;
		a = 3; b = 3; #20;
		a = 4; b = 4; #20;
		a = 5; b = 5; #20;
		a = 1; b = 1; c = 1; #20;
		a = 2; b = 3; #20;
		a = 3; b = 2; #20;
		a = 1; b = 4; #20;
	end

	initial
		begin 
			clk = 1'b0;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
			#10 clk = ~clk; #10 clk = ~clk;
		end
endmodule