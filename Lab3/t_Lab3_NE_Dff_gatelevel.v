module t_Lab3_NE_Dff_gatelevel();
    reg D, clock;
    wire Q, Qb;

    Lab3_NE_Dff_gatelevel NE_DFF(D, clock, Q, Qb);
    initial #320 $finish;
    initial begin clock = 0; forever #20 clock = ~clock; end
    initial fork
        D = 0;
        #55 D = 1;
        #97 D = 0;
        #137 D = 1;
        #165 D = 0;
        #195 D = 1;
        #255 D = 0;
    join
    initial begin
        $dumpfile("t_Lab3_NE_Dff_gatelevel.vcd");
        $dumpvars;
    end

endmodule