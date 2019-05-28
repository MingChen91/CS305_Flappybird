onerror {quit -f}
vlib work
vlog -work work CS305_GP11.vo
vlog -work work CS305_GP11.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LSFR_vlg_vec_tst
vcd file -direction CS305_GP11.msim.vcd
vcd add -internal LSFR_vlg_vec_tst/*
vcd add -internal LSFR_vlg_vec_tst/i1/*
add wave /*
run -all
