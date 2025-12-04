`timescale 1ns/1ps
module BCDtoEX3bltb;
    reg  [3:0] BCD;
    wire [3:0] EX3;
BCDtoEX3bl uut (.BCD(BCD), .EX3(EX3));
   initial begin
	    $dumpfile("BCDtoEX3bl.vcd");
        $dumpvars(0,BCDtoEX3bltb);
   $monitor("Time=%0t | BCD=%b | EX3=%b", $time, BCD, EX3);
	BCD = 4'b0000; #10;
        BCD = 4'b1001; #10;
       BCD=4'b1111;#10;	

        $finish;
    end
endmodule


