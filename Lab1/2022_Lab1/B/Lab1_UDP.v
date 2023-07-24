module Lab1_UDP(input x,y,z, output m);
    wire w;
    or   G1(w, x, y);
    and  G2(m, w, z);
endmodule