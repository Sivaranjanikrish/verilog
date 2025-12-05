`timescale 1ns/1ps
module mux2x1ottb;
	reg I0, I1,s;
	wire y;
mux2x1ot uut(.I0(I0),.I1(I1),.s(s),.y(y));
	initial begin
		$dumpfile("mux2x1ot.vcd");
        $dumpvars(0,mux2x1ottb);
        $monitor("time=%0t | S=%b | I0=%b | I1=%b | Y=%b", $time, s, I0, I1, y);
        I0=0;I1=0;s=0;#10;
        I0=0;I1=1;s=0;#10;
        I0=1;I1=0;s=1;#10;
        I0=1;I1=1;s=1;#10;
	$finish;
    end
endmodule

