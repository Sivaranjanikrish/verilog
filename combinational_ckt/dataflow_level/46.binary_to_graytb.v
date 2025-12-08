`timescale 1ns/1ps
module BtoG4bittb;
	wire[3:0]gray;
	reg[3:0]bin;
BtoG4bit uut(.bin(bin),.gray(gray));
	initial begin
		$dumpfile("BtoG4bit.vcd");
        $dumpvars(0,BtoG4bittb);
	$monitor("Time=%t|Binary=%b|Gray=%b",$time,bin,gray);
	bin=4'b0000;#10;
	bin=4'b0001;#10;
	bin=4'b0010;#10;
	bin=4'b0011;#10;
	bin=4'b0100;#10;	
	bin=4'b0101;#10;
	bin=4'b0110;#10;
	bin=4'b0111;#10;
	bin=4'b1000;#10;
	bin=4'b1001;#10;
	bin=4'b1010;#10;
	bin=4'b1011;#10;
	bin=4'b1100;#10;
	bin=4'b1101;#10;
	bin=4'b1110;#10;
	bin=4'b1111;#10;
	$finish;
	end 
endmodule
