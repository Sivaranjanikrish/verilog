`timescale 1ns/1ps
module mintermdftb;
	reg A, B, C;
    	wire F;
mintermdf uut(.A(A), .B(B), .C(C), .F(F));
	initial begin
		$dumpfile("mintermdf.vcd");
        $dumpvars(0,mintermdftb);
        $monitor("T=%0t | A=%b B=%b C=%b | F=%b",$time,A,B,C,F);

        {A,B,C} = 3'b000; #10;
        {A,B,C} = 3'b001; #10;
        {A,B,C} = 3'b010; #10;
        {A,B,C} = 3'b011; #10;
        {A,B,C} = 3'b100; #10;
        {A,B,C} = 3'b101; #10;
        {A,B,C} = 3'b110; #10;
        {A,B,C} = 3'b111; #10;
        $finish;
    end
endmodule

