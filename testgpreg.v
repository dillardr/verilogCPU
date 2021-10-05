

module gpreg_tb();

//Inputs
reg [4:0] rA, rB;
reg clk;
reg reset;
reg we;
reg [7:0] data_in;

//outputs
wire [7:0] outA, outB;

gpreg gpreg_test(
    rA, rB,
    data_in,
    clk, reset, we,
    outA, outB

);

initial begin
    
    rA = 5'b0;
    rB = 5'b0;
    data_in = 8'b0;
    we = 1'b0;
    clk = 1'b0;
    reset= 1'b1;
    #100;
    reset = 1'b0;



end

always 
    begin
        clk = ~clk;
        #20;
    end


endmodule
