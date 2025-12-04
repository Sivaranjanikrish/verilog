module magc1bitbl(A,B,AEB,AGB,ALB);
    output reg AGB,AEB,ALB;
    input A,B;
    always @(*) begin
        if (A > B) begin
            AGB = 1;
            AEB   = 0;
            ALB = 0;
        end
        else if (A == B) begin
            AGB = 0;
            AEB   = 1;
            ALB = 0;
        end
        else begin
            AGB = 0;
            AEB   = 0;
            ALB = 1;
        end
    end

endmodule
