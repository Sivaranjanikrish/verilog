`timescale 1ns/1ps
module mux8x1ottb;
	wire Y;
	reg I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2;
mux8x1ot uut(.Y(Y),.S0(S0),.S1(S1),.S2(S2),.I0(I0),.I1(I1),.I2(I2),.I3(I3),.I4(I4),.I5(I5),.I6(I6),.I7(I7));
	initial begin
		$dumpfile("mux8x1ot.vcd");
        $dumpvars(0,mux8x1ottb);
	$monitor("Time=%t|S0=%b,S1=%b,S2=%b|I0=%b,I1=%b,I2=%b,I3=%b,I4=%b,I5=%b,I6=%b,I7=%b,Y=%b",$time,S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7,Y);
  	I0=1;I1=0;I2=0;I3=0;I4=0;I5=0;I6=0;I7=0;S2=0;S1=0;S0=0;#10;
	I0=0;I1=1;I2=0;I3=0;I4=0;I5=0;I6=0;I7=0;S2=0;S1=0;S0=1;#10;
	I0=0;I1=0;I2=1;I3=0;I4=0;I5=0;I6=0;I7=0;S2=0;S1=1;S0=0;#10;
	I0=0;I1=0;I2=0;I3=1;I4=0;I5=0;I6=0;I7=0;S2=0;S1=1;S0=1;#10;
	I0=0;I1=0;I2=0;I3=0;I4=1;I5=0;I6=0;I7=0;S2=1;S1=0;S0=0;#10;
	I0=0;I1=0;I2=0;I3=0;I4=0;I5=1;I6=0;I7=0;S2=1;S1=0;S0=1;#10;
	I0=0;I1=0;I2=0;I3=0;I4=0;I5=0;I6=1;I7=0;S2=1;S1=1;S0=0;#10;
	I0=0;I1=0;I2=0;I3=0;I4=0;I5=0;I6=0;I7=1;S2=1;S1=1;S0=1;#10;
	$finish;	
end
endmodule




