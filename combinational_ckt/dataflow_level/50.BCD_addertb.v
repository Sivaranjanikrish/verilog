`timescale 1ns/1ps
module BCDadderdftb;
	wire [3:0]sum,carry;
	reg [3:0]A,B;
BCDadderdf uut(.A(A),.B(B),.sum(sum),.carry(carry));
	initial begin
		 $dumpfile("BCDadder.vcd");
        $dumpvars(0,BCDadderdftb);
		$monitor("Time=%t,A=%b,B=%b|SUM=%b,CARRY=%b",$time,A,B,sum,carry);
		A = 4'b0101; B = 4'b0101; #10; 
        	A = 4'b1001; B = 4'b0011; #10;
	$finish;
end
endmodule
