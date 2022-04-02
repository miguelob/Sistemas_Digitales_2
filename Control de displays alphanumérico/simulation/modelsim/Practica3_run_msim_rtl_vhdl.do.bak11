transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/TemporizadorC.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/RegParPar.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/DetectorFlanco.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/AsciiA16Seg.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/ControlReg.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/MuxReg.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/ControlMux.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/Demux.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/Top.vhd}

vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/pract3/simulation/modelsim/Top.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Top_vhd_tst

add wave *
view structure
view signals
run -all
