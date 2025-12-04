`timescale 1ns/1ps
module encod8to3bltb;
	reg [7:0] D;
    	wire [2:0] Y;
encod8to3bl uut (.D(D), .Y(Y));
	initial begin
	$dumpfile("encod8to3bl.vcd");
	$dumpvars(0,encod8to3bltb);
        $monitor("Time = %0t | D = %b | Y = %b", $time, D, Y);
	D = 8'b00000001; #10; 
        D = 8'b00000010; #10; 
        D = 8'b00000100; #10; 
        D = 8'b00001000; #10; 
        D = 8'b00010000; #10; 
        D = 8'b00100000; #10; 
        D = 8'b01000000; #10; 
        D = 8'b10000000; #10; 
	D = 8'b00000000; #10; 
	$finish;
    	end

endmodule

