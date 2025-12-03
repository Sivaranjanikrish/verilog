`timescale 1ns/1ps
module mux8x1bltb;
	wire y;
	reg [2:0]s;
	reg[7:0]I;
mux8x1bl uut (.y(y),.s(s),.I(I));
	initial begin
		 $dumpfile("mux8x1bl.vcd");
        $dumpvars(0, mux8x1bltb);
	$monitor("Time=%t|S=%b|I=%b|Y=%b",$time,s,I,y);
	 I = 8'b11001100;
	s=3'b000;#10;
	s=3'b001;#10;
	s=3'b010;#10;
	s=3'b011;#10;
	s=3'b100;#10;
	s=3'b101;#10;
	s=3'b110;#10;
	s=3'b111;#10;

        $finish;
    end
endmodule
