`timescale 1ns/1ps
module lftsftbltb;
    reg [3:0] A;
    wire [4:0] Y;

    lftsftbl uut (.A(A), .Y(Y));

    initial begin
	     $dumpfile("lftsftbl.vcd");
        $dumpvars(0, lftsftbltb);
        $monitor("Time=%t | A=%b | Y=%b", $time, A, Y);

        A = 4'b0110; #10;  
        A = 4'b1001; #10; 
	A = 4'b1111; #10;  

        
        $finish;
    end
endmodule


