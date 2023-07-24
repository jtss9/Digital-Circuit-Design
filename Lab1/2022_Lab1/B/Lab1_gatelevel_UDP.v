module Lab1_gatelevel_UDP(F, A, B, C, D);
    input A, B, C, D;
    output F;
    wire B_not, D_not, w0, w1, w2;
    not nb(B_not, B), nd(D_not, D);

    Lab1_UDP UDP1(A, B_not, C, w0);
    and G1(w1, B, C);
    Lab1_UDP UDP2(w1, D_not, A, w2);
    or G2(F, w0, w2);
endmodule