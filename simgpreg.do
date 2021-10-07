vlib work
vlog gpregisters.v testgpreg.v 
vsim work.tb_gpreg
add wave reset
add wave clk
add wave we
add wave rA
add wave rB
add wave data_in
add wave outA
add wave outB
run 5000