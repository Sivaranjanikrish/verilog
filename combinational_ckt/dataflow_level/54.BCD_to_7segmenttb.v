`timescale 1ns/1ps
module BCDto7segdftb;
	wire[6:0]seg;
	reg[3:0]bcd;
BCDto7segdf uut(.bcd(bcd),.seg(seg));
	initial begin
		  $dumpfile("BCDto7segdf.vcd");
        $dumpvars(0,BCDto7segdftb);
	$monitor("Time=%t|BCD=%b|7SEGMENTDISPLAY=%b",$time,bcd,seg);
	bcd = 4'b0000; #10;
        bcd = 4'b0001; #10;
        bcd = 4'b0010; #10;
        bcd = 4'b0011; #10;
        bcd = 4'b0100; #10;
        bcd = 4'b0101; #10;
        bcd = 4'b0110; #10;
        bcd = 4'b0111; #10;
        bcd = 4'b1000; #10;
        bcd = 4'b1001; #10;
	$finish;
end
endmodule
