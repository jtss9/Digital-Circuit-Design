module Lab1_gatelevel(F, A, B, C, D);
    output F;
    input A, B, C, D;
    wire B_not, D_not, w0, w1, w2, w3, w4;
    not nb(B_not, B);
    not nd(D_not, D);
    or G1(w0, A, B_not);
    and G2(w1, w0, C);
    and G3(w2, B, C);
    or G4(w3, w2, D_not);
    and G5(w4, w3, A);
    or G6(F, w1, w4);
endmodule


