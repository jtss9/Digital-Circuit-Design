module t_Lab1();
    wire F;
    reg  [3:0] T;

    Lab1_gatelevel L1(F, T[3], T[2], T[1], T[0]);
    Lab1_dataflow L2(F, T[3], T[2], T[1], T[0]);
    Lab1_gatelevel_UDP L3(F, T[3], T[2], T[1], T[0]);

    initial begin
        T = 4'b0000;
        repeat(15)  #10 T = T + 1'b1;
    end

    initial begin
		$dumpfile("t_Lab1.vcd");
		$dumpvars;
	end

endmodule
