`timescale 1ns/1ps
module rytsftbltb;
    reg [3:0] A;
    wire [4:0] Y;

    rytsftbl uut (.A(A), .Y(Y));

    initial begin
	     $dumpfile("rytsftbl.vcd");
        $dumpvars(0, rytsftbltb);
        $monitor("Time=%t | A=%b | Y=%b", $time, A, Y);

        A = 4'b0000; #10;  
        A = 4'b0101; #10; 
	A = 4'b1111; #10;  

        
        $finish;
    end
endmodule

