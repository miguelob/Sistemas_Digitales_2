transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Practica3_fast.vho}

vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/simulation/modelsim/Top.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Practica3_vhd_fast.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Top_vhd_tst

add wave *
view structure
view signals
run -all
