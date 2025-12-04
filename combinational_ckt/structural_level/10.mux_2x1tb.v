`timescale 1ns/1ps
module mux2x1tb;
	wire y;
	reg I0,I1,s0;
mux2x1 uut(.y(y),.I0(I0),.I1(I1),.s0(s0));
	initial begin
	I0=0; I1=0; s0=0; #10;
        I0=0; I1=1; s0=0; #10;
        I0=1; I1=0; s0=0; #10;
        I0=1; I1=1; s0=0; #10;
        I0=0; I1=0; s0=1; #10;
        I0=0; I1=1; s0=1; #10;
        I0=1; I1=0; s0=1; #10;
        I0=1; I1=1; s0=1; #10;
	     $dumpfile("mux2x1.vcd");
        $dumpvars(0, mux2x1tb);
        $finish;
    end

endmodule
