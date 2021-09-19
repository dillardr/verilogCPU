

module adder_tb();

//Toggle clock
reg clk;
initial begin
	clk = 0;
	forever #80 clk = ~clk;
end


reg sclrn;
initial begin
	sclrn = 0;
	#350 sclrn = 1;
end 

reg[7:0] a, b;
wire[15:0] dout;

reg[7:0] temp_a, temp_b;
initial begin
	temp_a = 2;
	temp_b = 2;
end

initial begin 
	temp_a = #100 8'd4;
	a = #200 temp_a;
end

initial begin
	temp_b <= #100 8'd4;
	b <= #200 temp_b;
end

adder DUT (.ina(a), .inb(b), .clk(clk),.sclrn(sclrn), .out(dout));

endmodule
