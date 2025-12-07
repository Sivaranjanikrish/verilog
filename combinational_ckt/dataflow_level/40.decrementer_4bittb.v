`timescale 1ns/1ps
module dec4bitdftb;
	wire[4:0] diff;
	reg [3:0]A;
dec4bitdf uut(.A(A),.diff(diff));
	initial begin
		 $dumpfile("dec4bitdf.vcd");
        $dumpvars(0,dec4bitdftb);
	$monitor("Time=%t|Initial_valve=%b|Final_value=%b",$time,A,diff);
	A=4'b0000;#10;
	A=4'b1000;#10;
	A=4'b1001;#10;
	A=4'b1111;#10;
	$finish;
end
endmodule

