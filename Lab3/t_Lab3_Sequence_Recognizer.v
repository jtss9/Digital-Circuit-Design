module t_Lab3_Sequence_Recognizer();
    reg x, clock, reset;
    wire z1, z2;

    Lab3_Sequence_Recognizer_state_diagram m1(x, clock, reset, z1);
    Lab3_Sequence_Recognizer_structure m2(x, clock, reset, z2);

    initial #200 $finish;
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial fork
        reset = 0;
        #2 reset = 1;
        #87 reset = 0;
        #89 reset = 1;
        x = 1;
        #10 x = 0;
        #20 x = 1;
        #30 x = 0;          // output 1
        #40 x = 1;
        #50 x = 0;          // output 1
        #60 x = 0;          
        #70 x = 1;
        #80 x = 0;          // output 0
        #86 x = 1;
        #100 x = 0;
        #110 x = 1;
        #120 x = 0;         // output 1
        #130 x = 1;
        #140 x = 1;
        #150 x = 1;
    join

    initial begin
        $dumpfile("t_Lab3_Sequence_Recognizer.vcd");
        $dumpvars;
    end
endmodule


