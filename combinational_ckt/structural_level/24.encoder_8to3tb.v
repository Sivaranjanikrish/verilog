`timescale 1ns/1ps
module encoder8to3tb;
	wire x,y,z;
	reg D0,D1,D2,D3,D4,D5,D6,D7;
encoder8to3 uut(.x(x),.y(y),.z(z),.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7));
	initial begin
		 $dumpfile("encoder8to3.vcd");
        $dumpvars(0,encoder8to3tb);
	$monitor("Time=%t|x=%b,y=%b,z=%b|D0=%b,D1=%b,D2=%b,D3=%b,D4=%b,D5=%b,D6=%b,D7=%b",$time,x,y,z,D0,D1,D2,D3,D4,D5,D6,D7);
	D7=0;D6=0;D5=0;D4=0;D3=0;D2=0;D1=0;D0=1; #10;
        D7=0;D6=0;D5=0;D4=0;D3=0;D2=0;D1=1;D0=0; #10;
        D7=0;D6=0;D5=0;D4=0;D3=0;D2=1;D1=0;D0=0; #10;
        D7=0;D6=0;D5=0;D4=0;D3=1;D2=0;D1=0;D0=0; #10;
        D7=0;D6=0;D5=0;D4=1;D3=0;D2=0;D1=0;D0=0; #10;
        D7=0;D6=0;D5=1;D4=0;D3=0;D2=0;D1=0;D0=0; #10;
        D7=0;D6=1;D5=0;D4=0;D3=0;D2=0;D1=0;D0=0; #10;
        D7=1;D6=0;D5=0;D4=0;D3=0;D2=0;D1=0;D0=0; #10;
	
	$finish;
end 
endmodule
