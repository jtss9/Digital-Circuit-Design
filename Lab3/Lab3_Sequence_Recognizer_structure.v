module Lab3_Sequence_Recognizer_structure (input x, clock, reset, output z);
    wire DA, DB, DC;
    wire A, B, C;
    assign DA = (~C & x) | (A & ~x) | (B & C & ~x);
    assign DB = (A & B) | (B & ~x) | (C & x) | (A & C);
    assign DC = (~A & ~B & ~x) | (~A & ~C & ~x) | (~B & ~C & ~x);
    assign z = ~A & B & ~C & ~x;

    D_ff_AR FFA(DA, clock, reset, A);
    D_ff_AR FFB(DB, clock, reset, B);
    D_ff_AR FFC(DC, clock, reset, C);

endmodule