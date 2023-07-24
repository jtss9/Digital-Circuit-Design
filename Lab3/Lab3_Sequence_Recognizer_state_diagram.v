module Lab3_Sequence_Recognizer_state_diagram (input x, clock, reset, output z);
    reg[2:0] state, next_state;
    parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100, s5 = 3'b101, s6 = 3'b110;

    always @(posedge clock, negedge reset)
        if(reset == 0) state <= s0;
        else state <= next_state;
    
    always @(state, x)
        case(state)
            s0: if(x) next_state = s4; else next_state = s1;
            s1: if(x) next_state = s2; else next_state = s1;
            s2: if(x) next_state = s4; else next_state = s3;
            s3: if(x) next_state = s2; else next_state = s6;
            s4: if(x) next_state = s4; else next_state = s5;
            s5: if(x) next_state = s2; else next_state = s6;
            s6: if(x) next_state = s6; else next_state = s6;
        endcase
    
    assign z = (state==s2) && (x==0);
endmodule