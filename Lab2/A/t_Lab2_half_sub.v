module t_Lab2_half_sub();
    wire diff, bout;
    reg a, b;
    Lab2_half_sub_gatelevel M1(a, b, diff, bout);
    
    initial #80 $finish;

    initial begin
        a=0; b=0;
        #20 a=0; b=1; 
        #20 a=1; b=0; 
        #20 a=1; b=1; 
    end

    initial begin
		$dumpfile("t_Lab2_half_sub.vcd");
		$dumpvars;
	end

endmodule