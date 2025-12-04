`timescale 1ns/1ps
module mux4x1bltb;
	wire y;
	reg [1:0]s;
	reg[3:0]I;
mux4x1bl uut (.y(y),.s(s),.I(I));
	initial begin
		 $dumpfile("mux4x1bl.vcd");
        $dumpvars(0, mux4x1bltb);
	$monitor("Time=%t|S=%b|I=%b|Y=%b",$time,s,I,y);
	 I = 4'b1000;
	s=2'b00;#10;
	s=2'b01;#10;
	s=2'b10;#10;
	s=2'b11;#10;
	
        $finish;
    end
endmodule
