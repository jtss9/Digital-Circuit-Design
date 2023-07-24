module Lab2_4_bit_BLS_gatelevel (input [3:0] A, B, input bin, output [3:0] D, output
bout);
    wire w0, w1, w2, w3;
    not a0_not(w0, A[0]), a1_not(w1, A[1]), a2_not(w2, A[2]), a3_not(w3, A[3]);
    wire p0, g0, p1, g1, p2, g2, p3, g3;
    and #(2) G0(g0, w0, B[0]),
             G1(g1, w1, B[1]),
             G2(g2, w2, B[2]),
             G3(g3, w3, B[3]);
    or  #(2) P0(p0, w0, B[0]),
             P1(p1, w1, B[1]),
             P2(p2, w2, B[2]),
             P3(p3, w3, B[3]);

    wire t0, t1, t2, t3;
    wire b0, b1, b2;        // borrow out
    xor #(4) x0(t0, A[0], B[0]), x1(t1, A[1], B[1]), x2(t2, A[2], B[2]), x3(t3, A[3], B[3]);
    xor #(4) d0(D[0], t0, bin), d1(D[1], t1, b0), d2(D[2], t2, b1), d3(D[3], t3, b2);

    wire t4, t5, t6, t7;
    and #(2) pb0(t4, p0, bin), pb1(t5, p1, b0), pb2(t6, p2, b1), pb3(t7, p3, b2);
    or #(2) B0(b0, g0, t4), B1(b1, g1, t5), B2(b2, g2, t6), B3(bout, g3, t7);
endmodule