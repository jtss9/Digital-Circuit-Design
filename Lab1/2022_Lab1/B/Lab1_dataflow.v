module Lab1_dataflow(F, A, B, C, D);
    input   A, B, C, D;
    output  F;
    wire [0:5] w;

    assign w[0] = A || !B;
    assign w[1] = w[0] && C;
    assign w[2] = B && C;
    assign w[3] = w[2] || !D;
    assign w[4] = w[3] && A;
    assign F = w[1] || w[4];

endmodule