`timescale 1ns/1ps
module rca4bitbltb;
	reg  [3:0] A, B;
    	reg       Cin;
    	wire [3:0] sum;
    	wire      cout;
rca4bitbl uut (.A(A), .B(B), .Cin(Cin),.sum(sum),.cout(cout));
	initial begin
		$dumpfile("rca4bitbl.vcd");
        $dumpvars(0,rca4bitbltb);
        $monitor("Time = %0t | A = %b | B = %b | Cin = %b | Sum = %b | Cout = %b",
                    $time, A, B, Cin, sum, cout);
	A = 4'b1110; B = 4'b1110; Cin = 1; #10;
        A = 4'b1001; B = 4'b1101; Cin = 1; #10;
        

        $finish;
    end

endmodule
