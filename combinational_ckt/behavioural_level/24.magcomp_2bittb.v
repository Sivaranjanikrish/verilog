module magc2bitbltb;
	wire AGB,AEB,ALB;
	reg [1:0] A,B;
magc2bitbl uut (.AGB(AGB),.AEB(AEB),.ALB(ALB),.A(A),.B(B));
	initial begin
		 $dumpfile("magc2bitbl.vcd");
        $dumpvars(0,magc2bitbltb);
	$monitor("Time=%t|AGB=%b,AEB=%b,ALB=%b|A=%b,B=%b",$time,AGB,AEB,ALB,A,B);
	A = 2'b00; B = 2'b00; #10;
        A = 2'b00; B = 2'b01; #10;
        A = 2'b00; B = 2'b10; #10;
        A = 2'b00; B = 2'b11; #10;
	A = 2'b01; B = 2'b00; #10;
        A = 2'b01; B = 2'b01; #10;
        A = 2'b01; B = 2'b10; #10;
        A = 2'b01; B = 2'b11; #10;
        A = 2'b10; B = 2'b00; #10;
        A = 2'b10; B = 2'b01; #10;
        A = 2'b10; B = 2'b10; #10;
        A = 2'b10; B = 2'b11; #10;
	A = 2'b11; B = 2'b00; #10;
        A = 2'b11; B= 2'b01; #10;
        A = 2'b11; B = 2'b10; #10;
        A = 2'b11; B = 2'b11; #10;
	$finish;
end 
endmodule



