vlog -work work D:/CS305_Flappybird/simulation/modelsim/lsfr.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LSFR_vlg_vec_tst
onerror {resume}
add wave {LSFR_vlg_vec_tst/i1/clk}
add wave {LSFR_vlg_vec_tst/i1/q}
add wave {LSFR_vlg_vec_tst/i1/q[6]}
add wave {LSFR_vlg_vec_tst/i1/q[5]}
add wave {LSFR_vlg_vec_tst/i1/q[4]}
add wave {LSFR_vlg_vec_tst/i1/q[3]}
add wave {LSFR_vlg_vec_tst/i1/q[2]}
add wave {LSFR_vlg_vec_tst/i1/q[1]}
add wave {LSFR_vlg_vec_tst/i1/q[0]}
run -all
