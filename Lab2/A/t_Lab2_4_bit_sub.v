module t_Lab2_4_bit_sub();
    reg [3:0] A, B;
    reg bin;
    wire [3:0] D, D_g, D_d, D_b;
    wire bout, bout_g, bout_d, bout_b;

    //Lab2_4_bit_RBS RBS(A, B, bin, D, bout);
    Lab2_4_bit_BLS_gatelevel BLS_gatelevel(A, B, bin, D_g, bout_g);
    Lab2_4_bit_BLS_dataflow BLS_dataflow(A, B, bin, D_d, bout_d);
    Lab2_4_bit_BLS_behavioral BLS_behavioral(A, B, bin, D_b, bout_b);

    initial #400 $finish;
    initial begin
        A = 4'b0000; B = 4'b1100; bin = 1;
        #50 A = 4'b0001; B = 4'b0010; bin = 1;
        #50 A = 4'b0011; B = 4'b0110; bin = 1;
        #50 A = 4'b0101; B = 4'b1011; bin = 0;
        #50 A = 4'b0111; B = 4'b1010; bin = 1;
        #50 A = 4'b1000; B = 4'b0001; bin = 0;
        #50 A = 4'b1011; B = 4'b0110; bin = 0;
        #50 A = 4'b1111; B = 4'b1111; bin = 1;
    end

    initial begin
		$dumpfile("t_Lab2_4_bit_BLS.vcd");
		$dumpvars;
	end
endmodule