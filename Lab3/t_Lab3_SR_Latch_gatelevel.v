module t_Lab3_SR_Latch_gatelevel();
    reg S, R;
    wire Q, Qb;
    Lab3_SR_Latch_gatelevel SR(S, R, Q, Qb);

    initial #250 $finish;
    initial begin
        S = 0; R = 1;
        #30 S = 1; R = 0;
        #30 S = 0; R = 0;
        #30 S = 1; R = 0;
        #30 S = 1; R = 1;
        #50 S = 0; R = 0;
        #30 S = 0; R = 1;
    end

    initial begin
        $dumpfile("t_Lab3_SR_Latch_gatelevel.vcd");
        $dumpvars;
    end
endmodule
