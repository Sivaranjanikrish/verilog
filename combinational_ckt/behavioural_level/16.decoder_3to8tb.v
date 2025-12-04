`timescale 1ns/1ps
module decod3to8bltb;
	reg [2:0] A;
    	reg EN;
    	wire [7:0] Y;
decod3to8bl uut (.A(A), .EN(EN), .Y(Y));
	initial begin
	$dumpfile("decod3to8bl.vcd");
	$dumpvars(0,decod3to8bltb);
        $monitor("Time=%0t | EN=%b | A=%b | Y=%b", $time, EN, A, Y);
	EN = 1; A = 3'b000;#10;
        EN = 1; A = 3'b001;#10;
        EN = 1; A = 3'b010;#10;
        EN = 1; A = 3'b011;#10;
        EN = 1; A = 3'b100;#10;
        EN = 1; A = 3'b101;#10;
        EN = 1; A = 3'b110;#10;
        EN = 1; A = 3'b111;#10;
        $finish;
    end
endmodule
