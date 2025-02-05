onerror {quit -f}
vlib work
vlog -work work prj.vo
vlog -work work prj.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.prj_vlg_vec_tst
vcd file -direction prj.msim.vcd
vcd add -internal prj_vlg_vec_tst/*
vcd add -internal prj_vlg_vec_tst/i1/*
add wave /*
run -all
