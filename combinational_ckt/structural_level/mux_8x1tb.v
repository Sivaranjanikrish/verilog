`timescale 1ns/1ps
module mux8x1tb;
	wire Y;
	reg I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2;
mux8x1 uut(.Y(Y),.S0(S0),.S1(S1),.S2(S2),.I0(I0),.I1(I1),.I2(I2),.I3(I3),.I4(I4),.I5(I5),.I6(I6),.I7(I7));
	initial begin
	$monitor("Time=%t|S0=%b,S1=%b,S2=%b|I0=%b,I1=%b,I2=%b,I3=%b,I4=%b,I5=%b,I6=%b,I7=%b,Y=%b",$time,S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7,Y);
  	I0=1'b0;
	I1=1'b1;
	I2=1'b0;
	I3=1'b1;
	I4=1'b0;
	I5=1'b1;
	I6=1'b0;
	I7=1'b1;
	S2=0;S1=0;S0=0;#10;
	S2=0;S1=0;S0=1;#10;
	S2=0;S1=1;S0=0;#10;
	S2=0;S1=1;S0=1;#10;
	S2=1;S1=0;S0=0;#10;
	S2=1;S1=0;S0=1;#10;
	S2=1;S1=1;S0=0;#10;
	S2=1;S1=1;S0=1;#10;

	$dumpfile("mux8x1.vcd");
	$dumpvars(0,mux8x1tb);
	$finish;	
end
endmodule



