transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/practica2.v5/Pract2/TemporizadorC.vhd}
vcom -93 -work work {C:/practica2.v5/Pract2/RS232.vhd}
vcom -93 -work work {C:/practica2.v5/Pract2/RegParSer.vhd}
vcom -93 -work work {C:/practica2.v5/Pract2/Paridad.vhd}
vcom -93 -work work {C:/practica2.v5/Pract2/Mux.vhd}
vcom -93 -work work {C:/practica2.v5/Pract2/Control.vhd}
vcom -93 -work work {C:/practica2.v5/Pract2/DetectorFlanco.vhd}

vcom -93 -work work {C:/practica2.v5/Pract2/simulation/modelsim/RegParSer.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  RegParSer_vhd_tst

add wave *
view structure
view signals
run -all
