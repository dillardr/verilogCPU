vlib work
vlog instreg.v testinstreg.v
vsim work.tb_instreg
add wave reset 
add wave clk 
add wave data_in
add wave data_out
run 1000