transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/Risc.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/ROM.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/SumadorRestador16Bits.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/Sumador1Bit.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/nand_op.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/Multi16Sin.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/Multi16Con.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/ALU.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/RegParPar16.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/BancoReg.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/Mux4a16.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/Mux4a3.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/RAM.vhd}
vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/Mux2a16.vhd}

vcom -93 -work work {C:/Users/oleob/OneDrive - Universidad Pontificia Comillas/ICAI_2GITT/Sistemas_Digitales_2/ICAI-RiSC-16-Perifericos/simulation/modelsim/Risc.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Risc_vhd_tst

add wave *
view structure
view signals
run -all
