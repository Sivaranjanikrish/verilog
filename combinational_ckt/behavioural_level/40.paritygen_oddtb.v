`timescale 1ns/1ps;
module oddparitygenbltb;
	wire out;
	reg[3:0] in;
oddparitygenbl uut(.in(in),.out(out));
	initial begin
		$dumpfile("oddparitygenbl.vcd");
		$dumpvars(0,oddparitygenbltb);
	$monitor("Time=%t,input_bit=%b,parity_bit=%b",$time,in,out);
	in=4'b1011;#10;
	in=4'b1111;#10;
	$finish;
end
endmodule
