`timescale 1ns/1ps
module demux1x8bltb;
	wire [7:0]y;
	reg D;
	reg[2:0]s;
demux1x8bl uut(.y(y),.s(s),.D(D));
	initial begin
	$monitor("Time=%t|S=%b|y=%b|D=%b",$time,s,y,D);
	 D=1;s =3'b000; #10;
         D=1;s= 3'b001; #10;
         D=1;s = 3'b010; #10;
         D=1;s = 3'b011; #10;
	 D=1;s = 3'b100; #10;
	 D=1;s = 3'b101; #10;
	 D=1;s = 3'b110; #10;
	 D=1;s = 3'b111; #10;
 $dumpfile("demux1x8bl.vcd");
        $dumpvars(0, demux1x8bltb);
        $finish;
    end
endmodule
