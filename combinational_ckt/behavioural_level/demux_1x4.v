module demux1x4bl(y,D,s);
	output reg[3:0]y;
	input D;
	input[1:0]s;
always@(*)begin
	case(s)
	2'b00:y={3'b0,D};
	2'b01:y={2'b0,D,1'b0};
	2'b10:y={1'b0,D,2'b0};
	2'b11:y={D,3'b0};
	endcase
end
endmodule
