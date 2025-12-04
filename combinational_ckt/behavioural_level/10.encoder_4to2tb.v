`timescale 1ns/1ps
module encod4to2bltb;
	reg [3:0] D;
	wire [1:0] Y;
encod4to2bl uut (.D(D), .Y(Y));
	initial begin
		$dumpfile("encod4to2bl.vcd");
		$dumpvars(0,encod4to2bltb);
        $monitor("Time = %0t | D = %b | Y = %b", $time, D, Y);
	D = 4'b0001; #10; 
        D = 4'b0010; #10;
        D = 4'b0100; #10;
        D = 4'b1000; #10;
	D = 4'b0000; #10; 
        $finish;
    end
endmodule

