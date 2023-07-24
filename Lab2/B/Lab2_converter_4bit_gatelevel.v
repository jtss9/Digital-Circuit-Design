module Lab2_converter_4bit_gatelevel (input [3:0] E, output [3:0] B, output v);
    wire e3e2, e3e1, e3e1e0;
    and a1(e3e2, E[3], E[2]), a2(e3e1, E[3], E[1]), a3(e3e1e0, e3e1, E[0]);
    or b3(B[3], e3e2, e3e1e0);

    wire e1e0;
    and a4(e1e0, E[1], E[0]);
    xnor b2(B[2], E[2], e1e0);

    xor b1(B[1], E[1], E[0]);

    not b0(B[0], E[0]);

    wire w1, w2;
    xor v1(w1, E[3], E[2]), v2(w2, E[3], e1e0);
    or v_gate(v, w1, w2);

endmodule