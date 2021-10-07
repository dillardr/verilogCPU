`include "parameter.v"


//`timescale 1ns / 1ps  

module tb_instreg;

//Inputs
    reg reset;
    reg clk;
    reg [`col-1:0] data_in;

//Outputs
    wire [`col-1:0] data_out;

    integer i; 
    instreg test_unit(
        reset, clk,
        data_in,
        data_out
    );

    always
    begin
        clk = 1'b1;
        #20;
        clk = 1'b0;
        #20;    
    end


    initial 
    begin
        #40;
        reset = 1'b1;
        #10;
        reset = 1'b0;

        data_in = 16'h10;

        for(i = 0; i < 10; i=i+1)
        begin
            #40;
            if (data_out%16 != data_in%16)
                $display("Test failed to pass through value");
            else
                $display("Test passed data_out = %h, and data_in = %h", data_out, data_in);
            data_in = data_in + 16'h10;

        end 

        #100;
        data_in = 16'h01;
        #40;



    end


endmodule 