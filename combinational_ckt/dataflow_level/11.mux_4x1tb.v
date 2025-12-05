`timescale 1ns/1ps
module mux4x1ottb;
	wire y;
	reg I0,I1,I2,I3,S1,S0;
mux4x1ot uut(.y(y),.I0(I0),.I1(I1),.I2(I2),.I3(I3),.S0(S0),.S1(S1));
	initial begin
		$dumpfile("mux4x1ot.vcd");
        $dumpvars(0, mux4x1ottb);
	$monitor("Time=%0t | S1=%b S0=%b | I0=%b I1=%b I2=%b I3=%b | Y=%b",
                 $time, S1, S0, I0, I1, I2, I3, y);
	 I0=1'b1;
	 I1=1'b0;
	 I2=1'b1;
	 I3=1'b1;
	  S1=0; S0=0; #10; 
        S1=0; S0=1; #10; 
        S1=1; S0=0; #10; 
	S1=1; S0=1; #10;

        $finish;
    end
endmodule

