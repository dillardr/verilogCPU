vlib work
vlog CPU.v testbenchCPU.v
vsim work.adder_tb
add wave a
add wave b
add wave dout
add wave clk
add wave sclrn
run 1000