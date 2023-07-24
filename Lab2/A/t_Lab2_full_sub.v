module  t_Lab2_full_sub();
    wire diff, bout;
    reg a, b, bin;
    Lab2_full_sub M1(a, b, bin, diff, bout);

    initial #160 $finish;

    initial begin
        a=0; b=0; bin=0;
        #20 a=0; b=0; bin=1;
        #20 a=0; b=1; bin=0;
        #20 a=0; b=1; bin=1;
        #20 a=1; b=0; bin=0;
        #20 a=1; b=0; bin=1;
        #20 a=1; b=1; bin=0;
        #20 a=1; b=1; bin=1;
        
    end

    initial begin
		$dumpfile("t_Lab2_full_sub.vcd");
		$dumpvars;
	end

endmodule