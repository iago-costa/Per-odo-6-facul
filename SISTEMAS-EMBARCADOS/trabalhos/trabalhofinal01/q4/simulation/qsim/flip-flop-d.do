onerror {exit -code 1}
vlib work
vlog -work work q4-quartus.vo
vlog -work work Waveform-mix.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dff_logic_mix_vlg_vec_tst -voptargs="+acc"
vcd file -direction flip-flop-d.msim.vcd
vcd add -internal dff_logic_mix_vlg_vec_tst/*
vcd add -internal dff_logic_mix_vlg_vec_tst/i1/*
run -all
quit -f
