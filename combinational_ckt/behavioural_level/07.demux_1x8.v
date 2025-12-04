module demux1x8bl(y,D,s);
	output reg[7:0]y;
	input D;
	input[2:0]s;
always@(*)begin
	case(s)
	3'b000:y={7'b0000000,D};
	3'b001:y={6'b000000,D,1'b0};
	3'b010:y={5'b00000,D,2'b00};
	3'b011:y={4'b0000,D,3'b000};
	3'b100:y={3'b000,D,4'b0000};
	3'b101:y={2'b00,D,5'b00000};
	3'b110:y={1'b0,D,6'b000000};
	3'b111:y={D,7'b000000};
	endcase
end
endmodule
