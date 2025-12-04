`timescale 1ns/1ps
module demux1x4bltb;
	wire [3:0]y;
	reg D;
	reg[1:0]s;
demux1x4bl uut(.y(y),.s(s),.D(D));
	initial begin
		$dumpfile("demux1x4bl.vcd");
		$dumpvars(0,demux1x4bltb);
	$monitor("Time=%t|S=%b|y=%b|D=%b",$time,s,y,D);
	 D=1;s =2'b00; #10;
         D=1;s= 2'b01; #10;
         D=1;s = 2'b10; #10;
         D=1;s=2'b11;#10; 
        $finish;
    end
endmodule


