`timescale 1ns/1ps;
module evenparitygenbltb;
	wire out;
	reg[3:0] in;
evenparitygenbl uut(.in(in),.out(out));
	initial begin
		$dumpfile("evenparitygenbl.vcd");
		$dumpvars(0,evenparitygenbltb);
	$monitor("Time=%t,input_bit=%b,parity_bit=%b",$time,in,out);
	in=4'b0011;#10;
	in=4'b0111;#10;
	$finish;
end
endmodule

