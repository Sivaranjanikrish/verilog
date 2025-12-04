`timescale 1ns/1ps
module demux1x4tb;
	reg D, S1, S0;
	wire Y0, Y1, Y2, Y3;
demux1x4 uut(.Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3),.D(D), .S1(S1), .S0(S0));
	initial begin
		  $dumpfile("demux1x4.vcd");
        $dumpvars(0, demux1x4tb);
        $monitor("Time=%0t | D=%b | S1=%b S0=%b | Y0=%b Y1=%b Y2=%b Y3=%b",$time, D, S1, S0, Y0, Y1, Y2, Y3);
	D=1;S1=0;S0=0; #10;   
        D=1;S1=0;S0=1; #10;   
        D=1;S1=1;S0=0; #10;   
        D=1;S1=1;S0=1; #10;  
	D=0;S1=0;S0=0; #10;
        D=0;S1=0;S0=1; #10;
        D=0;S1=1;S0=0; #10;
        D=0;S1=1;S0=1; #10;
 

        $finish;
    end

endmodule

