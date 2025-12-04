module mux4x1bl(y,I,s);
	output reg y;
	input[1:0]s;
	input[3:0]I;
	always@(*)
	begin
		case(s)
	2'b00:y=I[0];
	2'b01:y=I[1];
	2'b10:y=I[2];
	2'b11:y=I[3];
		endcase
	end
	endmodule
