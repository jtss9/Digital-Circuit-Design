module Lab2_4_bit_BLS_behavioral (input [3:0] A, B, input bin, output reg [3:0] D, output reg bout);
    reg [0:3] p, g;
    reg b0, b1, b2;
    always @(*) 
        begin
            g[0] = !A[0] && B[0];
            g[1] = !A[1] && B[1];
            g[2] = !A[2] && B[2];
            g[3] = !A[3] && B[3];
            p[0] = !A[0] || B[0];
            p[1] = !A[1] || B[1];
            p[2] = !A[2] || B[2];
            p[3] = !A[3] || B[3];
            b0 = g[0] || (p[0] && bin);
            b1 = g[1] || (p[1] && b0);
            b2 = g[2] || (p[2] && b1);
            bout = g[3] || (p[3] && b2);
            D[0] = A[0] ^ B[0] ^ bin;
            D[1] = A[1] ^ B[1] ^ b0;
            D[2] = A[2] ^ B[2] ^ b1;
            D[3] = A[3] ^ B[3] ^ b2;
        end
endmodule