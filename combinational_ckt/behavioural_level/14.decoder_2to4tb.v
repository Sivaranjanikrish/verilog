`timescale 1ns/1ps
module decod2to4tb;
	reg [1:0] A;
    	reg EN;
    	wire [3:0] Y;
decod2to4bl uut (.A(A), .EN(EN), .Y(Y));
	initial begin
	$dumpfile("decod2to4bl.vcd");
	$dumpvars(0,decod2to4tb);
        $monitor("Time=%0t | EN=%b | A=%b | Y=%b", $time, EN, A, Y);
	EN = 1; A = 2'b00; #10;
        EN = 1; A = 2'b01; #10;
        EN = 1; A = 2'b10; #10;
        EN = 1; A = 2'b11; #10;
        EN = 0; A = 2'b10; #10;         
        $finish;
    end
endmodule

