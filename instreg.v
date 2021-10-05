`include "parameter.v"


module instreg(
    input reset, clk,
    input [`col-1:0] inst_in,
    output reg[`col-1:0] inst_out
    );

    always @(posedge clk or posedge reset)
        begin
            if (reset)
                inst_out = 0;
            else
                inst_out = inst_in;
        end


endmodule