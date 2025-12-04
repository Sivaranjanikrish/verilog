`timescale 1ns/1ps
module dec4bitbltb;
	wire[4:0] Y;
	reg [3:0]A;
dec4bitbl uut(.A(A),.Y(Y));
	initial begin
	$dumpfile("dec4bitbl.vcd");
        $dumpvars(0,dec4bitbltb);
		$monitor("Time=%t|Initial_valve=%b|Final_value=%b",$time,A,Y);
	A=4'b000;#10;
	A=4'b1000;#10;
	A=4'b1001;#10;
	A=4'b1111;#10;
	
	$finish;
end
endmodule


