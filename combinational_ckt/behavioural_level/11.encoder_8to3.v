module encod8to3bl (D,Y);
    input [7:0] D;       
   output reg [2:0] Y ;  

    always @(*) begin
        if (D[7] == 1)
            Y = 3'b111;
        else if (D[6] == 1)
            Y = 3'b110;
        else if (D[5] == 1)
            Y = 3'b101;
        else if (D[4] == 1)
            Y = 3'b100;
        else if (D[3] == 1)
            Y = 3'b011;
        else if (D[2] == 1)
            Y = 3'b010;
        else if (D[1] == 1)
            Y = 3'b001;
        else if (D[0] == 1)
            Y = 3'b000;
        else
            Y = 3'bxxx; 
    end
endmodule

