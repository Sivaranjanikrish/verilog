`timescale 1ns/1ps
module constant0tb;
    wire out;
    constant_0 uut(.out(out));

    initial begin
	      $dumpfile("constant0.vcd");
        $dumpvars(0, constant0tb);
        $monitor("Time=%t|Output=%b",$time,out);
	$finish;
    end
endmodule
