`timescale 1ns/1ps
module BCDtoEX3dftb;
    reg  [3:0] BCD;
    wire [3:0] EX3;
BCDtoEX3df uut (.BCD(BCD), .EX3(EX3));
   initial begin
	    $dumpfile("BCDtoEX3df.vcd");
        $dumpvars(0,BCDtoEX3dftb);
   $monitor("Time=%0t | BCD=%b | EX3=%b", $time, BCD, EX3);
	BCD = 4'b0000; #10;
        BCD = 4'b1001; #10;
       BCD=4'b1011;#10;	
	$finish;
    end
endmodule

