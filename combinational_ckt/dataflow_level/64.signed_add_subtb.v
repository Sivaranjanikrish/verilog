`timescale 1ns/1ps
module sigaddsubdftb;
	wire[4:0]Y;
	reg[3:0] A,B;
	reg S;
sigaddsubdf uut(.Y(Y),.A(A),.B(B),.S(S));
	initial begin
		  $dumpfile("sigaddsubdf.vcd");
        $dumpvars(0,sigaddsubdftb);
	$monitor("Time=%t,A=%b,B=%b,S=%b,Y=%b",$time,A,B,S,Y);
	 A = 4'b0110; B = 4'b1011; S = 0; #10;
        A = 4'b1110; B = 4'b1011; S = 1; #10;
	$finish;
end
endmodule
