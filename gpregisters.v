`include "parameter.v"

//enables 32 registers

//rs = register select
//ws = write select
//wd =
//rd = register d
//we =

module gpreg(
    input[4:0] rA, rB,
    input[7:0] data_in,
    input clk, reset, we,
    output reg [7:0] outA, outB
);

reg [7:0] regfile[0:31];
integer i;

always @(posedge clk or posedge reset)
    begin
        if(reset == 1)
            begin
                for(i = 0; i < 32; i= i+1)
                    begin
                        regfile[i] = 8'b0;
                    end    
                outA = 8'bx;
                outB = 8'bx;
            end
        else if(reset == 0)
            begin
                if(we == 1)
                    begin
                        regfile [rA] = data_in;
                    end
                else if(we == 0)
                    begin
                        outA = regfile[rA];
                        outB = regfile[rB];
                    end
                else;
            end
        else;
    end

endmodule