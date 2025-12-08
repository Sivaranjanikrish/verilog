`timescale 1ns/1ps
module BCDsubdftb;
	wire [3:0]borrow,diff;
	reg [3:0]A,B;
BCDsubdf uut(.A(A),.B(B),.borrow(borrow),.diff(diff));
	initial begin
		$dumpfile("BCDsub.vcd");
        $dumpvars(0,BCDsubdftb);
		$monitor("Time=%t,A=%b,B=%b|BORROW=%b,DIFF=%b",$time,A,B,borrow,diff);
		A = 4'b0101; B = 4'b0111; #10; 
        	A = 4'b1001; B = 4'b1111; #10;
	
	$finish;
end
endmodule

