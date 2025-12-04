`timescale 1ns/1ps
module inc4bitbltb;
	wire[4:0] Y;
	reg [3:0]A;
inc4bitbl uut(.A(A),.Y(Y));
	initial begin
		 $dumpfile("inc4bitbl.vcd");
        $dumpvars(0,inc4bitbltb);
	$monitor("Time=%t|Initial_valve=%b|Final_value=%b",$time,A,Y);
	A=4'b0001;#10;
	A=4'b1000;#10;
	A=4'b1001;#10;
	A=4'b1111;#10;
		$finish;
end
endmodule

