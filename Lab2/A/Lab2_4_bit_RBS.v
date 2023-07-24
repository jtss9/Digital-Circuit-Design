module Lab2_4_bit_RBS (input [3:0] A, B, input bin, output [3:0] D, output bout);
    wire bin1, bin2, bin3;
    Lab2_full_sub FS1(A[0], B[0], bin, D[0], bin1);
    Lab2_full_sub FS2(A[1], B[1], bin1, D[1], bin2);
    Lab2_full_sub FS3(A[2], B[2], bin2, D[2], bin3);
    Lab2_full_sub FS4(A[3], B[3], bin3, D[3], bout);
endmodule