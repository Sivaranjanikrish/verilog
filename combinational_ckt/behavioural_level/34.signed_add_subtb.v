`timescale 1ns/1ps
module sigaddsubbltb;
	wire[4:0]Y;
	reg[3:0] A,B;
	reg S;
sigaddsubbl uut(.Y(Y),.A(A),.B(B),.S(S));
	initial begin
		$dumpfile("sigaddsubbl.vcd");
        $dumpvars(0,sigaddsubbltb);
	$monitor("Time=%t,A=%b,B=%b,S=%b,Y=%b",$time,A,B,S,Y);
	 A = 4'b1100; B = 4'b1111; S = 0; #10;
        A = 4'b1100; B = 4'b0011; S = 1; #10; 
	
	$finish;
end
endmodule

