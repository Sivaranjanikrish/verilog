`timescale 1ns/1ps
module demux1x8tb;
	wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
	reg D,S2,S1,S0;
demux1x8 uut(.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6),.Y7(Y7),.D(D),.S2(S2),.S1(S1),.S0(S0));
	initial begin
		$dumpfile("demux1x8.vcd");
        $dumpvars(0,demux1x8tb);
	$monitor("Time=%t|S2=%b,S1=%b,S0=%b|Y0=%b,Y1=%b,Y2=%b,Y3=%b,y4=%b,Y5=%b,Y6=%b,Y7=%b",$time,S2,S1,S0,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
	D=1;S2=0;S1=0;S0=0;#10 
	D=1;S2=0;S1=0;S0=1;#10
	D=1;S2=0;S1=1;S0=0;#10
	D=1;S2=0;S1=1;S0=1;#10	
	D=1;S2=1;S1=0;S0=0;#10
	D=1;S2=1;S1=0;S0=1;#10
	D=1;S2=1;S1=1;S0=0;#10
	D=1;S2=1;S1=1;S0=1;#10


	$finish;
end
endmodule
