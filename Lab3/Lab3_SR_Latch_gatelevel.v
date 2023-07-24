module Lab3_SR_Latch_gatelevel (input S, R, output Q, Qb);
    nor #(10) g1(Q, R, Qb);
    nor #(10) g2(Qb, Q, S);
endmodule