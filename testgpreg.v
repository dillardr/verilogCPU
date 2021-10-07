

module tb_gpreg;

//Inputs
reg [4:0] rA, rB;
reg clk;
reg reset;
reg we;
reg [7:0] data_in;

//outputs
wire [7:0] outA, outB;


integer i;

gpreg gpreg_test(
    rA, rB,
    data_in,
    clk, reset, we,
    outA, outB
);



initial 
begin  
    
    rA = 5'b0;
    rB = 5'b0;
    data_in = 8'h0;
    we = 1'b0;
    clk = 1'b0;
    reset= 1'b1;
    #100;
    reset = 1'b0;

    for(i = 0; i < 32; i = i +1)
    begin
            #40;
            we = 1'b1;
            data_in = data_in + 8'h02;
            #20;
            we = 1'b0;
            #60;
            if(outA == outB)
                $display("Register %d reads from both a and B", rA);
            else
                $display("Register doesn't read same from both");
            #20;
            rA = rA + 1'b1;
            rB = rB + 1'b1;
            
    end

        #40;
        data_in = 8'h1;
        #40;
end

always 
begin
        clk = ~clk;
        #20;
end


endmodule
