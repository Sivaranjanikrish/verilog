module magc2bittb;
    reg [1:0] A,B;
    wire AGB,AEB,ALB;
magc2bit uut(.A(A),.B(B),.AGB(AGB),.AEB(AEB),.ALB(ALB));
    	initial begin
		$dumpfile("magc2bit.vcd");
$dumpvars(0,magc2bittb);
        $monitor("Time=%t|A=%b,B=%b|AGB=%b,AEB=%b,ALB=%b",$time,A,B,AGB,AEB,ALB);
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
