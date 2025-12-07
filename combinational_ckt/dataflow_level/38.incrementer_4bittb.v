`timescale 1ns/1ps
module inc4bitdftb;
	wire[4:0] sum;
	reg [3:0]A;
inc4bitdf uut(.A(A),.sum(sum));
	initial begin
		$dumpfile("inc4bitdf.vcd");
        $dumpvars(0,inc4bitdftb);
	$monitor("Time=%t|Initial_valve=%b|Final_value=%b",$time,A,sum);
	A=4'b0001;#10;
	A=4'b1000;#10;
	A=4'b1001;#10;
	A=4'b1111;#10;
	$finish;
end
endmodule
