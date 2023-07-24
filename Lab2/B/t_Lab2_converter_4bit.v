module t_Lab2_converter_4bit();
    reg [3:0] E;
    wire [3:0] B;
    wire v;

    Lab2_converter_4bit_gatelevel g(E, B, v);
    Lab2_converter_4bit_dataflow d(E, B, v);
    Lab2_converter_4bit_behavioral b(E, B, v);

    initial #160 $finish;
    initial begin
        E = 4'b0000;
        repeat(15) #10 E = E + 1'b1;
    end
    
    initial begin
		$dumpfile("t_Lab2_converter_4bit.vcd");
		$dumpvars;
	end

endmodule