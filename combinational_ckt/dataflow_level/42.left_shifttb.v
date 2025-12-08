`timescale 1ns/1ps
module lftsftdftb;
    reg [3:0] A;
    wire [4:0] Y;

    lftsftdf uut (.A(A), .Y(Y));

    initial begin
	     $dumpfile("lftsftdf.vcd");
        $dumpvars(0, lftsftdftb);
        $monitor("Time=%t | A=%b | Y=%b", $time, A, Y);

        A = 4'b1111; #10;  
        A = 4'b0111; #10; 
	A = 4'b1001;#10;
        $finish;
    end
endmodule
