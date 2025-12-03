`timescale 1ns/1ps;
module cla4bitbltb;
	wire[3:0]sum;
	wire cout;
	reg[3:0] A,B;
	reg Cin;
cla4bitbl uut (.A(A),.B(B),.Cin(Cin),.sum(sum),.cout(cout));
	initial begin
		  $dumpfile("cla4bitbl.vcd");
        $dumpvars(0,cla4bitbltb);
	$monitor("Time=%t|A=&b,B=%b,Cin=%b|sum=%b,cout=%b",$time,A,B,Cin,sum,cout);
	A=4'b0011;B=4'b1011;Cin=1;#10;
	A=4'b1001;B=4'b1111;Cin=0;#10;
	
	$finish;
end
endmodule
