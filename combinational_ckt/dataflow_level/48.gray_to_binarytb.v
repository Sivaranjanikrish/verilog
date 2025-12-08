`timescale 1ns/1ps
module GtoB4bittb;
	wire[3:0]bin;
	reg[3:0]gray;
GtoB4bit uut(.bin(bin),.gray(gray));
	initial begin
		$dumpfile("GtoB4bit.vcd");
$dumpvars(0,GtoB4bittb);
	$monitor("Time=%t|Gray=%b|Binary=%b",$time,gray,bin);
	gray=4'b0000;#10;
	gray=4'b0001;#10;
	gray=4'b0010;#10;
	gray=4'b0011;#10;
	gray=4'b0100;#10;
	gray=4'b0101;#10;
	gray=4'b0110;#10;
	gray=4'b0111;#10;
	gray=4'b1001;#10;
	gray=4'b1010;#10;
	gray=4'b1011;#10;
	gray=4'b1100;#10;
	gray=4'b1101;#10;
	gray=4'b1110;#10;
	gray=4'b1110;#10;
	gray=4'b1111;#10;
$finish;
end 
endmodule

