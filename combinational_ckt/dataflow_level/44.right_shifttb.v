`timescale 1ns/1ps
module rytsftdftb;
    reg [3:0] A;
    wire [4:0] Y;

    rytsftdf uut (.A(A), .Y(Y));

    initial begin
	    $dumpfile("rytsftdf.vcd");
        $dumpvars(0, rytsftdftb);
        $monitor("Time=%t | A=%b | Y=%b", $time, A, Y);

        A = 4'b0110; #10;  
        A = 4'b0111; #10; 
	A = 4'b1111; #10;  

      
        $finish;
    end
endmodule
