`timescale 1ns/1ps
module constant1tb;
	wire out;
	constant1 uut(.out(out));
	initial begin
		 $dumpfile ("constant1.vcd");
                $dumpvars (0, constant1tb);
		$monitor ("Time=%b;output=%b", $time,out);
		
		 $finish;
	end
endmodule
