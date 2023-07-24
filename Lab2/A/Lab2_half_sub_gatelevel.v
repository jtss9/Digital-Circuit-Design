module Lab2_half_sub_gatelevel(input a, b, output diff, bout);
    xor #(4) g1(diff, a, b);
    wire a_not;
    not  g2(a_not, a);
    and #(2) g3(bout, a_not, b);
endmodule