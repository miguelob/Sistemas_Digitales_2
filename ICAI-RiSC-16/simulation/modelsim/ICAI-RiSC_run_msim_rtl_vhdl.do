transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/ROM.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/SumadorRestador16Bits.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/Sumador1Bit.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/nand_op.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/Multi16Sin.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/Multi16Con.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/ALU.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/Risk.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/RegParPar16.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/BancoReg.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/Mux4a16.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/Mux4a3.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/RAM.vhd}

vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16/simulation/modelsim/Risk.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Risk_vhd_tst

add wave *
view structure
view signals
run -all
