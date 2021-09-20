vlib work
vlog CPU.v testbenchCPU.v
vsim work.tb_alu
add wave A 
add wave B 
add wave ALU_Sel
add wave ALU_Out
add wave CarryOut 

run 1000
