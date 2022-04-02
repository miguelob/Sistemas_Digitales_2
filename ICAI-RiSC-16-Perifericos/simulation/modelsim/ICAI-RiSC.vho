-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/23/2019 13:34:02"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Risc IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	switches : IN std_logic_vector(9 DOWNTO 0);
	display : OUT std_logic_vector(15 DOWNTO 0)
	);
END Risc;

-- Design Ports Information
-- display[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[8]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[9]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[10]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[11]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[12]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[13]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[14]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[15]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Risc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_switches : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \i_PC|registro[8]~2_combout\ : std_logic;
SIGNAL \i_PC|registro[6]~0_combout\ : std_logic;
SIGNAL \i_RAM|dout[2]~2_combout\ : std_logic;
SIGNAL \i_RAM|dout[3]~3_combout\ : std_logic;
SIGNAL \i_RAM|dout[7]~7_combout\ : std_logic;
SIGNAL \i_RAM|dout[11]~11_combout\ : std_logic;
SIGNAL \i_RAM|dout[13]~13_combout\ : std_logic;
SIGNAL \i_RAM|dout[14]~14_combout\ : std_logic;
SIGNAL \i_RAM|dout[15]~15_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux25~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux15~2_combout\ : std_logic;
SIGNAL \i_Mux_IR|Mux1~0_combout\ : std_logic;
SIGNAL \i_Mux_IR|Mux2~0_combout\ : std_logic;
SIGNAL \op_ALU[2]~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux16~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux19~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux14~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux11~0_combout\ : std_logic;
SIGNAL \i_Mux_Peri|Selector4~0_combout\ : std_logic;
SIGNAL \i_Mux_Peri|Selector2~0_combout\ : std_logic;
SIGNAL \i_Mux_Peri|Selector1~0_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~41_combout\ : std_logic;
SIGNAL \i_ALU|Mux15~1_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~1_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~2_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~1_combout\ : std_logic;
SIGNAL \en_PC~2_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \en_PC~3_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux14~0_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux13~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux12~0_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux11~0_combout\ : std_logic;
SIGNAL \i_ALU|i4|res~3_combout\ : std_logic;
SIGNAL \i_ALU|Mux5~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux9~1_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~25_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~26_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~27_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~31_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~34_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~35_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~37_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~38_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~39_regout\ : std_logic;
SIGNAL \en_PC~9_combout\ : std_logic;
SIGNAL \i_ALU|Equal0~9_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~26feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~27feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~34feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~35feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~37feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~39feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r7|registro[1]~feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r6|registro[3]~feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r4|registro[8]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r2|registro[10]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r3|registro[13]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r6|registro[13]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r6|registro[15]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \estado_act.RESET~feeder_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \estado_act.RESET~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \estado_act.JALR3~regout\ : std_logic;
SIGNAL \SelPC[1]~0_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \i_IR|registro[12]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux23~0_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado_act.LUI3~regout\ : std_logic;
SIGNAL \SelBanco[0]~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux15~1_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux10~0_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \i_BancoReg|Mux36~0_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i_IR|registro[7]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux36~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado_act.ADDI3~regout\ : std_logic;
SIGNAL \estado_act.ADDI4~regout\ : std_logic;
SIGNAL \estado_act.ARIT4~regout\ : std_logic;
SIGNAL \WideOr12~combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \i_Mux_IR|Mux2~1_combout\ : std_logic;
SIGNAL \i_Mux_IR|Mux1~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux1~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux7~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux6~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux4~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux34~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux34~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux34~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux34~combout\ : std_logic;
SIGNAL \i_RAM|ram_block~29feeder_combout\ : std_logic;
SIGNAL \WideOr10~combout\ : std_logic;
SIGNAL \i_RAM|ram_block~44_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \estado_act.SW4~regout\ : std_logic;
SIGNAL \wrRamPeri~combout\ : std_logic;
SIGNAL \i_RAM|ram_block~45_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~29_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~23feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~23_regout\ : std_logic;
SIGNAL \i_RAM|dout[5]~5_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \WideOr10~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux36~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux5~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux38~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux38~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux38~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux38~combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux13~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux13~combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r2|registro[2]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux2~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux37~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux37~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux37~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux37~combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux12~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux12~combout\ : std_logic;
SIGNAL \i_BancoReg|Mux36~3_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux36~4_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r1|registro[3]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux36~5_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux36~combout\ : std_logic;
SIGNAL \i_RAM|ram_block~28feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~28_regout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r7|registro[6]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r4|registro[6]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux33~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux33~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux33~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux33~combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux8~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux8~1_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux8~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r2|registro[7]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r5|registro[7]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux32~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux32~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux32~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux32~combout\ : std_logic;
SIGNAL \i_ALU|Mux6~4_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \i_IR|registro[11]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux23~2_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \i_BancoReg|Mux21~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux21~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux21~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux21~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux13~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux19~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux19~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux19~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux11~0_combout\ : std_logic;
SIGNAL \i_Mux_A|Mux10~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r6|registro[8]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux15~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r5|registro[8]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux15~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux15~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux15~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux7~0_combout\ : std_logic;
SIGNAL \SelBanco[1]~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r3|registro[12]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux27~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux27~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux27~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux27~combout\ : std_logic;
SIGNAL \i_RAM|ram_block~36feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~36_regout\ : std_logic;
SIGNAL \i_RAM|ram_block~33_regout\ : std_logic;
SIGNAL \i_RAM|dout[9]~9_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux6~1_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux6~2_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux6~3_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r6|registro[9]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r7|registro[9]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r4|registro[9]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux30~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux30~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux30~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux30~combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \i_Mux_Banco|Mux4~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux4~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r3|registro[11]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r5|registro[11]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux28~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux28~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux28~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux28~combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r7|registro[13]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r5|registro[13]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux10~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux10~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux10~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux10~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux2~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux15~1_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux14~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux14~2_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux13~1_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux12~1_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux11~1_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux10~1_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux9~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux8~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux7~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux6~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux5~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux4~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux3~0_combout\ : std_logic;
SIGNAL \i_Mux_B|Mux2~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r1|registro[15]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r7|registro[15]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r4|registro[15]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux24~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux24~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux24~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux24~combout\ : std_logic;
SIGNAL \i_Mux_B|Mux0~0_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \i_ALU|Mux6~8_combout\ : std_logic;
SIGNAL \i_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado_act.BEQ3~regout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux6~2_combout\ : std_logic;
SIGNAL \i_ALU|Equal0~8_combout\ : std_logic;
SIGNAL \i_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux1~2_combout\ : std_logic;
SIGNAL \i_ALU|Mux1~3_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux1~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux1~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux25~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux25~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux25~combout\ : std_logic;
SIGNAL \i_Mux_B|Mux1~0_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \i_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux2~2_combout\ : std_logic;
SIGNAL \i_ALU|Mux2~3_combout\ : std_logic;
SIGNAL \i_PC|registro[13]~7_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux2~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux2~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux26~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux26~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux26~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux26~combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \i_RAM|dout[10]~10_combout\ : std_logic;
SIGNAL \i_Mux_Peri|Selector5~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux5~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux5~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r3|registro[10]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r1|registro[10]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux29~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux29~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux29~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux29~combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \i_RAM|dout[12]~12_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \i_Mux_Peri|Selector3~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux3~0_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:12:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_ALU|i4|res~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux3~2_combout\ : std_logic;
SIGNAL \i_PC|registro[12]~6_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux3~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r1|registro[12]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux11~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux11~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux11~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r2|registro[12]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux11~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux3~0_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \i_ALU|i4|res~2_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:11:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \i_PC|registro[11]~5_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux23~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r4|registro[11]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux12~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux12~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux12~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux12~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux4~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:10:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_ALU|Mux5~1_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \i_ALU|Mux5~2_combout\ : std_logic;
SIGNAL \i_PC|registro[10]~4_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux13~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux13~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux13~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux13~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux5~0_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \i_ALU|i4|res~4_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:9:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_ALU|Mux6~5_combout\ : std_logic;
SIGNAL \i_ALU|Mux6~6_combout\ : std_logic;
SIGNAL \i_ALU|Mux6~7_combout\ : std_logic;
SIGNAL \i_PC|registro[9]~3_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux14~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux14~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux14~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux14~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux6~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux7~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux7~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \i_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux7~0_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~32feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~32_regout\ : std_logic;
SIGNAL \i_RAM|dout[8]~8_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux7~1_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux6~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux7~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux31~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux31~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux31~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux31~combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \i_RAM|dout[4]~4_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux11~combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r2|registro[4]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux35~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux35~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux35~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux35~combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \i_RAM|dout[1]~1_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux14~combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r4|registro[1]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux22~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux22~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux22~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux22~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux14~0_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \i_ALU|Mux8~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux8~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux8~2_combout\ : std_logic;
SIGNAL \i_ALU|Mux8~3_combout\ : std_logic;
SIGNAL \i_PC|registro[7]~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r6|registro[7]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux16~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux16~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux16~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux8~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux9~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux9~2_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \i_ALU|Mux9~3_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux9~0_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~30feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~30_regout\ : std_logic;
SIGNAL \i_RAM|dout[6]~6_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux9~1_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux9~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux17~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux17~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux17~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux17~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux9~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux10~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux10~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux10~2_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \i_ALU|Mux10~3_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~42_combout\ : std_logic;
SIGNAL \i_RAM|ram_block_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~40_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~43_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux10~combout\ : std_logic;
SIGNAL \i_BancoReg|Mux18~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux18~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux18~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux18~combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux10~0_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux10~1_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \i_ALU|Mux6~3_combout\ : std_logic;
SIGNAL \i_ALU|Mux11~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux11~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux11~2_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \i_ALU|Mux11~3_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux11~1_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \i_IR|registro[6]~feeder_combout\ : std_logic;
SIGNAL \i_Mux_IR|Mux0~0_combout\ : std_logic;
SIGNAL \i_Mux_IR|Mux0~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux3~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r1|registro[0]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r6|registro[0]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r5|registro[0]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux23~3_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux23~4_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux23~5_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux23~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux15~0_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \i_ALU|Mux12~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux12~2_combout\ : std_logic;
SIGNAL \i_ALU|Mux12~3_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux12~0_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux12~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r5|registro[3]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux20~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux20~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux20~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux20~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux12~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux13~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux13~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux13~2_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \i_ALU|Mux13~3_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux13~1_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \op_ALU[3]~1_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \i_ALU|i4|res~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_ALU|Mux14~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux14~1_combout\ : std_logic;
SIGNAL \i_ALU|Mux14~2_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux14~1_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \i_ALU|Mux0~11_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:14:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \i_ALU|Mux0~10_combout\ : std_logic;
SIGNAL \i_ALU|Mux0~13_combout\ : std_logic;
SIGNAL \i_ALU|Mux0~12_combout\ : std_logic;
SIGNAL \i_ALU|Mux0~8_combout\ : std_logic;
SIGNAL \i_ALU|Mux0~9_combout\ : std_logic;
SIGNAL \i_PC|registro[15]~10_combout\ : std_logic;
SIGNAL \i_PC|registro[15]~9_combout\ : std_logic;
SIGNAL \i_PC|registro[15]~feeder_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux0~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux0~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux8~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux8~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux8~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux8~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux0~0_combout\ : std_logic;
SIGNAL \i_ALU|LessThan0~1_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~3_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~5_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~7_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~9_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~11_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~13_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~15_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~17_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~19_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~21_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~23_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~25_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~27_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~29_cout\ : std_logic;
SIGNAL \i_ALU|LessThan0~30_combout\ : std_logic;
SIGNAL \i_ALU|i3|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \i_ALU|Mux15~0_combout\ : std_logic;
SIGNAL \i_ALU|Mux15~2_combout\ : std_logic;
SIGNAL \i_ALU|Mux15~3_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux15~0_combout\ : std_logic;
SIGNAL \i_Mux_PC|Mux15~1_combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \estado_act.DECOD~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado_act.ARIT3~regout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \estado_act.FETCH~regout\ : std_logic;
SIGNAL \i_PC|registro[14]~8_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r3|registro[14]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux9~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux9~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux9~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux9~combout\ : std_logic;
SIGNAL \i_Mux_A|Mux1~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:14:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:13:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~1_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \i_ALU|i1|GenSum:6:i_Sumador1Bit|s_i~0_combout\ : std_logic;
SIGNAL \en_PC~4_combout\ : std_logic;
SIGNAL \en_PC~5_combout\ : std_logic;
SIGNAL \en_PC~6_combout\ : std_logic;
SIGNAL \en_PC~7_combout\ : std_logic;
SIGNAL \en_PC~8_combout\ : std_logic;
SIGNAL \en_PC~combout\ : std_logic;
SIGNAL \i_ROM|memoria_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \i_IR|registro[14]~feeder_combout\ : std_logic;
SIGNAL \estado_act.LWSW3~0_combout\ : std_logic;
SIGNAL \estado_act.LWSW3~regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \estado_act.LW4~regout\ : std_logic;
SIGNAL \estado_act.LW5~regout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux15~0_combout\ : std_logic;
SIGNAL \i_RAM|ram_block~24_regout\ : std_logic;
SIGNAL \i_RAM|dout[0]~0_combout\ : std_logic;
SIGNAL \i_Mux_Banco|Mux15~combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r2|registro[0]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux39~0_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux39~1_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux39~2_combout\ : std_logic;
SIGNAL \i_BancoReg|Mux39~combout\ : std_logic;
SIGNAL \enableMuxReg~combout\ : std_logic;
SIGNAL \i_RegPeri|registro[2]~feeder_combout\ : std_logic;
SIGNAL \i_RegPeri|registro[3]~feeder_combout\ : std_logic;
SIGNAL \i_RegPeri|registro[4]~feeder_combout\ : std_logic;
SIGNAL \i_RegPeri|registro[9]~feeder_combout\ : std_logic;
SIGNAL \i_RegPeri|registro[10]~feeder_combout\ : std_logic;
SIGNAL \i_RegPeri|registro[14]~feeder_combout\ : std_logic;
SIGNAL \i_BancoReg|Registro_r1|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_BancoReg|Registro_r2|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_BancoReg|Registro_r3|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_BancoReg|Registro_r4|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_BancoReg|Registro_r6|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_BancoReg|Registro_r5|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_BancoReg|Registro_r7|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_Reg|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_RegPeri|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL SelPC : std_logic_vector(1 DOWNTO 0);
SIGNAL \i_PC|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_ALU|i1|b_i\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_RAM|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \switches~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \i_RAM|ram_block_rtl_0_bypass\ : std_logic_vector(0 TO 28);
SIGNAL \i_IR|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_estado_act.RESET~regout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_switches <= switches;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_ALU|i3|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT29\ & 
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\i_ALU|i3|Mult0|auto_generated|mac_mult1~dataout\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~3\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~2\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~1\ & \i_ALU|i3|Mult0|auto_generated|mac_mult1~0\);

\i_ALU|i3|Mult0|auto_generated|mac_out2~0\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\i_ALU|i3|Mult0|auto_generated|mac_out2~1\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\i_ALU|i3|Mult0|auto_generated|mac_out2~2\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\i_ALU|i3|Mult0|auto_generated|mac_out2~3\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\i_ALU|i3|Mult0|auto_generated|mac_out2~dataout\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\i_BancoReg|Mux24~combout\ & \i_BancoReg|Mux25~combout\ & \i_BancoReg|Mux26~combout\ & \i_BancoReg|Mux27~combout\ & \i_BancoReg|Mux28~combout\ & \i_BancoReg|Mux29~combout\ & 
\i_BancoReg|Mux30~combout\ & \i_BancoReg|Mux31~combout\ & \i_BancoReg|Mux32~combout\ & \i_BancoReg|Mux33~combout\ & \i_BancoReg|Mux34~combout\ & \i_BancoReg|Mux35~combout\ & \i_BancoReg|Mux36~combout\ & \i_BancoReg|Mux37~combout\ & 
\i_BancoReg|Mux38~combout\ & \i_BancoReg|Mux39~combout\);

\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_Reg|registro\(5) & \i_Reg|registro\(4) & \i_Reg|registro\(3) & \i_Reg|registro\(2) & \i_Reg|registro\(1) & \i_Reg|registro\(0));

\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\i_ALU|Mux10~3_combout\ & \i_ALU|Mux11~3_combout\ & \i_ALU|Mux12~3_combout\ & \i_ALU|Mux13~3_combout\ & \i_ALU|Mux14~2_combout\ & \i_ALU|Mux15~3_combout\);

\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a8\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a9\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a10\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a11\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a12\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a13\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a14\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a15\ <= \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_Mux_PC|Mux10~1_combout\ & \i_Mux_PC|Mux11~1_combout\ & \i_Mux_PC|Mux12~1_combout\ & \i_Mux_PC|Mux13~1_combout\ & \i_Mux_PC|Mux14~1_combout\ & \i_Mux_PC|Mux15~1_combout\);

\i_ROM|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a1\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a2\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a3\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a4\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a5\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a6\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a7\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a8\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a9\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a10\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a11\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a12\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a13\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a14\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a15\ <= \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\i_Mux_A|Mux0~0_combout\ & \i_Mux_A|Mux1~0_combout\ & \i_Mux_A|Mux2~0_combout\ & \i_Mux_A|Mux3~0_combout\ & \i_Mux_A|Mux4~0_combout\ & \i_Mux_A|Mux5~0_combout\ & \i_Mux_A|Mux6~0_combout\ & 
\i_Mux_A|Mux7~0_combout\ & \i_Mux_A|Mux8~0_combout\ & \i_Mux_A|Mux9~0_combout\ & \i_Mux_A|Mux10~0_combout\ & \i_Mux_A|Mux11~0_combout\ & \i_Mux_A|Mux12~0_combout\ & \i_Mux_A|Mux13~0_combout\ & \i_Mux_A|Mux14~0_combout\ & \i_Mux_A|Mux15~0_combout\ & gnd & 
gnd);

\i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\i_Mux_B|Mux0~0_combout\ & \i_Mux_B|Mux1~0_combout\ & \i_Mux_B|Mux2~0_combout\ & \i_Mux_B|Mux3~0_combout\ & \i_Mux_B|Mux4~0_combout\ & \i_Mux_B|Mux5~0_combout\ & \i_Mux_B|Mux6~0_combout\ & 
\i_Mux_B|Mux7~0_combout\ & \i_Mux_B|Mux8~0_combout\ & \i_Mux_B|Mux9~0_combout\ & \i_Mux_B|Mux10~1_combout\ & \i_Mux_B|Mux11~1_combout\ & \i_Mux_B|Mux12~1_combout\ & \i_Mux_B|Mux13~1_combout\ & \i_Mux_B|Mux14~2_combout\ & \i_Mux_B|Mux15~1_combout\ & gnd & 
gnd);

\i_ALU|i3|Mult0|auto_generated|mac_mult1~0\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~1\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~2\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~3\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~dataout\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\i_ALU|i3|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;
\ALT_INV_WideOr10~_wirecell_combout\ <= NOT \WideOr10~_wirecell_combout\;
\ALT_INV_estado_act.RESET~regout\ <= NOT \estado_act.RESET~regout\;
\ALT_INV_WideOr10~combout\ <= NOT \WideOr10~combout\;

-- Location: LCFF_X18_Y19_N13
\i_PC|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[8]~2_combout\,
	sdata => \i_BancoReg|Mux15~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(8));

-- Location: LCFF_X18_Y19_N17
\i_PC|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[6]~0_combout\,
	sdata => \i_BancoReg|Mux17~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(6));

-- Location: LCFF_X18_Y15_N17
\i_RAM|dout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[2]~2_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(15),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(2));

-- Location: LCFF_X18_Y15_N7
\i_RAM|dout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[3]~3_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(16),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(3));

-- Location: LCFF_X18_Y15_N19
\i_RAM|dout[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[7]~7_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(20),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(7));

-- Location: LCFF_X16_Y16_N21
\i_RAM|dout[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[11]~11_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(24),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(11));

-- Location: LCFF_X16_Y16_N5
\i_RAM|dout[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[13]~13_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(26),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(13));

-- Location: LCFF_X18_Y15_N1
\i_RAM|dout[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[14]~14_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(27),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(14));

-- Location: LCFF_X18_Y15_N11
\i_RAM|dout[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[15]~15_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(28),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(15));

-- Location: M4K_X17_Y17
\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:i_RAM|altsyncram:ram_block_rtl_0|altsyncram_j7i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \wrRamPeri~combout\,
	portbrewe => VCC,
	portbaddrstall => \ALT_INV_WideOr10~_wirecell_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X18_Y19_N12
\i_PC|registro[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[8]~2_combout\ = (SelPC(0) & ((\i_ALU|Mux7~3_combout\))) # (!SelPC(0) & (\i_Reg|registro\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SelPC(0),
	datab => \i_Reg|registro\(8),
	datad => \i_ALU|Mux7~3_combout\,
	combout => \i_PC|registro[8]~2_combout\);

-- Location: LCCOMB_X18_Y19_N16
\i_PC|registro[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[6]~0_combout\ = (SelPC(0) & ((\i_ALU|Mux9~3_combout\))) # (!SelPC(0) & (\i_Reg|registro\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SelPC(0),
	datab => \i_Reg|registro\(6),
	datad => \i_ALU|Mux9~3_combout\,
	combout => \i_PC|registro[6]~0_combout\);

-- Location: LCCOMB_X18_Y15_N16
\i_RAM|dout[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[2]~2_combout\ = (\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a2\))) # (!\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block~26_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block~26_regout\,
	datab => \i_RAM|ram_block~23_regout\,
	datad => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \i_RAM|dout[2]~2_combout\);

-- Location: LCCOMB_X18_Y15_N6
\i_RAM|dout[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[3]~3_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a3\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~27_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datab => \i_RAM|ram_block~27_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[3]~3_combout\);

-- Location: LCCOMB_X18_Y15_N18
\i_RAM|dout[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[7]~7_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a7\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~31_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \i_RAM|ram_block~31_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[7]~7_combout\);

-- Location: LCCOMB_X16_Y16_N20
\i_RAM|dout[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[11]~11_combout\ = (\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a11\))) # (!\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block~35_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block~23_regout\,
	datab => \i_RAM|ram_block~35_regout\,
	datad => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a11\,
	combout => \i_RAM|dout[11]~11_combout\);

-- Location: LCCOMB_X16_Y16_N4
\i_RAM|dout[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[13]~13_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a13\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~37_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block~23_regout\,
	datab => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a13\,
	datad => \i_RAM|ram_block~37_regout\,
	combout => \i_RAM|dout[13]~13_combout\);

-- Location: LCCOMB_X18_Y15_N0
\i_RAM|dout[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[14]~14_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a14\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~38_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a14\,
	datab => \i_RAM|ram_block~38_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[14]~14_combout\);

-- Location: LCCOMB_X18_Y15_N10
\i_RAM|dout[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[15]~15_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a15\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~39_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a15\,
	datab => \i_RAM|ram_block~39_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[15]~15_combout\);

-- Location: LCFF_X20_Y16_N13
\i_BancoReg|Registro_r7|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r7|registro[1]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(1));

-- Location: LCFF_X22_Y17_N5
\i_BancoReg|Registro_r4|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux13~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(2));

-- Location: LCFF_X21_Y16_N13
\i_BancoReg|Registro_r6|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r6|registro[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(3));

-- Location: LCFF_X21_Y16_N17
\i_BancoReg|Registro_r6|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux11~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(4));

-- Location: LCFF_X21_Y15_N17
\i_BancoReg|Registro_r4|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r4|registro[8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(8));

-- Location: LCFF_X23_Y17_N25
\i_BancoReg|Registro_r2|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r2|registro[10]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(10));

-- Location: LCFF_X25_Y15_N5
\i_BancoReg|Registro_r2|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(11));

-- Location: LCFF_X24_Y15_N21
\i_BancoReg|Registro_r3|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r3|registro[13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(13));

-- Location: LCFF_X23_Y15_N25
\i_BancoReg|Registro_r6|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r6|registro[13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(13));

-- Location: LCFF_X20_Y16_N21
\i_BancoReg|Registro_r4|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(14));

-- Location: LCCOMB_X20_Y16_N20
\i_BancoReg|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux25~0_combout\ = (\i_IR|registro\(7) & (((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & ((\i_IR|registro\(8) & (\i_BancoReg|Registro_r6|registro\(14))) # (!\i_IR|registro\(8) & ((\i_BancoReg|Registro_r4|registro\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(14),
	datab => \i_IR|registro\(7),
	datac => \i_BancoReg|Registro_r4|registro\(14),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux25~0_combout\);

-- Location: LCFF_X23_Y15_N11
\i_BancoReg|Registro_r6|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r6|registro[15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(15));

-- Location: LCFF_X24_Y16_N7
\i_BancoReg|Registro_r5|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux0~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(15));

-- Location: LCCOMB_X21_Y17_N24
\i_Mux_Banco|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux15~2_combout\ = (\i_Mux_Banco|Mux15~1_combout\ & (\i_PC|registro\(0) & ((!\SelBanco[0]~0_combout\)))) # (!\i_Mux_Banco|Mux15~1_combout\ & (((\i_Reg|registro\(0)) # (\SelBanco[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(0),
	datab => \i_Mux_Banco|Mux15~1_combout\,
	datac => \i_Reg|registro\(0),
	datad => \SelBanco[0]~0_combout\,
	combout => \i_Mux_Banco|Mux15~2_combout\);

-- Location: LCCOMB_X16_Y17_N20
\i_Mux_IR|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_IR|Mux1~0_combout\ = (\estado_act.LUI3~regout\ & (\i_IR|registro\(11))) # (!\estado_act.LUI3~regout\ & ((\i_IR|registro\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(11),
	datab => \i_IR|registro\(5),
	datad => \estado_act.LUI3~regout\,
	combout => \i_Mux_IR|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y17_N24
\i_Mux_IR|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_IR|Mux2~0_combout\ = (\estado_act.LUI3~regout\ & (\i_IR|registro\(10))) # (!\estado_act.LUI3~regout\ & ((\i_IR|registro\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datac => \i_IR|registro\(4),
	datad => \estado_act.LUI3~regout\,
	combout => \i_Mux_IR|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y18_N10
\op_ALU[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_ALU[2]~0_combout\ = (\i_IR|registro\(2) & \estado_act.ARIT3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_IR|registro\(2),
	datad => \estado_act.ARIT3~regout\,
	combout => \op_ALU[2]~0_combout\);

-- Location: LCCOMB_X20_Y16_N24
\i_BancoReg|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux16~0_combout\ = (\i_IR|registro\(10) & (((\i_BancoReg|Registro_r5|registro\(7)) # (\i_IR|registro\(11))))) # (!\i_IR|registro\(10) & (\i_BancoReg|Registro_r4|registro\(7) & ((!\i_IR|registro\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_BancoReg|Registro_r4|registro\(7),
	datac => \i_BancoReg|Registro_r5|registro\(7),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux16~0_combout\);

-- Location: LCCOMB_X21_Y16_N16
\i_BancoReg|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux19~0_combout\ = (\i_IR|registro\(11) & (((\i_BancoReg|Registro_r6|registro\(4)) # (\i_IR|registro\(10))))) # (!\i_IR|registro\(11) & (\i_BancoReg|Registro_r4|registro\(4) & ((!\i_IR|registro\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(11),
	datab => \i_BancoReg|Registro_r4|registro\(4),
	datac => \i_BancoReg|Registro_r6|registro\(4),
	datad => \i_IR|registro\(10),
	combout => \i_BancoReg|Mux19~0_combout\);

-- Location: LCCOMB_X21_Y17_N6
\i_Mux_Banco|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux14~0_combout\ = (\i_Mux_Banco|Mux15~1_combout\ & (((\i_PC|registro\(1) & !\SelBanco[0]~0_combout\)))) # (!\i_Mux_Banco|Mux15~1_combout\ & ((\i_Reg|registro\(1)) # ((\SelBanco[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(1),
	datab => \i_PC|registro\(1),
	datac => \i_Mux_Banco|Mux15~1_combout\,
	datad => \SelBanco[0]~0_combout\,
	combout => \i_Mux_Banco|Mux14~0_combout\);

-- Location: LCCOMB_X21_Y17_N30
\i_Mux_Banco|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux11~0_combout\ = (\SelBanco[0]~0_combout\ & (!\i_Mux_Banco|Mux15~1_combout\)) # (!\SelBanco[0]~0_combout\ & ((\i_Mux_Banco|Mux15~1_combout\ & (\i_PC|registro\(4))) # (!\i_Mux_Banco|Mux15~1_combout\ & ((\i_Reg|registro\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBanco[0]~0_combout\,
	datab => \i_Mux_Banco|Mux15~1_combout\,
	datac => \i_PC|registro\(4),
	datad => \i_Reg|registro\(4),
	combout => \i_Mux_Banco|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y16_N30
\i_Mux_Peri|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Peri|Selector4~0_combout\ = (\i_RAM|dout\(11) & !\i_Reg|registro\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RAM|dout\(11),
	datad => \i_Reg|registro\(15),
	combout => \i_Mux_Peri|Selector4~0_combout\);

-- Location: LCFF_X18_Y16_N11
\i_Reg|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux3~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(12));

-- Location: LCCOMB_X24_Y16_N6
\i_Mux_Peri|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Peri|Selector2~0_combout\ = (!\i_Reg|registro\(15) & \i_RAM|dout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(15),
	datad => \i_RAM|dout\(13),
	combout => \i_Mux_Peri|Selector2~0_combout\);

-- Location: LCFF_X18_Y16_N25
\i_Reg|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux2~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(13));

-- Location: LCCOMB_X19_Y16_N14
\i_Mux_Peri|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Peri|Selector1~0_combout\ = (!\i_Reg|registro\(15) & \i_RAM|dout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Reg|registro\(15),
	datad => \i_RAM|dout\(14),
	combout => \i_Mux_Peri|Selector1~0_combout\);

-- Location: LCFF_X23_Y19_N17
\i_RAM|ram_block_rtl_0_bypass[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Reg|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(7));

-- Location: LCFF_X23_Y19_N15
\i_RAM|ram_block_rtl_0_bypass[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(5));

-- Location: LCCOMB_X23_Y19_N16
\i_RAM|ram_block~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~41_combout\ = (\i_Reg|registro\(3) & (\i_RAM|ram_block_rtl_0_bypass\(7) & (\i_Reg|registro\(2) $ (!\i_RAM|ram_block_rtl_0_bypass\(5))))) # (!\i_Reg|registro\(3) & (!\i_RAM|ram_block_rtl_0_bypass\(7) & (\i_Reg|registro\(2) $ 
-- (!\i_RAM|ram_block_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(3),
	datab => \i_Reg|registro\(2),
	datac => \i_RAM|ram_block_rtl_0_bypass\(7),
	datad => \i_RAM|ram_block_rtl_0_bypass\(5),
	combout => \i_RAM|ram_block~41_combout\);

-- Location: LCFF_X23_Y19_N25
\i_RAM|ram_block_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(9));

-- Location: LCCOMB_X23_Y18_N16
\i_ALU|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux15~1_combout\ = (\op_ALU[2]~0_combout\ & (!\Selector14~0_combout\ & ((!\i_Mux_A|Mux15~0_combout\) # (!\i_Mux_B|Mux15~1_combout\)))) # (!\op_ALU[2]~0_combout\ & (\i_Mux_B|Mux15~1_combout\ $ (((\i_Mux_A|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[2]~0_combout\,
	datab => \i_Mux_B|Mux15~1_combout\,
	datac => \Selector14~0_combout\,
	datad => \i_Mux_A|Mux15~0_combout\,
	combout => \i_ALU|Mux15~1_combout\);

-- Location: LCCOMB_X20_Y18_N24
\i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\ = \i_BancoReg|Mux20~combout\ $ (\i_BancoReg|Mux36~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_BancoReg|Mux20~combout\,
	datad => \i_BancoReg|Mux36~combout\,
	combout => \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X20_Y18_N22
\i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~1_combout\ = (\i_BancoReg|Mux22~combout\ & (!\i_BancoReg|Mux23~combout\ & (\i_BancoReg|Mux38~combout\ & \i_BancoReg|Mux39~combout\))) # (!\i_BancoReg|Mux22~combout\ & ((\i_BancoReg|Mux38~combout\) # 
-- ((!\i_BancoReg|Mux23~combout\ & \i_BancoReg|Mux39~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~combout\,
	datab => \i_BancoReg|Mux22~combout\,
	datac => \i_BancoReg|Mux38~combout\,
	datad => \i_BancoReg|Mux39~combout\,
	combout => \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~1_combout\);

-- Location: LCCOMB_X20_Y18_N0
\i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~2_combout\ = \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\ $ (((\i_BancoReg|Mux37~combout\ & (\i_BancoReg|Mux21~combout\ & !\i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~1_combout\)) # (!\i_BancoReg|Mux37~combout\ & 
-- ((\i_BancoReg|Mux21~combout\) # (!\i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux37~combout\,
	datab => \i_BancoReg|Mux21~combout\,
	datac => \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~0_combout\,
	datad => \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~1_combout\,
	combout => \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~2_combout\);

-- Location: LCCOMB_X19_Y19_N26
\i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~1_combout\ = \i_BancoReg|Mux18~combout\ $ (\i_BancoReg|Mux34~combout\ $ (\i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_BancoReg|Mux18~combout\,
	datac => \i_BancoReg|Mux34~combout\,
	datad => \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0_combout\,
	combout => \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~1_combout\);

-- Location: LCCOMB_X20_Y19_N6
\en_PC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~2_combout\ = (\i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~2_combout\ & (\i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~1_combout\ & (\i_Mux_A|Mux15~0_combout\ $ (!\i_Mux_B|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|i1|GenSum:3:i_Sumador1Bit|s_i~2_combout\,
	datab => \i_Mux_A|Mux15~0_combout\,
	datac => \i_Mux_B|Mux15~1_combout\,
	datad => \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~1_combout\,
	combout => \en_PC~2_combout\);

-- Location: LCCOMB_X20_Y18_N30
\i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\i_BancoReg|Mux22~combout\ & ((\i_BancoReg|Mux23~combout\) # ((!\i_BancoReg|Mux39~combout\) # (!\i_BancoReg|Mux38~combout\)))) # (!\i_BancoReg|Mux22~combout\ & (!\i_BancoReg|Mux38~combout\ & 
-- ((\i_BancoReg|Mux23~combout\) # (!\i_BancoReg|Mux39~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~combout\,
	datab => \i_BancoReg|Mux22~combout\,
	datac => \i_BancoReg|Mux38~combout\,
	datad => \i_BancoReg|Mux39~combout\,
	combout => \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X20_Y18_N8
\en_PC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~3_combout\ = (\estado_act.BEQ3~regout\ & (\i_BancoReg|Mux37~combout\ $ (\i_BancoReg|Mux21~combout\ $ (\i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux37~combout\,
	datab => \i_BancoReg|Mux21~combout\,
	datac => \estado_act.BEQ3~regout\,
	datad => \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~1_combout\,
	combout => \en_PC~3_combout\);

-- Location: LCCOMB_X20_Y19_N10
\i_Mux_PC|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux14~0_combout\ = (!SelPC(0) & ((\SelPC[1]~0_combout\ & ((\i_Reg|registro\(1)))) # (!\SelPC[1]~0_combout\ & (\i_BancoReg|Mux22~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux22~combout\,
	datab => \SelPC[1]~0_combout\,
	datac => \i_Reg|registro\(1),
	datad => SelPC(0),
	combout => \i_Mux_PC|Mux14~0_combout\);

-- Location: LCCOMB_X19_Y17_N24
\i_Mux_PC|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux13~0_combout\ = (!SelPC(0) & ((\SelPC[1]~0_combout\ & ((\i_Reg|registro\(2)))) # (!\SelPC[1]~0_combout\ & (\i_BancoReg|Mux21~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux21~combout\,
	datab => SelPC(0),
	datac => \SelPC[1]~0_combout\,
	datad => \i_Reg|registro\(2),
	combout => \i_Mux_PC|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y18_N22
\i_ALU|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux12~0_combout\ = (\i_ALU|Mux6~3_combout\ & (\i_ALU|Equal0~8_combout\ $ (\i_Mux_A|Mux12~0_combout\ $ (\i_Mux_B|Mux12~1_combout\)))) # (!\i_ALU|Mux6~3_combout\ & (((\i_Mux_A|Mux12~0_combout\ & \i_Mux_B|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_A|Mux12~0_combout\,
	datac => \i_Mux_B|Mux12~1_combout\,
	datad => \i_ALU|Mux6~3_combout\,
	combout => \i_ALU|Mux12~0_combout\);

-- Location: LCCOMB_X19_Y17_N20
\i_Mux_PC|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux11~0_combout\ = (!SelPC(0) & ((\SelPC[1]~0_combout\ & ((\i_Reg|registro\(4)))) # (!\SelPC[1]~0_combout\ & (\i_BancoReg|Mux19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux19~combout\,
	datab => SelPC(0),
	datac => \SelPC[1]~0_combout\,
	datad => \i_Reg|registro\(4),
	combout => \i_Mux_PC|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y17_N26
\i_ALU|i4|res~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i4|res~3_combout\ = (\i_Mux_B|Mux5~0_combout\ & \i_Mux_A|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux5~0_combout\,
	datad => \i_Mux_A|Mux5~0_combout\,
	combout => \i_ALU|i4|res~3_combout\);

-- Location: LCCOMB_X18_Y17_N6
\i_ALU|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux5~0_combout\ = (\i_ALU|Mux6~3_combout\ & (((\i_ALU|Mux6~8_combout\)))) # (!\i_ALU|Mux6~3_combout\ & ((\i_ALU|Mux6~8_combout\ & (\i_Mux_A|Mux6~0_combout\)) # (!\i_ALU|Mux6~8_combout\ & ((!\i_ALU|i4|res~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_Mux_A|Mux6~0_combout\,
	datac => \i_ALU|i4|res~3_combout\,
	datad => \i_ALU|Mux6~8_combout\,
	combout => \i_ALU|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y17_N24
\i_ALU|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux9~1_combout\ = (\i_ALU|Mux9~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (\i_Mux_B|Mux9~0_combout\ $ (\i_Mux_A|Mux9~0_combout\)))) # (!\i_ALU|Mux9~0_combout\ & (((\i_Mux_B|Mux9~0_combout\ & \i_Mux_A|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_B|Mux9~0_combout\,
	datac => \i_Mux_A|Mux9~0_combout\,
	datad => \i_ALU|Mux9~0_combout\,
	combout => \i_ALU|Mux9~1_combout\);

-- Location: LCFF_X19_Y15_N7
\i_RAM|ram_block~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux38~combout\,
	sload => VCC,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~25_regout\);

-- Location: LCFF_X19_Y15_N5
\i_RAM|ram_block~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~26feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~26_regout\);

-- Location: LCFF_X18_Y15_N15
\i_RAM|ram_block_rtl_0_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(15));

-- Location: LCFF_X19_Y15_N23
\i_RAM|ram_block~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~27feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~27_regout\);

-- Location: LCFF_X18_Y15_N21
\i_RAM|ram_block_rtl_0_bypass[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(16));

-- Location: LCFF_X20_Y18_N25
\i_RAM|ram_block~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux32~combout\,
	sload => VCC,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~31_regout\);

-- Location: LCFF_X18_Y15_N5
\i_RAM|ram_block_rtl_0_bypass[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(20));

-- Location: LCFF_X16_Y16_N17
\i_RAM|ram_block~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~34feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~34_regout\);

-- Location: LCFF_X16_Y16_N31
\i_RAM|ram_block~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~35feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~35_regout\);

-- Location: LCFF_X16_Y15_N21
\i_RAM|ram_block_rtl_0_bypass[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux28~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(24));

-- Location: LCFF_X16_Y16_N19
\i_RAM|ram_block~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~37feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~37_regout\);

-- Location: LCFF_X24_Y18_N5
\i_RAM|ram_block_rtl_0_bypass[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux26~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(26));

-- Location: LCFF_X19_Y15_N9
\i_RAM|ram_block~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux25~combout\,
	sload => VCC,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~38_regout\);

-- Location: LCFF_X19_Y15_N27
\i_RAM|ram_block_rtl_0_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux25~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(27));

-- Location: LCFF_X19_Y15_N29
\i_RAM|ram_block~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~39feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~39_regout\);

-- Location: LCFF_X19_Y15_N15
\i_RAM|ram_block_rtl_0_bypass[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(28));

-- Location: LCCOMB_X22_Y18_N10
\en_PC~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~9_combout\ = (\estado_act.FETCH~regout\) # ((\estado_act.JALR3~regout\) # (!\estado_act.RESET~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.FETCH~regout\,
	datab => \estado_act.JALR3~regout\,
	datad => \estado_act.RESET~regout\,
	combout => \en_PC~9_combout\);

-- Location: LCCOMB_X23_Y18_N4
\i_ALU|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Equal0~9_combout\ = (!\Selector14~0_combout\ & (((!\i_IR|registro\(1) & !\i_IR|registro\(2))) # (!\estado_act.ARIT3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.ARIT3~regout\,
	datab => \Selector14~0_combout\,
	datac => \i_IR|registro\(1),
	datad => \i_IR|registro\(2),
	combout => \i_ALU|Equal0~9_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(8),
	combout => \switches~combout\(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(9),
	combout => \switches~combout\(9));

-- Location: LCCOMB_X19_Y15_N4
\i_RAM|ram_block~26feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~26feeder_combout\ = \i_BancoReg|Mux37~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux37~combout\,
	combout => \i_RAM|ram_block~26feeder_combout\);

-- Location: LCCOMB_X18_Y15_N14
\i_RAM|ram_block_rtl_0_bypass[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[15]~feeder_combout\ = \i_BancoReg|Mux37~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_BancoReg|Mux37~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[15]~feeder_combout\);

-- Location: LCCOMB_X19_Y15_N22
\i_RAM|ram_block~27feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~27feeder_combout\ = \i_BancoReg|Mux36~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux36~combout\,
	combout => \i_RAM|ram_block~27feeder_combout\);

-- Location: LCCOMB_X18_Y15_N20
\i_RAM|ram_block_rtl_0_bypass[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[16]~feeder_combout\ = \i_BancoReg|Mux36~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_BancoReg|Mux36~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[16]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N4
\i_RAM|ram_block_rtl_0_bypass[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[20]~feeder_combout\ = \i_BancoReg|Mux32~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_BancoReg|Mux32~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[20]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N16
\i_RAM|ram_block~34feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~34feeder_combout\ = \i_BancoReg|Mux29~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux29~combout\,
	combout => \i_RAM|ram_block~34feeder_combout\);

-- Location: LCCOMB_X16_Y16_N30
\i_RAM|ram_block~35feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~35feeder_combout\ = \i_BancoReg|Mux28~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux28~combout\,
	combout => \i_RAM|ram_block~35feeder_combout\);

-- Location: LCCOMB_X16_Y16_N18
\i_RAM|ram_block~37feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~37feeder_combout\ = \i_BancoReg|Mux26~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux26~combout\,
	combout => \i_RAM|ram_block~37feeder_combout\);

-- Location: LCCOMB_X19_Y15_N14
\i_RAM|ram_block_rtl_0_bypass[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[28]~feeder_combout\ = \i_BancoReg|Mux24~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux24~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[28]~feeder_combout\);

-- Location: LCCOMB_X19_Y15_N28
\i_RAM|ram_block~39feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~39feeder_combout\ = \i_BancoReg|Mux24~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux24~combout\,
	combout => \i_RAM|ram_block~39feeder_combout\);

-- Location: LCCOMB_X20_Y16_N12
\i_BancoReg|Registro_r7|registro[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r7|registro[1]~feeder_combout\ = \i_Mux_Banco|Mux14~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux14~combout\,
	combout => \i_BancoReg|Registro_r7|registro[1]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N14
\i_RAM|ram_block_rtl_0_bypass[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[5]~feeder_combout\ = \i_Reg|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Reg|registro\(2),
	combout => \i_RAM|ram_block_rtl_0_bypass[5]~feeder_combout\);

-- Location: LCCOMB_X21_Y16_N12
\i_BancoReg|Registro_r6|registro[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r6|registro[3]~feeder_combout\ = \i_Mux_Banco|Mux12~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux12~combout\,
	combout => \i_BancoReg|Registro_r6|registro[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y19_N24
\i_RAM|ram_block_rtl_0_bypass[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[9]~feeder_combout\ = \i_Reg|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Reg|registro\(4),
	combout => \i_RAM|ram_block_rtl_0_bypass[9]~feeder_combout\);

-- Location: LCCOMB_X21_Y15_N16
\i_BancoReg|Registro_r4|registro[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r4|registro[8]~feeder_combout\ = \i_Mux_Banco|Mux7~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux7~2_combout\,
	combout => \i_BancoReg|Registro_r4|registro[8]~feeder_combout\);

-- Location: LCCOMB_X23_Y17_N24
\i_BancoReg|Registro_r2|registro[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r2|registro[10]~feeder_combout\ = \i_Mux_Banco|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux5~1_combout\,
	combout => \i_BancoReg|Registro_r2|registro[10]~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N20
\i_BancoReg|Registro_r3|registro[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r3|registro[13]~feeder_combout\ = \i_Mux_Banco|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux2~1_combout\,
	combout => \i_BancoReg|Registro_r3|registro[13]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N24
\i_BancoReg|Registro_r6|registro[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r6|registro[13]~feeder_combout\ = \i_Mux_Banco|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux2~1_combout\,
	combout => \i_BancoReg|Registro_r6|registro[13]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N10
\i_BancoReg|Registro_r6|registro[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r6|registro[15]~feeder_combout\ = \i_Mux_Banco|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux0~1_combout\,
	combout => \i_BancoReg|Registro_r6|registro[15]~feeder_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y16_N4
\estado_act.RESET~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_act.RESET~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \estado_act.RESET~feeder_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: LCFF_X18_Y16_N5
\estado_act.RESET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado_act.RESET~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.RESET~regout\);

-- Location: LCCOMB_X22_Y16_N30
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\i_IR|registro\(15) & (\i_IR|registro\(14) & (\i_IR|registro\(13) & \estado_act.DECOD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(15),
	datab => \i_IR|registro\(14),
	datac => \i_IR|registro\(13),
	datad => \estado_act.DECOD~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X22_Y16_N31
\estado_act.JALR3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.JALR3~regout\);

-- Location: LCCOMB_X20_Y19_N18
\SelPC[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SelPC[1]~0_combout\ = (\estado_act.RESET~regout\ & !\estado_act.JALR3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_act.RESET~regout\,
	datad => \estado_act.JALR3~regout\,
	combout => \SelPC[1]~0_combout\);

-- Location: LCFF_X20_Y19_N19
\i_PC|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_PC|Mux15~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(0));

-- Location: M4K_X17_Y18
\i_ROM|memoria_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F8003F82BF010893BD00E700248C6400297F9D009F013FFEF8002081C40208982081C0768C802D806E00E700AD002D806E00248C64003FBF7C1F",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ICAI-RiSC.ram0_ROM_16bd8.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:i_ROM|altsyncram:memoria_rtl_0|altsyncram_4471:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	ena0 => \en_PC~combout\,
	portaaddr => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X20_Y17_N18
\i_IR|registro[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_IR|registro[12]~feeder_combout\ = \i_ROM|memoria_rtl_0|auto_generated|ram_block1a12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a12\,
	combout => \i_IR|registro[12]~feeder_combout\);

-- Location: LCFF_X20_Y17_N19
\i_IR|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_IR|registro[12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(12));

-- Location: LCCOMB_X20_Y17_N24
\i_BancoReg|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux23~0_combout\ = (\i_IR|registro\(11) & !\i_IR|registro\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(11),
	datad => \i_IR|registro\(12),
	combout => \i_BancoReg|Mux23~0_combout\);

-- Location: LCFF_X22_Y16_N23
\i_IR|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a15\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(15));

-- Location: LCCOMB_X23_Y19_N12
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\i_IR|registro\(13) & (\estado_act.DECOD~regout\ & (\i_IR|registro\(14) & !\i_IR|registro\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(13),
	datab => \estado_act.DECOD~regout\,
	datac => \i_IR|registro\(14),
	datad => \i_IR|registro\(15),
	combout => \Selector3~0_combout\);

-- Location: LCFF_X23_Y19_N13
\estado_act.LUI3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.LUI3~regout\);

-- Location: LCCOMB_X21_Y17_N12
\SelBanco[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SelBanco[0]~0_combout\ = (\estado_act.LUI3~regout\) # (\estado_act.LW5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_act.LUI3~regout\,
	datac => \estado_act.LW5~regout\,
	combout => \SelBanco[0]~0_combout\);

-- Location: LCFF_X18_Y17_N21
\i_PC|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_PC|Mux10~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(5));

-- Location: LCCOMB_X21_Y17_N14
\i_Mux_Banco|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux15~1_combout\ = (\estado_act.JALR3~regout\) # ((\estado_act.LUI3~regout\) # ((\estado_act.LW5~regout\ & !\i_Reg|registro\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.JALR3~regout\,
	datab => \estado_act.LUI3~regout\,
	datac => \estado_act.LW5~regout\,
	datad => \i_Reg|registro\(15),
	combout => \i_Mux_Banco|Mux15~1_combout\);

-- Location: LCCOMB_X19_Y17_N30
\i_Mux_Banco|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux10~0_combout\ = (\SelBanco[0]~0_combout\ & (((!\i_Mux_Banco|Mux15~1_combout\)))) # (!\SelBanco[0]~0_combout\ & ((\i_Mux_Banco|Mux15~1_combout\ & ((\i_PC|registro\(5)))) # (!\i_Mux_Banco|Mux15~1_combout\ & (\i_Reg|registro\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(5),
	datab => \SelBanco[0]~0_combout\,
	datac => \i_PC|registro\(5),
	datad => \i_Mux_Banco|Mux15~1_combout\,
	combout => \i_Mux_Banco|Mux10~0_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(5),
	combout => \switches~combout\(5));

-- Location: LCFF_X20_Y17_N15
\i_BancoReg|Registro_r3|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux10~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(5));

-- Location: LCFF_X20_Y15_N21
\i_IR|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a8\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(8));

-- Location: LCFF_X20_Y15_N23
\i_IR|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a9\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(9));

-- Location: LCCOMB_X20_Y15_N16
\i_BancoReg|Mux36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux36~0_combout\ = (\i_IR|registro\(8) & !\i_IR|registro\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_IR|registro\(8),
	datad => \i_IR|registro\(9),
	combout => \i_BancoReg|Mux36~0_combout\);

-- Location: LCCOMB_X20_Y15_N0
\i_IR|registro[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_IR|registro[7]~feeder_combout\ = \i_ROM|memoria_rtl_0|auto_generated|ram_block1a7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a7\,
	combout => \i_IR|registro[7]~feeder_combout\);

-- Location: LCFF_X20_Y15_N1
\i_IR|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_IR|registro[7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(7));

-- Location: LCCOMB_X20_Y15_N30
\i_BancoReg|Mux36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux36~1_combout\ = (\i_IR|registro\(9)) # ((\i_IR|registro\(7) & !\i_IR|registro\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_IR|registro\(7),
	datac => \i_IR|registro\(8),
	datad => \i_IR|registro\(9),
	combout => \i_BancoReg|Mux36~1_combout\);

-- Location: LCCOMB_X22_Y16_N20
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\i_IR|registro\(15) & (!\i_IR|registro\(14) & (\i_IR|registro\(13) & \estado_act.DECOD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(15),
	datab => \i_IR|registro\(14),
	datac => \i_IR|registro\(13),
	datad => \estado_act.DECOD~regout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X22_Y16_N21
\estado_act.ADDI3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.ADDI3~regout\);

-- Location: LCFF_X22_Y16_N11
\estado_act.ADDI4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \estado_act.ADDI3~regout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.ADDI4~regout\);

-- Location: LCFF_X23_Y19_N5
\estado_act.ARIT4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \estado_act.ARIT3~regout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.ARIT4~regout\);

-- Location: LCCOMB_X23_Y19_N4
WideOr12 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr12~combout\ = ((\estado_act.ADDI4~regout\) # ((\estado_act.ARIT4~regout\) # (\estado_act.LW5~regout\))) # (!\SelBanco[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBanco[1]~1_combout\,
	datab => \estado_act.ADDI4~regout\,
	datac => \estado_act.ARIT4~regout\,
	datad => \estado_act.LW5~regout\,
	combout => \WideOr12~combout\);

-- Location: LCCOMB_X23_Y19_N30
\WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (!\estado_act.JALR3~regout\ & (!\estado_act.ADDI4~regout\ & !\estado_act.LW5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.JALR3~regout\,
	datac => \estado_act.ADDI4~regout\,
	datad => \estado_act.LW5~regout\,
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X16_Y17_N6
\i_Mux_IR|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_IR|Mux2~1_combout\ = (\WideOr11~0_combout\ & (\i_Mux_IR|Mux2~0_combout\)) # (!\WideOr11~0_combout\ & ((\i_IR|registro\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux2~0_combout\,
	datab => \i_IR|registro\(7),
	datad => \WideOr11~0_combout\,
	combout => \i_Mux_IR|Mux2~1_combout\);

-- Location: LCCOMB_X16_Y17_N10
\i_Mux_IR|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_IR|Mux1~1_combout\ = (\WideOr11~0_combout\ & (\i_Mux_IR|Mux1~0_combout\)) # (!\WideOr11~0_combout\ & ((\i_IR|registro\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux1~0_combout\,
	datab => \i_IR|registro\(8),
	datad => \WideOr11~0_combout\,
	combout => \i_Mux_IR|Mux1~1_combout\);

-- Location: LCCOMB_X20_Y15_N28
\i_BancoReg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux1~0_combout\ = (!\i_Mux_IR|Mux0~1_combout\ & (\WideOr12~combout\ & (\i_Mux_IR|Mux2~1_combout\ & !\i_Mux_IR|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux0~1_combout\,
	datab => \WideOr12~combout\,
	datac => \i_Mux_IR|Mux2~1_combout\,
	datad => \i_Mux_IR|Mux1~1_combout\,
	combout => \i_BancoReg|Mux1~0_combout\);

-- Location: LCFF_X22_Y15_N13
\i_BancoReg|Registro_r1|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux10~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(5));

-- Location: LCCOMB_X16_Y17_N16
\i_BancoReg|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux7~0_combout\ = (\i_Mux_IR|Mux2~1_combout\ & (\i_Mux_IR|Mux0~1_combout\ & (\i_Mux_IR|Mux1~1_combout\ & \WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux2~1_combout\,
	datab => \i_Mux_IR|Mux0~1_combout\,
	datac => \i_Mux_IR|Mux1~1_combout\,
	datad => \WideOr12~combout\,
	combout => \i_BancoReg|Mux7~0_combout\);

-- Location: LCFF_X20_Y16_N7
\i_BancoReg|Registro_r7|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux10~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(5));

-- Location: LCCOMB_X20_Y15_N18
\i_BancoReg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux6~0_combout\ = (\i_Mux_IR|Mux0~1_combout\ & (\WideOr12~combout\ & (!\i_Mux_IR|Mux2~1_combout\ & \i_Mux_IR|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux0~1_combout\,
	datab => \WideOr12~combout\,
	datac => \i_Mux_IR|Mux2~1_combout\,
	datad => \i_Mux_IR|Mux1~1_combout\,
	combout => \i_BancoReg|Mux6~0_combout\);

-- Location: LCFF_X21_Y15_N9
\i_BancoReg|Registro_r6|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux10~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(5));

-- Location: LCCOMB_X16_Y17_N26
\i_BancoReg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux4~0_combout\ = (!\i_Mux_IR|Mux2~1_combout\ & (\i_Mux_IR|Mux0~1_combout\ & (!\i_Mux_IR|Mux1~1_combout\ & \WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux2~1_combout\,
	datab => \i_Mux_IR|Mux0~1_combout\,
	datac => \i_Mux_IR|Mux1~1_combout\,
	datad => \WideOr12~combout\,
	combout => \i_BancoReg|Mux4~0_combout\);

-- Location: LCFF_X20_Y16_N17
\i_BancoReg|Registro_r4|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux10~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(5));

-- Location: LCCOMB_X20_Y16_N16
\i_BancoReg|Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux34~0_combout\ = (\i_IR|registro\(8) & (((\i_IR|registro\(7))))) # (!\i_IR|registro\(8) & ((\i_IR|registro\(7) & (\i_BancoReg|Registro_r5|registro\(5))) # (!\i_IR|registro\(7) & ((\i_BancoReg|Registro_r4|registro\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r5|registro\(5),
	datab => \i_IR|registro\(8),
	datac => \i_BancoReg|Registro_r4|registro\(5),
	datad => \i_IR|registro\(7),
	combout => \i_BancoReg|Mux34~0_combout\);

-- Location: LCCOMB_X21_Y15_N6
\i_BancoReg|Mux34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux34~1_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux34~0_combout\ & (\i_BancoReg|Registro_r7|registro\(5))) # (!\i_BancoReg|Mux34~0_combout\ & ((\i_BancoReg|Registro_r6|registro\(5)))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(8),
	datab => \i_BancoReg|Registro_r7|registro\(5),
	datac => \i_BancoReg|Registro_r6|registro\(5),
	datad => \i_BancoReg|Mux34~0_combout\,
	combout => \i_BancoReg|Mux34~1_combout\);

-- Location: LCCOMB_X21_Y15_N28
\i_BancoReg|Mux34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux34~2_combout\ = (\i_BancoReg|Mux36~2_combout\ & (((\i_BancoReg|Mux34~1_combout\)) # (!\i_BancoReg|Mux36~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Mux36~1_combout\ & (\i_BancoReg|Registro_r1|registro\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~2_combout\,
	datab => \i_BancoReg|Mux36~1_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(5),
	datad => \i_BancoReg|Mux34~1_combout\,
	combout => \i_BancoReg|Mux34~2_combout\);

-- Location: LCCOMB_X22_Y18_N14
\i_BancoReg|Mux34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux34~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux34~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(5)))) # (!\i_BancoReg|Mux34~2_combout\ & (\i_BancoReg|Registro_r2|registro\(5))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(5),
	datab => \i_BancoReg|Registro_r3|registro\(5),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux34~2_combout\,
	combout => \i_BancoReg|Mux34~combout\);

-- Location: LCCOMB_X19_Y15_N24
\i_RAM|ram_block~29feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~29feeder_combout\ = \i_BancoReg|Mux34~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux34~combout\,
	combout => \i_RAM|ram_block~29feeder_combout\);

-- Location: LCCOMB_X22_Y16_N10
WideOr10 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~combout\ = (!\estado_act.DECOD~regout\ & (!\estado_act.ARIT3~regout\ & (!\estado_act.ADDI3~regout\ & !\estado_act.LWSW3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.DECOD~regout\,
	datab => \estado_act.ARIT3~regout\,
	datac => \estado_act.ADDI3~regout\,
	datad => \estado_act.LWSW3~regout\,
	combout => \WideOr10~combout\);

-- Location: LCFF_X24_Y17_N15
\i_Reg|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux13~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(2));

-- Location: LCCOMB_X21_Y17_N28
\i_RAM|ram_block~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~44_combout\ = (!\i_Reg|registro\(1) & (!\i_Reg|registro\(2) & (!\i_Reg|registro\(0) & !\i_Reg|registro\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(1),
	datab => \i_Reg|registro\(2),
	datac => \i_Reg|registro\(0),
	datad => \i_Reg|registro\(3),
	combout => \i_RAM|ram_block~44_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\i_IR|registro\(15) & (\estado_act.LWSW3~regout\ & (!\i_IR|registro\(13) & !\i_IR|registro\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(15),
	datab => \estado_act.LWSW3~regout\,
	datac => \i_IR|registro\(13),
	datad => \i_IR|registro\(14),
	combout => \Selector12~0_combout\);

-- Location: LCFF_X22_Y16_N29
\estado_act.SW4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.SW4~regout\);

-- Location: LCCOMB_X21_Y17_N16
wrRamPeri : cycloneii_lcell_comb
-- Equation(s):
-- \wrRamPeri~combout\ = (\estado_act.SW4~regout\ & !\i_Reg|registro\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_act.SW4~regout\,
	datad => \i_Reg|registro\(15),
	combout => \wrRamPeri~combout\);

-- Location: LCFF_X24_Y17_N7
\i_Reg|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux11~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(4));

-- Location: LCCOMB_X21_Y17_N22
\i_RAM|ram_block~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~45_combout\ = (!\i_Reg|registro\(5) & (\i_RAM|ram_block~44_combout\ & (\wrRamPeri~combout\ & !\i_Reg|registro\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(5),
	datab => \i_RAM|ram_block~44_combout\,
	datac => \wrRamPeri~combout\,
	datad => \i_Reg|registro\(4),
	combout => \i_RAM|ram_block~45_combout\);

-- Location: LCFF_X19_Y15_N25
\i_RAM|ram_block~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~29feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~29_regout\);

-- Location: LCCOMB_X24_Y15_N22
\i_RAM|ram_block~23feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~23feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \i_RAM|ram_block~23feeder_combout\);

-- Location: LCFF_X24_Y15_N23
\i_RAM|ram_block~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~23feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~23_regout\);

-- Location: LCCOMB_X18_Y15_N12
\i_RAM|dout[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[5]~5_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a5\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~29_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datab => \i_RAM|ram_block~29_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[5]~5_combout\);

-- Location: LCCOMB_X19_Y15_N10
\i_RAM|ram_block_rtl_0_bypass[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[18]~feeder_combout\ = \i_BancoReg|Mux34~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux34~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[18]~feeder_combout\);

-- Location: LCFF_X19_Y15_N11
\i_RAM|ram_block_rtl_0_bypass[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(18));

-- Location: LCFF_X23_Y18_N29
\i_IR|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(0));

-- Location: LCFF_X20_Y19_N5
\i_PC|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_PC|Mux14~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(1));

-- Location: LCCOMB_X18_Y17_N20
\WideOr10~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~_wirecell_combout\ = !\WideOr10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WideOr10~combout\,
	combout => \WideOr10~_wirecell_combout\);

-- Location: LCFF_X24_Y17_N21
\i_Reg|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux14~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(1));

-- Location: LCCOMB_X16_Y17_N12
\~QUARTUS_CREATED_GND~I\ : cycloneii_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCFF_X21_Y18_N5
\i_BancoReg|Registro_r3|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux14~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(1));

-- Location: LCCOMB_X20_Y15_N12
\i_BancoReg|Mux36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux36~2_combout\ = (\i_IR|registro\(9)) # ((\i_IR|registro\(7) & \i_IR|registro\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_IR|registro\(7),
	datac => \i_IR|registro\(8),
	datad => \i_IR|registro\(9),
	combout => \i_BancoReg|Mux36~2_combout\);

-- Location: LCFF_X21_Y18_N11
\i_BancoReg|Registro_r1|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux14~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(1));

-- Location: LCFF_X21_Y17_N19
\i_BancoReg|Registro_r6|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux14~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(1));

-- Location: LCCOMB_X20_Y15_N8
\i_BancoReg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux5~0_combout\ = (\i_Mux_IR|Mux0~1_combout\ & (\WideOr12~combout\ & (\i_Mux_IR|Mux2~1_combout\ & !\i_Mux_IR|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux0~1_combout\,
	datab => \WideOr12~combout\,
	datac => \i_Mux_IR|Mux2~1_combout\,
	datad => \i_Mux_IR|Mux1~1_combout\,
	combout => \i_BancoReg|Mux5~0_combout\);

-- Location: LCFF_X21_Y17_N17
\i_BancoReg|Registro_r5|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux14~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(1));

-- Location: LCCOMB_X20_Y16_N26
\i_BancoReg|Mux38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux38~0_combout\ = (\i_IR|registro\(7) & (((\i_BancoReg|Registro_r5|registro\(1)) # (\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & (\i_BancoReg|Registro_r4|registro\(1) & ((!\i_IR|registro\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(1),
	datab => \i_IR|registro\(7),
	datac => \i_BancoReg|Registro_r5|registro\(1),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux38~0_combout\);

-- Location: LCCOMB_X20_Y16_N14
\i_BancoReg|Mux38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux38~1_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux38~0_combout\ & (\i_BancoReg|Registro_r7|registro\(1))) # (!\i_BancoReg|Mux38~0_combout\ & ((\i_BancoReg|Registro_r6|registro\(1)))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r7|registro\(1),
	datab => \i_BancoReg|Registro_r6|registro\(1),
	datac => \i_IR|registro\(8),
	datad => \i_BancoReg|Mux38~0_combout\,
	combout => \i_BancoReg|Mux38~1_combout\);

-- Location: LCCOMB_X21_Y18_N10
\i_BancoReg|Mux38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux38~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux38~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(1))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(1),
	datad => \i_BancoReg|Mux38~1_combout\,
	combout => \i_BancoReg|Mux38~2_combout\);

-- Location: LCCOMB_X24_Y18_N0
\i_BancoReg|Mux38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux38~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux38~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(1)))) # (!\i_BancoReg|Mux38~2_combout\ & (\i_BancoReg|Registro_r2|registro\(1))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(1),
	datab => \i_BancoReg|Registro_r3|registro\(1),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux38~2_combout\,
	combout => \i_BancoReg|Mux38~combout\);

-- Location: LCFF_X19_Y17_N13
\i_PC|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_PC|Mux13~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(2));

-- Location: LCCOMB_X19_Y17_N12
\i_Mux_Banco|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux13~0_combout\ = (\SelBanco[0]~0_combout\ & (((!\i_Mux_Banco|Mux15~1_combout\)))) # (!\SelBanco[0]~0_combout\ & ((\i_Mux_Banco|Mux15~1_combout\ & ((\i_PC|registro\(2)))) # (!\i_Mux_Banco|Mux15~1_combout\ & (\i_Reg|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(2),
	datab => \SelBanco[0]~0_combout\,
	datac => \i_PC|registro\(2),
	datad => \i_Mux_Banco|Mux15~1_combout\,
	combout => \i_Mux_Banco|Mux13~0_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(2),
	combout => \switches~combout\(2));

-- Location: LCCOMB_X22_Y17_N24
\i_Mux_Banco|Mux13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux13~combout\ = (\i_Mux_Banco|Mux13~0_combout\ & (((\switches~combout\(2)) # (\i_Mux_Banco|Mux15~0_combout\)))) # (!\i_Mux_Banco|Mux13~0_combout\ & (\i_RAM|dout\(2) & ((!\i_Mux_Banco|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|dout\(2),
	datab => \i_Mux_Banco|Mux13~0_combout\,
	datac => \switches~combout\(2),
	datad => \i_Mux_Banco|Mux15~0_combout\,
	combout => \i_Mux_Banco|Mux13~combout\);

-- Location: LCCOMB_X20_Y18_N20
\i_BancoReg|Registro_r2|registro[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r2|registro[2]~feeder_combout\ = \i_Mux_Banco|Mux13~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux13~combout\,
	combout => \i_BancoReg|Registro_r2|registro[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y15_N2
\i_BancoReg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux2~0_combout\ = (!\i_Mux_IR|Mux0~1_combout\ & (\WideOr12~combout\ & (!\i_Mux_IR|Mux2~1_combout\ & \i_Mux_IR|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux0~1_combout\,
	datab => \WideOr12~combout\,
	datac => \i_Mux_IR|Mux2~1_combout\,
	datad => \i_Mux_IR|Mux1~1_combout\,
	combout => \i_BancoReg|Mux2~0_combout\);

-- Location: LCFF_X20_Y18_N21
\i_BancoReg|Registro_r2|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r2|registro[2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(2));

-- Location: LCFF_X21_Y18_N21
\i_BancoReg|Registro_r1|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux13~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(2));

-- Location: LCFF_X22_Y17_N21
\i_BancoReg|Registro_r7|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux13~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(2));

-- Location: LCFF_X21_Y17_N11
\i_BancoReg|Registro_r5|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux13~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(2));

-- Location: LCFF_X21_Y17_N5
\i_BancoReg|Registro_r6|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux13~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(2));

-- Location: LCCOMB_X22_Y17_N30
\i_BancoReg|Mux37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux37~0_combout\ = (\i_IR|registro\(7) & (((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & ((\i_IR|registro\(8) & ((\i_BancoReg|Registro_r6|registro\(2)))) # (!\i_IR|registro\(8) & (\i_BancoReg|Registro_r4|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(2),
	datab => \i_BancoReg|Registro_r6|registro\(2),
	datac => \i_IR|registro\(7),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux37~0_combout\);

-- Location: LCCOMB_X21_Y17_N10
\i_BancoReg|Mux37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux37~1_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Mux37~0_combout\ & (\i_BancoReg|Registro_r7|registro\(2))) # (!\i_BancoReg|Mux37~0_combout\ & ((\i_BancoReg|Registro_r5|registro\(2)))))) # (!\i_IR|registro\(7) & 
-- (((\i_BancoReg|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r7|registro\(2),
	datac => \i_BancoReg|Registro_r5|registro\(2),
	datad => \i_BancoReg|Mux37~0_combout\,
	combout => \i_BancoReg|Mux37~1_combout\);

-- Location: LCCOMB_X21_Y18_N20
\i_BancoReg|Mux37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux37~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux37~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(2))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(2),
	datad => \i_BancoReg|Mux37~1_combout\,
	combout => \i_BancoReg|Mux37~2_combout\);

-- Location: LCCOMB_X20_Y18_N10
\i_BancoReg|Mux37\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux37~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux37~2_combout\ & (\i_BancoReg|Registro_r3|registro\(2))) # (!\i_BancoReg|Mux37~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(2)))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(2),
	datab => \i_BancoReg|Registro_r2|registro\(2),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux37~2_combout\,
	combout => \i_BancoReg|Mux37~combout\);

-- Location: LCCOMB_X19_Y17_N22
\i_Mux_Banco|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux12~0_combout\ = (\SelBanco[0]~0_combout\ & (((!\i_Mux_Banco|Mux15~1_combout\)))) # (!\SelBanco[0]~0_combout\ & ((\i_Mux_Banco|Mux15~1_combout\ & ((\i_PC|registro\(3)))) # (!\i_Mux_Banco|Mux15~1_combout\ & (\i_Reg|registro\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(3),
	datab => \SelBanco[0]~0_combout\,
	datac => \i_PC|registro\(3),
	datad => \i_Mux_Banco|Mux15~1_combout\,
	combout => \i_Mux_Banco|Mux12~0_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(3),
	combout => \switches~combout\(3));

-- Location: LCCOMB_X21_Y16_N30
\i_Mux_Banco|Mux12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux12~combout\ = (\i_Mux_Banco|Mux12~0_combout\ & (((\i_Mux_Banco|Mux15~0_combout\) # (\switches~combout\(3))))) # (!\i_Mux_Banco|Mux12~0_combout\ & (\i_RAM|dout\(3) & (!\i_Mux_Banco|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|dout\(3),
	datab => \i_Mux_Banco|Mux12~0_combout\,
	datac => \i_Mux_Banco|Mux15~0_combout\,
	datad => \switches~combout\(3),
	combout => \i_Mux_Banco|Mux12~combout\);

-- Location: LCFF_X20_Y18_N17
\i_BancoReg|Registro_r2|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux12~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(3));

-- Location: LCFF_X20_Y16_N5
\i_BancoReg|Registro_r4|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux12~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(3));

-- Location: LCCOMB_X20_Y16_N4
\i_BancoReg|Mux36~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux36~3_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Registro_r5|registro\(3)) # ((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & (((\i_BancoReg|Registro_r4|registro\(3) & !\i_IR|registro\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r5|registro\(3),
	datab => \i_IR|registro\(7),
	datac => \i_BancoReg|Registro_r4|registro\(3),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux36~3_combout\);

-- Location: LCFF_X20_Y16_N23
\i_BancoReg|Registro_r7|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux12~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(3));

-- Location: LCCOMB_X21_Y16_N8
\i_BancoReg|Mux36~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux36~4_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux36~3_combout\ & ((\i_BancoReg|Registro_r7|registro\(3)))) # (!\i_BancoReg|Mux36~3_combout\ & (\i_BancoReg|Registro_r6|registro\(3))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(3),
	datab => \i_IR|registro\(8),
	datac => \i_BancoReg|Mux36~3_combout\,
	datad => \i_BancoReg|Registro_r7|registro\(3),
	combout => \i_BancoReg|Mux36~4_combout\);

-- Location: LCCOMB_X21_Y18_N26
\i_BancoReg|Registro_r1|registro[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r1|registro[3]~feeder_combout\ = \i_Mux_Banco|Mux12~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux12~combout\,
	combout => \i_BancoReg|Registro_r1|registro[3]~feeder_combout\);

-- Location: LCFF_X21_Y18_N27
\i_BancoReg|Registro_r1|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r1|registro[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(3));

-- Location: LCCOMB_X21_Y18_N12
\i_BancoReg|Mux36~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux36~5_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Mux36~4_combout\)) # (!\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Registro_r1|registro\(3)))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Mux36~4_combout\,
	datad => \i_BancoReg|Registro_r1|registro\(3),
	combout => \i_BancoReg|Mux36~5_combout\);

-- Location: LCFF_X20_Y17_N9
\i_BancoReg|Registro_r3|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux12~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(3));

-- Location: LCCOMB_X20_Y18_N18
\i_BancoReg|Mux36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux36~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux36~5_combout\ & ((\i_BancoReg|Registro_r3|registro\(3)))) # (!\i_BancoReg|Mux36~5_combout\ & (\i_BancoReg|Registro_r2|registro\(3))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux36~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(3),
	datac => \i_BancoReg|Mux36~5_combout\,
	datad => \i_BancoReg|Registro_r3|registro\(3),
	combout => \i_BancoReg|Mux36~combout\);

-- Location: LCCOMB_X16_Y16_N26
\i_RAM|ram_block~28feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~28feeder_combout\ = \i_BancoReg|Mux35~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux35~combout\,
	combout => \i_RAM|ram_block~28feeder_combout\);

-- Location: LCFF_X16_Y16_N27
\i_RAM|ram_block~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~28feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~28_regout\);

-- Location: LCFF_X21_Y19_N1
\i_BancoReg|Registro_r2|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux9~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(6));

-- Location: LCFF_X21_Y18_N19
\i_BancoReg|Registro_r1|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux9~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(6));

-- Location: LCCOMB_X22_Y17_N2
\i_BancoReg|Registro_r7|registro[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r7|registro[6]~feeder_combout\ = \i_Mux_Banco|Mux9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux9~2_combout\,
	combout => \i_BancoReg|Registro_r7|registro[6]~feeder_combout\);

-- Location: LCFF_X22_Y17_N3
\i_BancoReg|Registro_r7|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r7|registro[6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(6));

-- Location: LCCOMB_X22_Y17_N18
\i_BancoReg|Registro_r4|registro[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r4|registro[6]~feeder_combout\ = \i_Mux_Banco|Mux9~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux9~2_combout\,
	combout => \i_BancoReg|Registro_r4|registro[6]~feeder_combout\);

-- Location: LCFF_X22_Y17_N19
\i_BancoReg|Registro_r4|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r4|registro[6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(6));

-- Location: LCCOMB_X22_Y17_N28
\i_BancoReg|Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux33~0_combout\ = (\i_IR|registro\(7) & (((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & ((\i_IR|registro\(8) & (\i_BancoReg|Registro_r6|registro\(6))) # (!\i_IR|registro\(8) & ((\i_BancoReg|Registro_r4|registro\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(6),
	datab => \i_BancoReg|Registro_r4|registro\(6),
	datac => \i_IR|registro\(7),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux33~0_combout\);

-- Location: LCCOMB_X22_Y17_N0
\i_BancoReg|Mux33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux33~1_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Mux33~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(6)))) # (!\i_BancoReg|Mux33~0_combout\ & (\i_BancoReg|Registro_r5|registro\(6))))) # (!\i_IR|registro\(7) & 
-- (((\i_BancoReg|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r5|registro\(6),
	datab => \i_BancoReg|Registro_r7|registro\(6),
	datac => \i_IR|registro\(7),
	datad => \i_BancoReg|Mux33~0_combout\,
	combout => \i_BancoReg|Mux33~1_combout\);

-- Location: LCCOMB_X21_Y18_N18
\i_BancoReg|Mux33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux33~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux33~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(6))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(6),
	datad => \i_BancoReg|Mux33~1_combout\,
	combout => \i_BancoReg|Mux33~2_combout\);

-- Location: LCCOMB_X22_Y18_N12
\i_BancoReg|Mux33\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux33~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux33~2_combout\ & (\i_BancoReg|Registro_r3|registro\(6))) # (!\i_BancoReg|Mux33~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(6)))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(6),
	datab => \i_BancoReg|Registro_r2|registro\(6),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux33~2_combout\,
	combout => \i_BancoReg|Mux33~combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(7),
	combout => \switches~combout\(7));

-- Location: LCCOMB_X18_Y19_N18
\i_Mux_Banco|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux8~0_combout\ = (\i_Mux_Banco|Mux15~0_combout\ & (((\i_Mux_Banco|Mux15~1_combout\)))) # (!\i_Mux_Banco|Mux15~0_combout\ & ((\i_Mux_Banco|Mux15~1_combout\ & (\i_RAM|dout\(7))) # (!\i_Mux_Banco|Mux15~1_combout\ & ((\switches~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|dout\(7),
	datab => \i_Mux_Banco|Mux15~0_combout\,
	datac => \i_Mux_Banco|Mux15~1_combout\,
	datad => \switches~combout\(7),
	combout => \i_Mux_Banco|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y19_N20
\i_Mux_Banco|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux8~1_combout\ = (\i_Mux_Banco|Mux8~0_combout\ & ((\i_PC|registro\(7)) # ((!\i_Mux_Banco|Mux15~0_combout\)))) # (!\i_Mux_Banco|Mux8~0_combout\ & (((\i_Reg|registro\(7) & \i_Mux_Banco|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(7),
	datab => \i_Mux_Banco|Mux8~0_combout\,
	datac => \i_Reg|registro\(7),
	datad => \i_Mux_Banco|Mux15~0_combout\,
	combout => \i_Mux_Banco|Mux8~1_combout\);

-- Location: LCCOMB_X21_Y19_N30
\i_Mux_Banco|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux8~2_combout\ = (\i_Mux_Banco|Mux6~0_combout\ & ((\i_Mux_Banco|Mux8~1_combout\))) # (!\i_Mux_Banco|Mux6~0_combout\ & (\i_IR|registro\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Banco|Mux6~0_combout\,
	datac => \i_IR|registro\(1),
	datad => \i_Mux_Banco|Mux8~1_combout\,
	combout => \i_Mux_Banco|Mux8~2_combout\);

-- Location: LCCOMB_X21_Y19_N16
\i_BancoReg|Registro_r2|registro[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r2|registro[7]~feeder_combout\ = \i_Mux_Banco|Mux8~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux8~2_combout\,
	combout => \i_BancoReg|Registro_r2|registro[7]~feeder_combout\);

-- Location: LCFF_X21_Y19_N17
\i_BancoReg|Registro_r2|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r2|registro[7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(7));

-- Location: LCFF_X21_Y18_N23
\i_BancoReg|Registro_r1|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux8~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(7));

-- Location: LCFF_X20_Y16_N19
\i_BancoReg|Registro_r7|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux8~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(7));

-- Location: LCCOMB_X21_Y16_N2
\i_BancoReg|Registro_r5|registro[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r5|registro[7]~feeder_combout\ = \i_Mux_Banco|Mux8~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux8~2_combout\,
	combout => \i_BancoReg|Registro_r5|registro[7]~feeder_combout\);

-- Location: LCFF_X21_Y16_N3
\i_BancoReg|Registro_r5|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r5|registro[7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(7));

-- Location: LCFF_X20_Y16_N9
\i_BancoReg|Registro_r4|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux8~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(7));

-- Location: LCCOMB_X20_Y16_N8
\i_BancoReg|Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux32~0_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Registro_r5|registro\(7)) # ((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & (((\i_BancoReg|Registro_r4|registro\(7) & !\i_IR|registro\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r5|registro\(7),
	datac => \i_BancoReg|Registro_r4|registro\(7),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux32~0_combout\);

-- Location: LCCOMB_X20_Y15_N24
\i_BancoReg|Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux32~1_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux32~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(7)))) # (!\i_BancoReg|Mux32~0_combout\ & (\i_BancoReg|Registro_r6|registro\(7))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(7),
	datab => \i_BancoReg|Registro_r7|registro\(7),
	datac => \i_IR|registro\(8),
	datad => \i_BancoReg|Mux32~0_combout\,
	combout => \i_BancoReg|Mux32~1_combout\);

-- Location: LCCOMB_X21_Y18_N22
\i_BancoReg|Mux32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux32~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux32~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(7))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(7),
	datad => \i_BancoReg|Mux32~1_combout\,
	combout => \i_BancoReg|Mux32~2_combout\);

-- Location: LCCOMB_X21_Y18_N28
\i_BancoReg|Mux32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux32~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux32~2_combout\ & (\i_BancoReg|Registro_r3|registro\(7))) # (!\i_BancoReg|Mux32~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(7)))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(7),
	datab => \i_BancoReg|Mux36~0_combout\,
	datac => \i_BancoReg|Registro_r2|registro\(7),
	datad => \i_BancoReg|Mux32~2_combout\,
	combout => \i_BancoReg|Mux32~combout\);

-- Location: LCCOMB_X23_Y17_N12
\i_ALU|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux6~4_combout\ = (!\i_IR|registro\(2) & (\i_IR|registro\(1) & \estado_act.ARIT3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(2),
	datab => \i_IR|registro\(1),
	datad => \estado_act.ARIT3~regout\,
	combout => \i_ALU|Mux6~4_combout\);

-- Location: LCFF_X20_Y17_N31
\i_BancoReg|Registro_r3|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux13~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(2));

-- Location: LCCOMB_X20_Y17_N6
\i_IR|registro[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_IR|registro[11]~feeder_combout\ = \i_ROM|memoria_rtl_0|auto_generated|ram_block1a11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a11\,
	combout => \i_IR|registro[11]~feeder_combout\);

-- Location: LCFF_X20_Y17_N7
\i_IR|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_IR|registro[11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(11));

-- Location: LCCOMB_X20_Y17_N14
\i_BancoReg|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux23~2_combout\ = (\i_IR|registro\(12)) # ((\i_IR|registro\(10) & \i_IR|registro\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_IR|registro\(12),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux23~2_combout\);

-- Location: LCFF_X20_Y17_N17
\i_IR|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a10\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(10));

-- Location: LCCOMB_X21_Y17_N4
\i_BancoReg|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux21~0_combout\ = (\i_IR|registro\(11) & (((\i_BancoReg|Registro_r6|registro\(2)) # (\i_IR|registro\(10))))) # (!\i_IR|registro\(11) & (\i_BancoReg|Registro_r4|registro\(2) & ((!\i_IR|registro\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(2),
	datab => \i_IR|registro\(11),
	datac => \i_BancoReg|Registro_r6|registro\(2),
	datad => \i_IR|registro\(10),
	combout => \i_BancoReg|Mux21~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\i_BancoReg|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux21~1_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Mux21~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(2)))) # (!\i_BancoReg|Mux21~0_combout\ & (\i_BancoReg|Registro_r5|registro\(2))))) # (!\i_IR|registro\(10) & 
-- (((\i_BancoReg|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r5|registro\(2),
	datab => \i_IR|registro\(10),
	datac => \i_BancoReg|Registro_r7|registro\(2),
	datad => \i_BancoReg|Mux21~0_combout\,
	combout => \i_BancoReg|Mux21~1_combout\);

-- Location: LCCOMB_X20_Y17_N4
\i_BancoReg|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux21~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux21~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(2))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (\i_BancoReg|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Mux23~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(2),
	datad => \i_BancoReg|Mux21~1_combout\,
	combout => \i_BancoReg|Mux21~2_combout\);

-- Location: LCCOMB_X20_Y17_N30
\i_BancoReg|Mux21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux21~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux21~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(2)))) # (!\i_BancoReg|Mux21~2_combout\ & (\i_BancoReg|Registro_r2|registro\(2))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(2),
	datac => \i_BancoReg|Registro_r3|registro\(2),
	datad => \i_BancoReg|Mux21~2_combout\,
	combout => \i_BancoReg|Mux21~combout\);

-- Location: LCCOMB_X20_Y17_N10
\i_Mux_A|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux13~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(2))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(2))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux21~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(2),
	datab => \estado_act.DECOD~regout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux21~combout\,
	combout => \i_Mux_A|Mux13~0_combout\);

-- Location: LCFF_X19_Y17_N1
\i_PC|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_Mux_PC|Mux11~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(4));

-- Location: LCFF_X21_Y18_N31
\i_BancoReg|Registro_r3|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux11~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(4));

-- Location: LCFF_X21_Y18_N17
\i_BancoReg|Registro_r1|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux11~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(4));

-- Location: LCFF_X20_Y16_N31
\i_BancoReg|Registro_r7|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux11~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(4));

-- Location: LCFF_X21_Y16_N11
\i_BancoReg|Registro_r5|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux11~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(4));

-- Location: LCCOMB_X20_Y16_N30
\i_BancoReg|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux19~1_combout\ = (\i_BancoReg|Mux19~0_combout\ & (((\i_BancoReg|Registro_r7|registro\(4))) # (!\i_IR|registro\(10)))) # (!\i_BancoReg|Mux19~0_combout\ & (\i_IR|registro\(10) & ((\i_BancoReg|Registro_r5|registro\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux19~0_combout\,
	datab => \i_IR|registro\(10),
	datac => \i_BancoReg|Registro_r7|registro\(4),
	datad => \i_BancoReg|Registro_r5|registro\(4),
	combout => \i_BancoReg|Mux19~1_combout\);

-- Location: LCCOMB_X20_Y17_N22
\i_BancoReg|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux19~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux19~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(4))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (\i_BancoReg|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Mux23~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(4),
	datad => \i_BancoReg|Mux19~1_combout\,
	combout => \i_BancoReg|Mux19~2_combout\);

-- Location: LCCOMB_X19_Y17_N10
\i_BancoReg|Mux19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux19~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux19~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(4)))) # (!\i_BancoReg|Mux19~2_combout\ & (\i_BancoReg|Registro_r2|registro\(4))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(4),
	datab => \i_BancoReg|Registro_r3|registro\(4),
	datac => \i_BancoReg|Mux23~0_combout\,
	datad => \i_BancoReg|Mux19~2_combout\,
	combout => \i_BancoReg|Mux19~combout\);

-- Location: LCCOMB_X19_Y17_N4
\i_Mux_A|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux11~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(4))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(4))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux19~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.DECOD~regout\,
	datab => \i_PC|registro\(4),
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux19~combout\,
	combout => \i_Mux_A|Mux11~0_combout\);

-- Location: LCCOMB_X19_Y17_N6
\i_Mux_A|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux10~0_combout\ = (\estado_act.FETCH~regout\ & (\i_PC|registro\(5))) # (!\estado_act.FETCH~regout\ & ((\estado_act.DECOD~regout\ & (\i_PC|registro\(5))) # (!\estado_act.DECOD~regout\ & ((\i_BancoReg|Mux18~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(5),
	datab => \estado_act.FETCH~regout\,
	datac => \estado_act.DECOD~regout\,
	datad => \i_BancoReg|Mux18~combout\,
	combout => \i_Mux_A|Mux10~0_combout\);

-- Location: LCFF_X21_Y19_N25
\i_BancoReg|Registro_r3|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux7~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(8));

-- Location: LCFF_X21_Y18_N15
\i_BancoReg|Registro_r1|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux7~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(8));

-- Location: LCFF_X22_Y17_N27
\i_BancoReg|Registro_r7|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux7~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(8));

-- Location: LCCOMB_X21_Y15_N14
\i_BancoReg|Registro_r6|registro[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r6|registro[8]~feeder_combout\ = \i_Mux_Banco|Mux7~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux7~2_combout\,
	combout => \i_BancoReg|Registro_r6|registro[8]~feeder_combout\);

-- Location: LCFF_X21_Y15_N15
\i_BancoReg|Registro_r6|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r6|registro[8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(8));

-- Location: LCCOMB_X21_Y15_N10
\i_BancoReg|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux15~0_combout\ = (\i_IR|registro\(11) & (((\i_BancoReg|Registro_r6|registro\(8)) # (\i_IR|registro\(10))))) # (!\i_IR|registro\(11) & (\i_BancoReg|Registro_r4|registro\(8) & ((!\i_IR|registro\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(8),
	datab => \i_BancoReg|Registro_r6|registro\(8),
	datac => \i_IR|registro\(11),
	datad => \i_IR|registro\(10),
	combout => \i_BancoReg|Mux15~0_combout\);

-- Location: LCCOMB_X21_Y16_N20
\i_BancoReg|Registro_r5|registro[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r5|registro[8]~feeder_combout\ = \i_Mux_Banco|Mux7~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux7~2_combout\,
	combout => \i_BancoReg|Registro_r5|registro[8]~feeder_combout\);

-- Location: LCFF_X21_Y16_N21
\i_BancoReg|Registro_r5|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r5|registro[8]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(8));

-- Location: LCCOMB_X22_Y17_N12
\i_BancoReg|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux15~1_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Mux15~0_combout\ & (\i_BancoReg|Registro_r7|registro\(8))) # (!\i_BancoReg|Mux15~0_combout\ & ((\i_BancoReg|Registro_r5|registro\(8)))))) # (!\i_IR|registro\(10) & 
-- (((\i_BancoReg|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_BancoReg|Registro_r7|registro\(8),
	datac => \i_BancoReg|Mux15~0_combout\,
	datad => \i_BancoReg|Registro_r5|registro\(8),
	combout => \i_BancoReg|Mux15~1_combout\);

-- Location: LCCOMB_X21_Y19_N12
\i_BancoReg|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux15~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux15~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(8))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (((\i_BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(8),
	datac => \i_BancoReg|Mux23~2_combout\,
	datad => \i_BancoReg|Mux15~1_combout\,
	combout => \i_BancoReg|Mux15~2_combout\);

-- Location: LCCOMB_X21_Y19_N22
\i_BancoReg|Mux15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux15~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux15~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(8)))) # (!\i_BancoReg|Mux15~2_combout\ & (\i_BancoReg|Registro_r2|registro\(8))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(8),
	datac => \i_BancoReg|Registro_r3|registro\(8),
	datad => \i_BancoReg|Mux15~2_combout\,
	combout => \i_BancoReg|Mux15~combout\);

-- Location: LCCOMB_X20_Y19_N12
\i_Mux_A|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux7~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(8))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(8))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux15~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(8),
	datab => \estado_act.DECOD~regout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux15~combout\,
	combout => \i_Mux_A|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y17_N18
\SelBanco[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SelBanco[1]~1_combout\ = (!\estado_act.JALR3~regout\ & !\estado_act.LUI3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.JALR3~regout\,
	datad => \estado_act.LUI3~regout\,
	combout => \SelBanco[1]~1_combout\);

-- Location: LCCOMB_X25_Y18_N4
\i_BancoReg|Registro_r3|registro[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r3|registro[12]~feeder_combout\ = \i_Mux_Banco|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux3~1_combout\,
	combout => \i_BancoReg|Registro_r3|registro[12]~feeder_combout\);

-- Location: LCFF_X25_Y18_N5
\i_BancoReg|Registro_r3|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r3|registro[12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(12));

-- Location: LCFF_X24_Y16_N31
\i_BancoReg|Registro_r5|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(12));

-- Location: LCFF_X24_Y16_N17
\i_BancoReg|Registro_r7|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(12));

-- Location: LCFF_X23_Y16_N3
\i_BancoReg|Registro_r6|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(12));

-- Location: LCFF_X23_Y16_N13
\i_BancoReg|Registro_r4|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux3~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(12));

-- Location: LCCOMB_X23_Y16_N12
\i_BancoReg|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux27~0_combout\ = (\i_IR|registro\(7) & (((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & ((\i_IR|registro\(8) & (\i_BancoReg|Registro_r6|registro\(12))) # (!\i_IR|registro\(8) & ((\i_BancoReg|Registro_r4|registro\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r6|registro\(12),
	datac => \i_BancoReg|Registro_r4|registro\(12),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux27~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\i_BancoReg|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux27~1_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Mux27~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(12)))) # (!\i_BancoReg|Mux27~0_combout\ & (\i_BancoReg|Registro_r5|registro\(12))))) # (!\i_IR|registro\(7) & 
-- (((\i_BancoReg|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r5|registro\(12),
	datac => \i_BancoReg|Registro_r7|registro\(12),
	datad => \i_BancoReg|Mux27~0_combout\,
	combout => \i_BancoReg|Mux27~1_combout\);

-- Location: LCCOMB_X25_Y18_N0
\i_BancoReg|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux27~2_combout\ = (\i_BancoReg|Mux36~2_combout\ & (((\i_BancoReg|Mux27~1_combout\) # (!\i_BancoReg|Mux36~1_combout\)))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(12) & ((\i_BancoReg|Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~2_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(12),
	datac => \i_BancoReg|Mux27~1_combout\,
	datad => \i_BancoReg|Mux36~1_combout\,
	combout => \i_BancoReg|Mux27~2_combout\);

-- Location: LCCOMB_X25_Y18_N22
\i_BancoReg|Mux27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux27~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux27~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(12)))) # (!\i_BancoReg|Mux27~2_combout\ & (\i_BancoReg|Registro_r2|registro\(12))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(12),
	datab => \i_BancoReg|Registro_r3|registro\(12),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux27~2_combout\,
	combout => \i_BancoReg|Mux27~combout\);

-- Location: LCCOMB_X16_Y16_N8
\i_RAM|ram_block~36feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~36feeder_combout\ = \i_BancoReg|Mux27~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux27~combout\,
	combout => \i_RAM|ram_block~36feeder_combout\);

-- Location: LCFF_X16_Y16_N9
\i_RAM|ram_block~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~36feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~36_regout\);

-- Location: LCFF_X16_Y18_N27
\i_RAM|ram_block~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux30~combout\,
	sload => VCC,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~33_regout\);

-- Location: LCCOMB_X18_Y15_N2
\i_RAM|dout[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[9]~9_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a9\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~33_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a9\,
	datab => \i_RAM|ram_block~33_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[9]~9_combout\);

-- Location: LCCOMB_X18_Y15_N8
\i_RAM|ram_block_rtl_0_bypass[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[22]~feeder_combout\ = \i_BancoReg|Mux30~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux30~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[22]~feeder_combout\);

-- Location: LCFF_X18_Y15_N9
\i_RAM|ram_block_rtl_0_bypass[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(22));

-- Location: LCFF_X18_Y15_N3
\i_RAM|dout[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[9]~9_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(22),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(9));

-- Location: LCCOMB_X18_Y19_N22
\i_Mux_Banco|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux6~1_combout\ = (\i_Mux_Banco|Mux15~0_combout\ & (((\i_Mux_Banco|Mux15~1_combout\)))) # (!\i_Mux_Banco|Mux15~0_combout\ & ((\i_Mux_Banco|Mux15~1_combout\ & ((\i_RAM|dout\(9)))) # (!\i_Mux_Banco|Mux15~1_combout\ & (\switches~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(9),
	datab => \i_Mux_Banco|Mux15~0_combout\,
	datac => \i_Mux_Banco|Mux15~1_combout\,
	datad => \i_RAM|dout\(9),
	combout => \i_Mux_Banco|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y19_N28
\i_Mux_Banco|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux6~2_combout\ = (\i_Mux_Banco|Mux15~0_combout\ & ((\i_Mux_Banco|Mux6~1_combout\ & ((\i_PC|registro\(9)))) # (!\i_Mux_Banco|Mux6~1_combout\ & (\i_Reg|registro\(9))))) # (!\i_Mux_Banco|Mux15~0_combout\ & (((\i_Mux_Banco|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(9),
	datab => \i_Mux_Banco|Mux15~0_combout\,
	datac => \i_Mux_Banco|Mux6~1_combout\,
	datad => \i_PC|registro\(9),
	combout => \i_Mux_Banco|Mux6~2_combout\);

-- Location: LCCOMB_X21_Y19_N26
\i_Mux_Banco|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux6~3_combout\ = (\i_Mux_Banco|Mux6~0_combout\ & ((\i_Mux_Banco|Mux6~2_combout\))) # (!\i_Mux_Banco|Mux6~0_combout\ & (\i_IR|registro\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Banco|Mux6~0_combout\,
	datab => \i_IR|registro\(3),
	datad => \i_Mux_Banco|Mux6~2_combout\,
	combout => \i_Mux_Banco|Mux6~3_combout\);

-- Location: LCFF_X21_Y19_N11
\i_BancoReg|Registro_r2|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux6~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(9));

-- Location: LCFF_X21_Y18_N7
\i_BancoReg|Registro_r1|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux6~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(9));

-- Location: LCCOMB_X21_Y15_N30
\i_BancoReg|Registro_r6|registro[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r6|registro[9]~feeder_combout\ = \i_Mux_Banco|Mux6~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux6~3_combout\,
	combout => \i_BancoReg|Registro_r6|registro[9]~feeder_combout\);

-- Location: LCFF_X21_Y15_N31
\i_BancoReg|Registro_r6|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r6|registro[9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(9));

-- Location: LCCOMB_X23_Y15_N12
\i_BancoReg|Registro_r7|registro[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r7|registro[9]~feeder_combout\ = \i_Mux_Banco|Mux6~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux6~3_combout\,
	combout => \i_BancoReg|Registro_r7|registro[9]~feeder_combout\);

-- Location: LCFF_X23_Y15_N13
\i_BancoReg|Registro_r7|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r7|registro[9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(9));

-- Location: LCCOMB_X21_Y15_N0
\i_BancoReg|Registro_r4|registro[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r4|registro[9]~feeder_combout\ = \i_Mux_Banco|Mux6~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux6~3_combout\,
	combout => \i_BancoReg|Registro_r4|registro[9]~feeder_combout\);

-- Location: LCFF_X21_Y15_N1
\i_BancoReg|Registro_r4|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r4|registro[9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(9));

-- Location: LCFF_X21_Y16_N19
\i_BancoReg|Registro_r5|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux6~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(9));

-- Location: LCCOMB_X21_Y15_N22
\i_BancoReg|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux30~0_combout\ = (\i_IR|registro\(8) & (((\i_IR|registro\(7))))) # (!\i_IR|registro\(8) & ((\i_IR|registro\(7) & ((\i_BancoReg|Registro_r5|registro\(9)))) # (!\i_IR|registro\(7) & (\i_BancoReg|Registro_r4|registro\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(8),
	datab => \i_BancoReg|Registro_r4|registro\(9),
	datac => \i_IR|registro\(7),
	datad => \i_BancoReg|Registro_r5|registro\(9),
	combout => \i_BancoReg|Mux30~0_combout\);

-- Location: LCCOMB_X21_Y15_N24
\i_BancoReg|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux30~1_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux30~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(9)))) # (!\i_BancoReg|Mux30~0_combout\ & (\i_BancoReg|Registro_r6|registro\(9))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(8),
	datab => \i_BancoReg|Registro_r6|registro\(9),
	datac => \i_BancoReg|Registro_r7|registro\(9),
	datad => \i_BancoReg|Mux30~0_combout\,
	combout => \i_BancoReg|Mux30~1_combout\);

-- Location: LCCOMB_X21_Y18_N6
\i_BancoReg|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux30~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux30~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(9))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(9),
	datad => \i_BancoReg|Mux30~1_combout\,
	combout => \i_BancoReg|Mux30~2_combout\);

-- Location: LCCOMB_X16_Y18_N28
\i_BancoReg|Mux30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux30~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux30~2_combout\ & (\i_BancoReg|Registro_r3|registro\(9))) # (!\i_BancoReg|Mux30~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(9)))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(9),
	datab => \i_BancoReg|Registro_r2|registro\(9),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux30~2_combout\,
	combout => \i_BancoReg|Mux30~combout\);

-- Location: LCFF_X22_Y18_N11
\i_IR|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a4\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(4));

-- Location: LCFF_X18_Y17_N1
\i_Reg|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux5~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(10));

-- Location: LCFF_X22_Y18_N9
\i_IR|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a5\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(5));

-- Location: LCCOMB_X18_Y16_N20
\i_Mux_Banco|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux4~0_combout\ = (\SelBanco[1]~1_combout\ & (\i_Reg|registro\(11) & ((!\SelBanco[0]~0_combout\)))) # (!\SelBanco[1]~1_combout\ & (((\i_PC|registro\(11)) # (\SelBanco[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(11),
	datab => \i_PC|registro\(11),
	datac => \SelBanco[1]~1_combout\,
	datad => \SelBanco[0]~0_combout\,
	combout => \i_Mux_Banco|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\i_Mux_Banco|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux4~1_combout\ = (\SelBanco[0]~0_combout\ & ((\i_Mux_Banco|Mux4~0_combout\ & ((\i_IR|registro\(5)))) # (!\i_Mux_Banco|Mux4~0_combout\ & (\i_Mux_Peri|Selector4~0_combout\)))) # (!\SelBanco[0]~0_combout\ & (((\i_Mux_Banco|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Peri|Selector4~0_combout\,
	datab => \SelBanco[0]~0_combout\,
	datac => \i_IR|registro\(5),
	datad => \i_Mux_Banco|Mux4~0_combout\,
	combout => \i_Mux_Banco|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y15_N8
\i_BancoReg|Registro_r3|registro[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r3|registro[11]~feeder_combout\ = \i_Mux_Banco|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux4~1_combout\,
	combout => \i_BancoReg|Registro_r3|registro[11]~feeder_combout\);

-- Location: LCFF_X24_Y15_N9
\i_BancoReg|Registro_r3|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r3|registro[11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(11));

-- Location: LCFF_X25_Y15_N27
\i_BancoReg|Registro_r1|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(11));

-- Location: LCFF_X23_Y15_N19
\i_BancoReg|Registro_r6|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(11));

-- Location: LCFF_X23_Y15_N5
\i_BancoReg|Registro_r7|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(11));

-- Location: LCCOMB_X24_Y16_N22
\i_BancoReg|Registro_r5|registro[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r5|registro[11]~feeder_combout\ = \i_Mux_Banco|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux4~1_combout\,
	combout => \i_BancoReg|Registro_r5|registro[11]~feeder_combout\);

-- Location: LCFF_X24_Y16_N23
\i_BancoReg|Registro_r5|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r5|registro[11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(11));

-- Location: LCCOMB_X24_Y16_N28
\i_BancoReg|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux28~0_combout\ = (\i_IR|registro\(7) & (((\i_BancoReg|Registro_r5|registro\(11)) # (\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & (\i_BancoReg|Registro_r4|registro\(11) & ((!\i_IR|registro\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(11),
	datab => \i_BancoReg|Registro_r5|registro\(11),
	datac => \i_IR|registro\(7),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux28~0_combout\);

-- Location: LCCOMB_X23_Y15_N22
\i_BancoReg|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux28~1_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux28~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(11)))) # (!\i_BancoReg|Mux28~0_combout\ & (\i_BancoReg|Registro_r6|registro\(11))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(8),
	datab => \i_BancoReg|Registro_r6|registro\(11),
	datac => \i_BancoReg|Registro_r7|registro\(11),
	datad => \i_BancoReg|Mux28~0_combout\,
	combout => \i_BancoReg|Mux28~1_combout\);

-- Location: LCCOMB_X25_Y15_N28
\i_BancoReg|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux28~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux28~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(11))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (((\i_BancoReg|Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(11),
	datac => \i_BancoReg|Mux36~2_combout\,
	datad => \i_BancoReg|Mux28~1_combout\,
	combout => \i_BancoReg|Mux28~2_combout\);

-- Location: LCCOMB_X24_Y15_N26
\i_BancoReg|Mux28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux28~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux28~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(11)))) # (!\i_BancoReg|Mux28~2_combout\ & (\i_BancoReg|Registro_r2|registro\(11))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(11),
	datab => \i_BancoReg|Mux36~0_combout\,
	datac => \i_BancoReg|Registro_r3|registro\(11),
	datad => \i_BancoReg|Mux28~2_combout\,
	combout => \i_BancoReg|Mux28~combout\);

-- Location: LCFF_X25_Y15_N15
\i_BancoReg|Registro_r1|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(13));

-- Location: LCCOMB_X23_Y15_N30
\i_BancoReg|Registro_r7|registro[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r7|registro[13]~feeder_combout\ = \i_Mux_Banco|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux2~1_combout\,
	combout => \i_BancoReg|Registro_r7|registro[13]~feeder_combout\);

-- Location: LCFF_X23_Y15_N31
\i_BancoReg|Registro_r7|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r7|registro[13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(13));

-- Location: LCCOMB_X24_Y16_N12
\i_BancoReg|Registro_r5|registro[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r5|registro[13]~feeder_combout\ = \i_Mux_Banco|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux2~1_combout\,
	combout => \i_BancoReg|Registro_r5|registro[13]~feeder_combout\);

-- Location: LCFF_X24_Y16_N13
\i_BancoReg|Registro_r5|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r5|registro[13]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(13));

-- Location: LCCOMB_X23_Y16_N0
\i_BancoReg|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux10~0_combout\ = (\i_IR|registro\(10) & (((\i_BancoReg|Registro_r5|registro\(13)) # (\i_IR|registro\(11))))) # (!\i_IR|registro\(10) & (\i_BancoReg|Registro_r4|registro\(13) & ((!\i_IR|registro\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(13),
	datab => \i_BancoReg|Registro_r5|registro\(13),
	datac => \i_IR|registro\(10),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y15_N14
\i_BancoReg|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux10~1_combout\ = (\i_IR|registro\(11) & ((\i_BancoReg|Mux10~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(13)))) # (!\i_BancoReg|Mux10~0_combout\ & (\i_BancoReg|Registro_r6|registro\(13))))) # (!\i_IR|registro\(11) & 
-- (((\i_BancoReg|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(13),
	datab => \i_BancoReg|Registro_r7|registro\(13),
	datac => \i_IR|registro\(11),
	datad => \i_BancoReg|Mux10~0_combout\,
	combout => \i_BancoReg|Mux10~1_combout\);

-- Location: LCCOMB_X24_Y15_N10
\i_BancoReg|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux10~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux10~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(13))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (((\i_BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(13),
	datac => \i_BancoReg|Mux23~2_combout\,
	datad => \i_BancoReg|Mux10~1_combout\,
	combout => \i_BancoReg|Mux10~2_combout\);

-- Location: LCCOMB_X24_Y15_N16
\i_BancoReg|Mux10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux10~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux10~2_combout\ & (\i_BancoReg|Registro_r3|registro\(13))) # (!\i_BancoReg|Mux10~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(13)))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(13),
	datab => \i_BancoReg|Registro_r2|registro\(13),
	datac => \i_BancoReg|Mux23~0_combout\,
	datad => \i_BancoReg|Mux10~2_combout\,
	combout => \i_BancoReg|Mux10~combout\);

-- Location: LCCOMB_X25_Y16_N12
\i_Mux_A|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux2~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(13))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(13))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux10~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.DECOD~regout\,
	datab => \i_PC|registro\(13),
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux10~combout\,
	combout => \i_Mux_A|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\i_Mux_B|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux15~1_combout\ = (\estado_act.FETCH~regout\) # ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux39~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \i_IR|registro\(0),
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux39~combout\,
	combout => \i_Mux_B|Mux15~1_combout\);

-- Location: LCCOMB_X22_Y16_N8
\WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (!\estado_act.ADDI3~regout\ & (!\estado_act.LWSW3~regout\ & !\estado_act.DECOD~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.ADDI3~regout\,
	datab => \estado_act.LWSW3~regout\,
	datad => \estado_act.DECOD~regout\,
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X24_Y18_N28
\i_Mux_B|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux14~1_combout\ = (\i_IR|registro\(1) & (!\estado_act.FETCH~regout\ & !\WideOr10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_IR|registro\(1),
	datac => \estado_act.FETCH~regout\,
	datad => \WideOr10~0_combout\,
	combout => \i_Mux_B|Mux14~1_combout\);

-- Location: LCCOMB_X22_Y16_N14
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\estado_act.ADDI3~regout\ & (!\estado_act.LWSW3~regout\ & (!\estado_act.FETCH~regout\ & !\estado_act.DECOD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.ADDI3~regout\,
	datab => \estado_act.LWSW3~regout\,
	datac => \estado_act.FETCH~regout\,
	datad => \estado_act.DECOD~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\i_Mux_B|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux14~2_combout\ = (\i_Mux_B|Mux14~1_combout\) # ((\WideOr1~0_combout\ & \i_BancoReg|Mux38~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Mux_B|Mux14~1_combout\,
	datac => \WideOr1~0_combout\,
	datad => \i_BancoReg|Mux38~combout\,
	combout => \i_Mux_B|Mux14~2_combout\);

-- Location: LCCOMB_X20_Y18_N14
\i_Mux_B|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux13~1_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux37~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \i_IR|registro\(2),
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux37~combout\,
	combout => \i_Mux_B|Mux13~1_combout\);

-- Location: LCCOMB_X20_Y18_N28
\i_Mux_B|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux12~1_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux36~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \i_IR|registro\(3),
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux36~combout\,
	combout => \i_Mux_B|Mux12~1_combout\);

-- Location: LCCOMB_X22_Y18_N24
\i_Mux_B|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux11~1_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux35~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(4),
	datab => \WideOr10~0_combout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux35~combout\,
	combout => \i_Mux_B|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y18_N26
\i_Mux_B|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux10~1_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux34~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.FETCH~regout\,
	datab => \i_IR|registro\(5),
	datac => \i_BancoReg|Mux34~combout\,
	datad => \WideOr10~0_combout\,
	combout => \i_Mux_B|Mux10~1_combout\);

-- Location: LCCOMB_X22_Y18_N22
\i_Mux_B|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux9~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux33~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.FETCH~regout\,
	datab => \WideOr10~0_combout\,
	datac => \i_IR|registro\(6),
	datad => \i_BancoReg|Mux33~combout\,
	combout => \i_Mux_B|Mux9~0_combout\);

-- Location: LCCOMB_X20_Y18_N12
\i_Mux_B|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux8~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux32~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr10~0_combout\,
	datab => \i_IR|registro\(6),
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux32~combout\,
	combout => \i_Mux_B|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\i_Mux_B|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux7~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux31~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.FETCH~regout\,
	datab => \WideOr10~0_combout\,
	datac => \i_IR|registro\(6),
	datad => \i_BancoReg|Mux31~combout\,
	combout => \i_Mux_B|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y18_N0
\i_Mux_B|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux6~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux30~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.FETCH~regout\,
	datab => \WideOr10~0_combout\,
	datac => \i_IR|registro\(6),
	datad => \i_BancoReg|Mux30~combout\,
	combout => \i_Mux_B|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\i_Mux_B|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux5~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux29~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(6),
	datab => \WideOr10~0_combout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux29~combout\,
	combout => \i_Mux_B|Mux5~0_combout\);

-- Location: LCCOMB_X25_Y18_N30
\i_Mux_B|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux4~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux28~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(6),
	datab => \WideOr10~0_combout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux28~combout\,
	combout => \i_Mux_B|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\i_Mux_B|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux3~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux27~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(6),
	datab => \WideOr10~0_combout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux27~combout\,
	combout => \i_Mux_B|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y18_N10
\i_Mux_B|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux2~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux26~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(6),
	datab => \WideOr10~0_combout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux26~combout\,
	combout => \i_Mux_B|Mux2~0_combout\);

-- Location: LCFF_X23_Y17_N23
\i_BancoReg|Registro_r2|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux0~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(15));

-- Location: LCCOMB_X23_Y17_N4
\i_BancoReg|Registro_r1|registro[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r1|registro[15]~feeder_combout\ = \i_Mux_Banco|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux0~1_combout\,
	combout => \i_BancoReg|Registro_r1|registro[15]~feeder_combout\);

-- Location: LCFF_X23_Y17_N5
\i_BancoReg|Registro_r1|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r1|registro[15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(15));

-- Location: LCCOMB_X23_Y15_N20
\i_BancoReg|Registro_r7|registro[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r7|registro[15]~feeder_combout\ = \i_Mux_Banco|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux0~1_combout\,
	combout => \i_BancoReg|Registro_r7|registro[15]~feeder_combout\);

-- Location: LCFF_X23_Y15_N21
\i_BancoReg|Registro_r7|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r7|registro[15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(15));

-- Location: LCCOMB_X23_Y16_N4
\i_BancoReg|Registro_r4|registro[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r4|registro[15]~feeder_combout\ = \i_Mux_Banco|Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux0~1_combout\,
	combout => \i_BancoReg|Registro_r4|registro[15]~feeder_combout\);

-- Location: LCFF_X23_Y16_N5
\i_BancoReg|Registro_r4|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r4|registro[15]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(15));

-- Location: LCCOMB_X23_Y16_N10
\i_BancoReg|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux24~0_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Registro_r5|registro\(15)) # ((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & (((\i_BancoReg|Registro_r4|registro\(15) & !\i_IR|registro\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r5|registro\(15),
	datab => \i_BancoReg|Registro_r4|registro\(15),
	datac => \i_IR|registro\(7),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux24~0_combout\);

-- Location: LCCOMB_X23_Y15_N6
\i_BancoReg|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux24~1_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux24~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(15)))) # (!\i_BancoReg|Mux24~0_combout\ & (\i_BancoReg|Registro_r6|registro\(15))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(15),
	datab => \i_IR|registro\(8),
	datac => \i_BancoReg|Registro_r7|registro\(15),
	datad => \i_BancoReg|Mux24~0_combout\,
	combout => \i_BancoReg|Mux24~1_combout\);

-- Location: LCCOMB_X23_Y17_N18
\i_BancoReg|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux24~2_combout\ = (\i_BancoReg|Mux36~2_combout\ & (((\i_BancoReg|Mux24~1_combout\) # (!\i_BancoReg|Mux36~1_combout\)))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(15) & ((\i_BancoReg|Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~2_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(15),
	datac => \i_BancoReg|Mux24~1_combout\,
	datad => \i_BancoReg|Mux36~1_combout\,
	combout => \i_BancoReg|Mux24~2_combout\);

-- Location: LCCOMB_X23_Y17_N20
\i_BancoReg|Mux24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux24~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux24~2_combout\ & (\i_BancoReg|Registro_r3|registro\(15))) # (!\i_BancoReg|Mux24~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(15)))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(15),
	datab => \i_BancoReg|Registro_r2|registro\(15),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux24~2_combout\,
	combout => \i_BancoReg|Mux24~combout\);

-- Location: LCCOMB_X23_Y17_N0
\i_Mux_B|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux0~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux24~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(6),
	datab => \estado_act.FETCH~regout\,
	datac => \i_BancoReg|Mux24~combout\,
	datad => \WideOr10~0_combout\,
	combout => \i_Mux_B|Mux0~0_combout\);

-- Location: DSPMULT_X28_Y18_N0
\i_ALU|i3|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \i_ALU|i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X28_Y18_N2
\i_ALU|i3|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \i_ALU|i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y17_N26
\i_ALU|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux6~8_combout\ = (\i_IR|registro\(2) & (\estado_act.ARIT3~regout\ & ((\Selector14~0_combout\) # (\i_IR|registro\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \i_IR|registro\(1),
	datac => \i_IR|registro\(2),
	datad => \estado_act.ARIT3~regout\,
	combout => \i_ALU|Mux6~8_combout\);

-- Location: LCCOMB_X18_Y16_N30
\i_ALU|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux1~0_combout\ = (\i_ALU|Mux6~3_combout\ & (((\i_Mux_A|Mux0~0_combout\)) # (!\i_ALU|Mux6~8_combout\))) # (!\i_ALU|Mux6~3_combout\ & (\i_ALU|Mux6~8_combout\ & ((\i_Mux_A|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_ALU|Mux6~8_combout\,
	datac => \i_Mux_A|Mux0~0_combout\,
	datad => \i_Mux_A|Mux2~0_combout\,
	combout => \i_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\i_IR|registro\(13) & (\i_IR|registro\(14) & (\i_IR|registro\(15) & \estado_act.DECOD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(13),
	datab => \i_IR|registro\(14),
	datac => \i_IR|registro\(15),
	datad => \estado_act.DECOD~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X24_Y18_N11
\estado_act.BEQ3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.BEQ3~regout\);

-- Location: LCCOMB_X23_Y18_N28
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\estado_act.BEQ3~regout\) # ((\i_IR|registro\(0) & \estado_act.ARIT3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_act.BEQ3~regout\,
	datac => \i_IR|registro\(0),
	datad => \estado_act.ARIT3~regout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\i_ALU|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux6~2_combout\ = (\i_IR|registro\(1) & \estado_act.ARIT3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_IR|registro\(1),
	datad => \estado_act.ARIT3~regout\,
	combout => \i_ALU|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y18_N12
\i_ALU|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Equal0~8_combout\ = (!\op_ALU[2]~0_combout\ & (!\Selector14~0_combout\ & (!\op_ALU[3]~1_combout\ & !\i_ALU|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[2]~0_combout\,
	datab => \Selector14~0_combout\,
	datac => \op_ALU[3]~1_combout\,
	datad => \i_ALU|Mux6~2_combout\,
	combout => \i_ALU|Equal0~8_combout\);

-- Location: LCCOMB_X18_Y16_N8
\i_ALU|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux1~1_combout\ = (\i_ALU|Mux1~0_combout\ & (\i_Mux_B|Mux1~0_combout\ $ (\i_Mux_A|Mux1~0_combout\ $ (\i_ALU|Equal0~8_combout\)))) # (!\i_ALU|Mux1~0_combout\ & (\i_Mux_B|Mux1~0_combout\ & (\i_Mux_A|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux1~0_combout\,
	datab => \i_Mux_A|Mux1~0_combout\,
	datac => \i_ALU|Equal0~8_combout\,
	datad => \i_ALU|Mux1~0_combout\,
	combout => \i_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y18_N2
\i_ALU|i1|b_i[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|b_i\(1) = \i_ALU|Equal0~8_combout\ $ (((\i_Mux_B|Mux14~1_combout\) # ((\WideOr1~0_combout\ & \i_BancoReg|Mux38~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_B|Mux14~1_combout\,
	datac => \WideOr1~0_combout\,
	datad => \i_BancoReg|Mux38~combout\,
	combout => \i_ALU|i1|b_i\(1));

-- Location: LCCOMB_X19_Y18_N4
\i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\i_Mux_A|Mux15~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_B|Mux15~1_combout\,
	datad => \i_Mux_A|Mux15~0_combout\,
	combout => \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X19_Y18_N6
\i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_ALU|Equal0~8_combout\) # (\i_Mux_B|Mux15~1_combout\ $ (\i_Mux_A|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_B|Mux15~1_combout\,
	datad => \i_Mux_A|Mux15~0_combout\,
	combout => \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N30
\i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux14~0_combout\ & (((\i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\) # (!\i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\)) # (!\i_ALU|i1|b_i\(1)))) # 
-- (!\i_Mux_A|Mux14~0_combout\ & (!\i_ALU|i1|b_i\(1) & ((\i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\) # (!\i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux14~0_combout\,
	datab => \i_ALU|i1|b_i\(1),
	datac => \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datad => \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N16
\i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux13~0_combout\ & ((\i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux13~1_combout\)))) # (!\i_Mux_A|Mux13~0_combout\ & 
-- (\i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_A|Mux13~0_combout\,
	datac => \i_Mux_B|Mux13~1_combout\,
	datad => \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N22
\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\i_Mux_A|Mux12~0_combout\) # (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux12~1_combout\)))) # 
-- (!\i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_Mux_A|Mux12~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_B|Mux12~1_combout\,
	datac => \i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datad => \i_Mux_A|Mux12~0_combout\,
	combout => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N0
\i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux11~0_combout\ & ((\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux11~1_combout\)))) # (!\i_Mux_A|Mux11~0_combout\ & 
-- (\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_A|Mux11~0_combout\,
	datac => \i_Mux_B|Mux11~1_combout\,
	datad => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N18
\i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux10~0_combout\ & ((\i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_Mux_B|Mux10~1_combout\ $ (!\i_ALU|Equal0~8_combout\)))) # (!\i_Mux_A|Mux10~0_combout\ & 
-- (\i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_Mux_B|Mux10~1_combout\ $ (!\i_ALU|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux10~1_combout\,
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_A|Mux10~0_combout\,
	datad => \i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux9~0_combout\ & ((\i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux9~0_combout\)))) # (!\i_Mux_A|Mux9~0_combout\ & 
-- (\i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_B|Mux9~0_combout\,
	datac => \i_Mux_A|Mux9~0_combout\,
	datad => \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N2
\i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux8~0_combout\ & ((\i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_Mux_B|Mux8~0_combout\ $ (!\i_ALU|Equal0~8_combout\)))) # (!\i_Mux_A|Mux8~0_combout\ & 
-- (\i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_Mux_B|Mux8~0_combout\ $ (!\i_ALU|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux8~0_combout\,
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_A|Mux8~0_combout\,
	datad => \i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X19_Y18_N20
\i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux7~0_combout\ & ((\i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_Mux_B|Mux7~0_combout\ $ (!\i_ALU|Equal0~8_combout\)))) # (!\i_Mux_A|Mux7~0_combout\ & 
-- (\i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_Mux_B|Mux7~0_combout\ $ (!\i_ALU|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux7~0_combout\,
	datab => \i_Mux_B|Mux7~0_combout\,
	datac => \i_ALU|Equal0~8_combout\,
	datad => \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X18_Y18_N0
\i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux6~0_combout\ & ((\i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_Mux_B|Mux6~0_combout\ $ (!\i_ALU|Equal0~8_combout\)))) # (!\i_Mux_A|Mux6~0_combout\ & 
-- (\i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_Mux_B|Mux6~0_combout\ $ (!\i_ALU|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux6~0_combout\,
	datab => \i_Mux_B|Mux6~0_combout\,
	datac => \i_ALU|Equal0~8_combout\,
	datad => \i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X18_Y18_N18
\i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux5~0_combout\ & ((\i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux5~0_combout\)))) # (!\i_Mux_A|Mux5~0_combout\ & 
-- (\i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_B|Mux5~0_combout\,
	datac => \i_Mux_A|Mux5~0_combout\,
	datad => \i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X18_Y18_N12
\i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux4~0_combout\ & ((\i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_Mux_B|Mux4~0_combout\ $ (!\i_ALU|Equal0~8_combout\)))) # (!\i_Mux_A|Mux4~0_combout\ & 
-- (\i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_Mux_B|Mux4~0_combout\ $ (!\i_ALU|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux4~0_combout\,
	datab => \i_Mux_B|Mux4~0_combout\,
	datac => \i_ALU|Equal0~8_combout\,
	datad => \i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X18_Y18_N10
\i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux3~0_combout\ & ((\i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_Mux_B|Mux3~0_combout\ $ (!\i_ALU|Equal0~8_combout\)))) # (!\i_Mux_A|Mux3~0_combout\ & 
-- (\i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_Mux_B|Mux3~0_combout\ $ (!\i_ALU|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux3~0_combout\,
	datab => \i_Mux_B|Mux3~0_combout\,
	datac => \i_ALU|Equal0~8_combout\,
	datad => \i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X18_Y18_N28
\i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux2~0_combout\ & ((\i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux2~0_combout\)))) # (!\i_Mux_A|Mux2~0_combout\ & 
-- (\i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (!\i_Mux_B|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux2~0_combout\,
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_B|Mux2~0_combout\,
	datad => \i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X18_Y16_N18
\i_ALU|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux1~2_combout\ = (\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux1~0_combout\)) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux1~1_combout\ $ (((!\i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\) # (!\i_ALU|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_ALU|Mux1~0_combout\,
	datac => \i_ALU|Mux1~1_combout\,
	datad => \i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|Mux1~2_combout\);

-- Location: LCCOMB_X18_Y16_N14
\i_ALU|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux1~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & (\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT14\)) # (!\i_ALU|Mux6~4_combout\ & ((\i_ALU|Mux1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[3]~1_combout\,
	datab => \i_ALU|Mux6~4_combout\,
	datac => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \i_ALU|Mux1~2_combout\,
	combout => \i_ALU|Mux1~3_combout\);

-- Location: LCFF_X18_Y16_N15
\i_Reg|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux1~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(14));

-- Location: LCCOMB_X19_Y16_N4
\i_Mux_Banco|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux1~0_combout\ = (\SelBanco[1]~1_combout\ & ((\SelBanco[0]~0_combout\ & (\i_Mux_Peri|Selector1~0_combout\)) # (!\SelBanco[0]~0_combout\ & ((\i_Reg|registro\(14)))))) # (!\SelBanco[1]~1_combout\ & (((\SelBanco[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Peri|Selector1~0_combout\,
	datab => \SelBanco[1]~1_combout\,
	datac => \SelBanco[0]~0_combout\,
	datad => \i_Reg|registro\(14),
	combout => \i_Mux_Banco|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y16_N2
\i_Mux_Banco|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux1~1_combout\ = (\SelBanco[1]~1_combout\ & (((\i_Mux_Banco|Mux1~0_combout\)))) # (!\SelBanco[1]~1_combout\ & ((\i_Mux_Banco|Mux1~0_combout\ & (\i_IR|registro\(8))) # (!\i_Mux_Banco|Mux1~0_combout\ & ((\i_PC|registro\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(8),
	datab => \i_PC|registro\(14),
	datac => \SelBanco[1]~1_combout\,
	datad => \i_Mux_Banco|Mux1~0_combout\,
	combout => \i_Mux_Banco|Mux1~1_combout\);

-- Location: LCFF_X23_Y17_N15
\i_BancoReg|Registro_r2|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(14));

-- Location: LCFF_X21_Y16_N1
\i_BancoReg|Registro_r5|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(14));

-- Location: LCFF_X20_Y16_N11
\i_BancoReg|Registro_r7|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(14));

-- Location: LCCOMB_X20_Y16_N10
\i_BancoReg|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux25~1_combout\ = (\i_BancoReg|Mux25~0_combout\ & (((\i_BancoReg|Registro_r7|registro\(14)) # (!\i_IR|registro\(7))))) # (!\i_BancoReg|Mux25~0_combout\ & (\i_BancoReg|Registro_r5|registro\(14) & ((\i_IR|registro\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux25~0_combout\,
	datab => \i_BancoReg|Registro_r5|registro\(14),
	datac => \i_BancoReg|Registro_r7|registro\(14),
	datad => \i_IR|registro\(7),
	combout => \i_BancoReg|Mux25~1_combout\);

-- Location: LCFF_X23_Y17_N13
\i_BancoReg|Registro_r1|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(14));

-- Location: LCCOMB_X23_Y17_N10
\i_BancoReg|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux25~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Mux25~1_combout\)) # (!\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Registro_r1|registro\(14)))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Mux25~1_combout\,
	datad => \i_BancoReg|Registro_r1|registro\(14),
	combout => \i_BancoReg|Mux25~2_combout\);

-- Location: LCCOMB_X23_Y17_N28
\i_BancoReg|Mux25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux25~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux25~2_combout\ & (\i_BancoReg|Registro_r3|registro\(14))) # (!\i_BancoReg|Mux25~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(14)))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(14),
	datab => \i_BancoReg|Registro_r2|registro\(14),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux25~2_combout\,
	combout => \i_BancoReg|Mux25~combout\);

-- Location: LCCOMB_X23_Y17_N2
\i_Mux_B|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_B|Mux1~0_combout\ = (!\estado_act.FETCH~regout\ & ((\WideOr10~0_combout\ & ((\i_BancoReg|Mux25~combout\))) # (!\WideOr10~0_combout\ & (\i_IR|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(6),
	datab => \WideOr10~0_combout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux25~combout\,
	combout => \i_Mux_B|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y18_N2
\i_ALU|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux2~0_combout\ = (\i_ALU|Mux6~3_combout\ & (\i_ALU|Equal0~8_combout\ $ (\i_Mux_B|Mux2~0_combout\ $ (\i_Mux_A|Mux2~0_combout\)))) # (!\i_ALU|Mux6~3_combout\ & (((!\i_Mux_A|Mux2~0_combout\) # (!\i_Mux_B|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_ALU|Mux6~3_combout\,
	datac => \i_Mux_B|Mux2~0_combout\,
	datad => \i_Mux_A|Mux2~0_combout\,
	combout => \i_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y18_N22
\i_ALU|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux2~1_combout\ = (\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux6~3_combout\)) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux2~0_combout\ $ (((\i_ALU|Mux6~3_combout\ & !\i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_ALU|Mux6~8_combout\,
	datac => \i_ALU|Mux2~0_combout\,
	datad => \i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X18_Y16_N28
\i_ALU|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux2~2_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux2~1_combout\ & ((\i_Mux_A|Mux1~0_combout\))) # (!\i_ALU|Mux2~1_combout\ & (\i_Mux_A|Mux3~0_combout\)))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux3~0_combout\,
	datab => \i_Mux_A|Mux1~0_combout\,
	datac => \i_ALU|Mux6~8_combout\,
	datad => \i_ALU|Mux2~1_combout\,
	combout => \i_ALU|Mux2~2_combout\);

-- Location: LCCOMB_X18_Y16_N24
\i_ALU|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux2~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & (\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT13\)) # (!\i_ALU|Mux6~4_combout\ & ((\i_ALU|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[3]~1_combout\,
	datab => \i_ALU|Mux6~4_combout\,
	datac => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \i_ALU|Mux2~2_combout\,
	combout => \i_ALU|Mux2~3_combout\);

-- Location: LCCOMB_X19_Y16_N12
\i_PC|registro[13]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[13]~7_combout\ = (SelPC(0) & ((\i_ALU|Mux2~3_combout\))) # (!SelPC(0) & (\i_Reg|registro\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(13),
	datab => SelPC(0),
	datad => \i_ALU|Mux2~3_combout\,
	combout => \i_PC|registro[13]~7_combout\);

-- Location: LCFF_X19_Y16_N13
\i_PC|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[13]~7_combout\,
	sdata => \i_BancoReg|Mux10~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(13));

-- Location: LCCOMB_X19_Y16_N20
\i_Mux_Banco|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux2~0_combout\ = (\SelBanco[1]~1_combout\ & (\i_Reg|registro\(13) & (!\SelBanco[0]~0_combout\))) # (!\SelBanco[1]~1_combout\ & (((\SelBanco[0]~0_combout\) # (\i_PC|registro\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(13),
	datab => \SelBanco[1]~1_combout\,
	datac => \SelBanco[0]~0_combout\,
	datad => \i_PC|registro\(13),
	combout => \i_Mux_Banco|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y16_N24
\i_Mux_Banco|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux2~1_combout\ = (\SelBanco[0]~0_combout\ & ((\i_Mux_Banco|Mux2~0_combout\ & ((\i_IR|registro\(7)))) # (!\i_Mux_Banco|Mux2~0_combout\ & (\i_Mux_Peri|Selector2~0_combout\)))) # (!\SelBanco[0]~0_combout\ & (((\i_Mux_Banco|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Peri|Selector2~0_combout\,
	datab => \SelBanco[0]~0_combout\,
	datac => \i_Mux_Banco|Mux2~0_combout\,
	datad => \i_IR|registro\(7),
	combout => \i_Mux_Banco|Mux2~1_combout\);

-- Location: LCFF_X25_Y15_N25
\i_BancoReg|Registro_r2|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(13));

-- Location: LCFF_X23_Y16_N7
\i_BancoReg|Registro_r4|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(13));

-- Location: LCCOMB_X23_Y16_N6
\i_BancoReg|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux26~0_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Registro_r5|registro\(13)) # ((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & (((\i_BancoReg|Registro_r4|registro\(13) & !\i_IR|registro\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r5|registro\(13),
	datac => \i_BancoReg|Registro_r4|registro\(13),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux26~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\i_BancoReg|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux26~1_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux26~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(13)))) # (!\i_BancoReg|Mux26~0_combout\ & (\i_BancoReg|Registro_r6|registro\(13))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(13),
	datab => \i_BancoReg|Registro_r7|registro\(13),
	datac => \i_IR|registro\(8),
	datad => \i_BancoReg|Mux26~0_combout\,
	combout => \i_BancoReg|Mux26~1_combout\);

-- Location: LCCOMB_X24_Y15_N14
\i_BancoReg|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux26~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux26~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(13))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (((\i_BancoReg|Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(13),
	datac => \i_BancoReg|Mux36~2_combout\,
	datad => \i_BancoReg|Mux26~1_combout\,
	combout => \i_BancoReg|Mux26~2_combout\);

-- Location: LCCOMB_X24_Y15_N28
\i_BancoReg|Mux26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux26~combout\ = (\i_BancoReg|Mux26~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(13)) # ((!\i_BancoReg|Mux36~0_combout\)))) # (!\i_BancoReg|Mux26~2_combout\ & (((\i_BancoReg|Registro_r2|registro\(13) & \i_BancoReg|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(13),
	datab => \i_BancoReg|Registro_r2|registro\(13),
	datac => \i_BancoReg|Mux26~2_combout\,
	datad => \i_BancoReg|Mux36~0_combout\,
	combout => \i_BancoReg|Mux26~combout\);

-- Location: LCCOMB_X16_Y16_N2
\i_RAM|dout[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[10]~10_combout\ = (\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a10\))) # (!\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block~34_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block~34_regout\,
	datab => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a10\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[10]~10_combout\);

-- Location: LCFF_X16_Y15_N3
\i_RAM|ram_block_rtl_0_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux29~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(23));

-- Location: LCFF_X16_Y16_N3
\i_RAM|dout[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[10]~10_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(23),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(10));

-- Location: LCCOMB_X16_Y17_N14
\i_Mux_Peri|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Peri|Selector5~0_combout\ = (\i_RAM|dout\(10) & !\i_Reg|registro\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RAM|dout\(10),
	datad => \i_Reg|registro\(15),
	combout => \i_Mux_Peri|Selector5~0_combout\);

-- Location: LCCOMB_X16_Y17_N0
\i_Mux_Banco|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux5~0_combout\ = (\SelBanco[1]~1_combout\ & ((\SelBanco[0]~0_combout\ & ((\i_Mux_Peri|Selector5~0_combout\))) # (!\SelBanco[0]~0_combout\ & (\i_Reg|registro\(10))))) # (!\SelBanco[1]~1_combout\ & (((\SelBanco[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBanco[1]~1_combout\,
	datab => \i_Reg|registro\(10),
	datac => \i_Mux_Peri|Selector5~0_combout\,
	datad => \SelBanco[0]~0_combout\,
	combout => \i_Mux_Banco|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y17_N22
\i_Mux_Banco|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux5~1_combout\ = (\SelBanco[1]~1_combout\ & (((\i_Mux_Banco|Mux5~0_combout\)))) # (!\SelBanco[1]~1_combout\ & ((\i_Mux_Banco|Mux5~0_combout\ & ((\i_IR|registro\(4)))) # (!\i_Mux_Banco|Mux5~0_combout\ & (\i_PC|registro\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBanco[1]~1_combout\,
	datab => \i_PC|registro\(10),
	datac => \i_IR|registro\(4),
	datad => \i_Mux_Banco|Mux5~0_combout\,
	combout => \i_Mux_Banco|Mux5~1_combout\);

-- Location: LCCOMB_X25_Y18_N28
\i_BancoReg|Registro_r3|registro[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r3|registro[10]~feeder_combout\ = \i_Mux_Banco|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux5~1_combout\,
	combout => \i_BancoReg|Registro_r3|registro[10]~feeder_combout\);

-- Location: LCFF_X25_Y18_N29
\i_BancoReg|Registro_r3|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r3|registro[10]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(10));

-- Location: LCCOMB_X25_Y18_N18
\i_BancoReg|Registro_r1|registro[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r1|registro[10]~feeder_combout\ = \i_Mux_Banco|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux5~1_combout\,
	combout => \i_BancoReg|Registro_r1|registro[10]~feeder_combout\);

-- Location: LCFF_X25_Y18_N19
\i_BancoReg|Registro_r1|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r1|registro[10]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(10));

-- Location: LCFF_X24_Y16_N15
\i_BancoReg|Registro_r7|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(10));

-- Location: LCFF_X24_Y16_N9
\i_BancoReg|Registro_r5|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(10));

-- Location: LCFF_X23_Y16_N15
\i_BancoReg|Registro_r4|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(10));

-- Location: LCFF_X23_Y16_N29
\i_BancoReg|Registro_r6|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux5~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(10));

-- Location: LCCOMB_X23_Y16_N28
\i_BancoReg|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux29~0_combout\ = (\i_IR|registro\(7) & (((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & ((\i_IR|registro\(8) & ((\i_BancoReg|Registro_r6|registro\(10)))) # (!\i_IR|registro\(8) & (\i_BancoReg|Registro_r4|registro\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r4|registro\(10),
	datac => \i_BancoReg|Registro_r6|registro\(10),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux29~0_combout\);

-- Location: LCCOMB_X24_Y16_N4
\i_BancoReg|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux29~1_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Mux29~0_combout\ & (\i_BancoReg|Registro_r7|registro\(10))) # (!\i_BancoReg|Mux29~0_combout\ & ((\i_BancoReg|Registro_r5|registro\(10)))))) # (!\i_IR|registro\(7) & 
-- (((\i_BancoReg|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r7|registro\(10),
	datac => \i_BancoReg|Registro_r5|registro\(10),
	datad => \i_BancoReg|Mux29~0_combout\,
	combout => \i_BancoReg|Mux29~1_combout\);

-- Location: LCCOMB_X25_Y18_N12
\i_BancoReg|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux29~2_combout\ = (\i_BancoReg|Mux36~2_combout\ & (((\i_BancoReg|Mux29~1_combout\) # (!\i_BancoReg|Mux36~1_combout\)))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(10) & ((\i_BancoReg|Mux36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~2_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(10),
	datac => \i_BancoReg|Mux29~1_combout\,
	datad => \i_BancoReg|Mux36~1_combout\,
	combout => \i_BancoReg|Mux29~2_combout\);

-- Location: LCCOMB_X25_Y18_N6
\i_BancoReg|Mux29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux29~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux29~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(10)))) # (!\i_BancoReg|Mux29~2_combout\ & (\i_BancoReg|Registro_r2|registro\(10))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(10),
	datab => \i_BancoReg|Registro_r3|registro\(10),
	datac => \i_BancoReg|Mux36~0_combout\,
	datad => \i_BancoReg|Mux29~2_combout\,
	combout => \i_BancoReg|Mux29~combout\);

-- Location: LCCOMB_X16_Y16_N22
\i_RAM|dout[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[12]~12_combout\ = (\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a12\))) # (!\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block~36_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block~23_regout\,
	datab => \i_RAM|ram_block~36_regout\,
	datad => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a12\,
	combout => \i_RAM|dout[12]~12_combout\);

-- Location: LCCOMB_X16_Y15_N26
\i_RAM|ram_block_rtl_0_bypass[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[25]~feeder_combout\ = \i_BancoReg|Mux27~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux27~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[25]~feeder_combout\);

-- Location: LCFF_X16_Y15_N27
\i_RAM|ram_block_rtl_0_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(25));

-- Location: LCFF_X16_Y16_N23
\i_RAM|dout[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[12]~12_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(25),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(12));

-- Location: LCCOMB_X22_Y16_N22
\i_Mux_Peri|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Peri|Selector3~0_combout\ = (\i_RAM|dout\(12) & !\i_Reg|registro\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RAM|dout\(12),
	datad => \i_Reg|registro\(15),
	combout => \i_Mux_Peri|Selector3~0_combout\);

-- Location: LCCOMB_X22_Y16_N26
\i_Mux_Banco|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux3~0_combout\ = (\SelBanco[0]~0_combout\ & (((\i_Mux_Peri|Selector3~0_combout\) # (!\SelBanco[1]~1_combout\)))) # (!\SelBanco[0]~0_combout\ & (\i_Reg|registro\(12) & (\SelBanco[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(12),
	datab => \SelBanco[0]~0_combout\,
	datac => \SelBanco[1]~1_combout\,
	datad => \i_Mux_Peri|Selector3~0_combout\,
	combout => \i_Mux_Banco|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y18_N20
\i_ALU|i1|GenSum:12:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:12:i_Sumador1Bit|s_i~combout\ = \i_Mux_A|Mux3~0_combout\ $ (\i_Mux_B|Mux3~0_combout\ $ (\i_ALU|Equal0~8_combout\ $ (\i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux3~0_combout\,
	datab => \i_Mux_B|Mux3~0_combout\,
	datac => \i_ALU|Equal0~8_combout\,
	datad => \i_ALU|i1|GenSum:11:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:12:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X18_Y16_N26
\i_ALU|i4|res~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i4|res~1_combout\ = (\i_Mux_B|Mux3~0_combout\ & \i_Mux_A|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_Mux_B|Mux3~0_combout\,
	datad => \i_Mux_A|Mux3~0_combout\,
	combout => \i_ALU|i4|res~1_combout\);

-- Location: LCCOMB_X18_Y16_N16
\i_ALU|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux3~0_combout\ = (\i_ALU|Mux6~3_combout\ & (\i_ALU|Mux6~8_combout\)) # (!\i_ALU|Mux6~3_combout\ & ((\i_ALU|Mux6~8_combout\ & (\i_Mux_A|Mux4~0_combout\)) # (!\i_ALU|Mux6~8_combout\ & ((!\i_ALU|i4|res~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_ALU|Mux6~8_combout\,
	datac => \i_Mux_A|Mux4~0_combout\,
	datad => \i_ALU|i4|res~1_combout\,
	combout => \i_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y16_N2
\i_ALU|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux3~1_combout\ = (\i_ALU|Mux6~3_combout\ & ((\i_ALU|Mux3~0_combout\ & (\i_Mux_A|Mux2~0_combout\)) # (!\i_ALU|Mux3~0_combout\ & ((!\i_ALU|i1|GenSum:12:i_Sumador1Bit|s_i~combout\))))) # (!\i_ALU|Mux6~3_combout\ & (((\i_ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_Mux_A|Mux2~0_combout\,
	datac => \i_ALU|i1|GenSum:12:i_Sumador1Bit|s_i~combout\,
	datad => \i_ALU|Mux3~0_combout\,
	combout => \i_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y16_N10
\i_ALU|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux3~2_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & (\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT12\)) # (!\i_ALU|Mux6~4_combout\ & ((\i_ALU|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[3]~1_combout\,
	datab => \i_ALU|Mux6~4_combout\,
	datac => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \i_ALU|Mux3~1_combout\,
	combout => \i_ALU|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y16_N10
\i_PC|registro[12]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[12]~6_combout\ = (SelPC(0) & ((\i_ALU|Mux3~2_combout\))) # (!SelPC(0) & (\i_Reg|registro\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(12),
	datab => SelPC(0),
	datad => \i_ALU|Mux3~2_combout\,
	combout => \i_PC|registro[12]~6_combout\);

-- Location: LCFF_X19_Y16_N11
\i_PC|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[12]~6_combout\,
	sdata => \i_BancoReg|Mux11~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(12));

-- Location: LCCOMB_X22_Y16_N6
\i_Mux_Banco|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux3~1_combout\ = (\SelBanco[1]~1_combout\ & (\i_Mux_Banco|Mux3~0_combout\)) # (!\SelBanco[1]~1_combout\ & ((\i_Mux_Banco|Mux3~0_combout\ & ((\i_IR|registro\(6)))) # (!\i_Mux_Banco|Mux3~0_combout\ & (\i_PC|registro\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBanco[1]~1_combout\,
	datab => \i_Mux_Banco|Mux3~0_combout\,
	datac => \i_PC|registro\(12),
	datad => \i_IR|registro\(6),
	combout => \i_Mux_Banco|Mux3~1_combout\);

-- Location: LCCOMB_X25_Y18_N26
\i_BancoReg|Registro_r1|registro[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r1|registro[12]~feeder_combout\ = \i_Mux_Banco|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux3~1_combout\,
	combout => \i_BancoReg|Registro_r1|registro[12]~feeder_combout\);

-- Location: LCFF_X25_Y18_N27
\i_BancoReg|Registro_r1|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r1|registro[12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(12));

-- Location: LCCOMB_X23_Y16_N2
\i_BancoReg|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux11~0_combout\ = (\i_IR|registro\(10) & (\i_IR|registro\(11))) # (!\i_IR|registro\(10) & ((\i_IR|registro\(11) & (\i_BancoReg|Registro_r6|registro\(12))) # (!\i_IR|registro\(11) & ((\i_BancoReg|Registro_r4|registro\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_IR|registro\(11),
	datac => \i_BancoReg|Registro_r6|registro\(12),
	datad => \i_BancoReg|Registro_r4|registro\(12),
	combout => \i_BancoReg|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\i_BancoReg|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux11~1_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Mux11~0_combout\ & (\i_BancoReg|Registro_r7|registro\(12))) # (!\i_BancoReg|Mux11~0_combout\ & ((\i_BancoReg|Registro_r5|registro\(12)))))) # (!\i_IR|registro\(10) & 
-- (((\i_BancoReg|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r7|registro\(12),
	datab => \i_BancoReg|Registro_r5|registro\(12),
	datac => \i_IR|registro\(10),
	datad => \i_BancoReg|Mux11~0_combout\,
	combout => \i_BancoReg|Mux11~1_combout\);

-- Location: LCCOMB_X23_Y16_N20
\i_BancoReg|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux11~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux11~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(12))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (\i_BancoReg|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Mux23~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(12),
	datad => \i_BancoReg|Mux11~1_combout\,
	combout => \i_BancoReg|Mux11~2_combout\);

-- Location: LCCOMB_X25_Y15_N2
\i_BancoReg|Registro_r2|registro[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r2|registro[12]~feeder_combout\ = \i_Mux_Banco|Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux3~1_combout\,
	combout => \i_BancoReg|Registro_r2|registro[12]~feeder_combout\);

-- Location: LCFF_X25_Y15_N3
\i_BancoReg|Registro_r2|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r2|registro[12]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(12));

-- Location: LCCOMB_X23_Y16_N30
\i_BancoReg|Mux11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux11~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux11~2_combout\ & (\i_BancoReg|Registro_r3|registro\(12))) # (!\i_BancoReg|Mux11~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(12)))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(12),
	datab => \i_BancoReg|Mux23~0_combout\,
	datac => \i_BancoReg|Mux11~2_combout\,
	datad => \i_BancoReg|Registro_r2|registro\(12),
	combout => \i_BancoReg|Mux11~combout\);

-- Location: LCCOMB_X22_Y16_N12
\i_Mux_A|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux3~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(12))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(12))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux11~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(12),
	datab => \estado_act.DECOD~regout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux11~combout\,
	combout => \i_Mux_A|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y17_N16
\i_ALU|i4|res~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i4|res~2_combout\ = (\i_Mux_A|Mux4~0_combout\ & \i_Mux_B|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Mux_A|Mux4~0_combout\,
	datac => \i_Mux_B|Mux4~0_combout\,
	combout => \i_ALU|i4|res~2_combout\);

-- Location: LCCOMB_X18_Y18_N8
\i_ALU|i1|GenSum:11:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:11:i_Sumador1Bit|s_i~combout\ = \i_Mux_A|Mux4~0_combout\ $ (\i_Mux_B|Mux4~0_combout\ $ (\i_ALU|Equal0~8_combout\ $ (\i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux4~0_combout\,
	datab => \i_Mux_B|Mux4~0_combout\,
	datac => \i_ALU|Equal0~8_combout\,
	datad => \i_ALU|i1|GenSum:10:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:11:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X18_Y16_N12
\i_ALU|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux4~0_combout\ = (\i_ALU|Mux6~3_combout\ & (((\i_ALU|Mux6~8_combout\) # (!\i_ALU|i1|GenSum:11:i_Sumador1Bit|s_i~combout\)))) # (!\i_ALU|Mux6~3_combout\ & (!\i_ALU|i4|res~2_combout\ & (!\i_ALU|Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_ALU|i4|res~2_combout\,
	datac => \i_ALU|Mux6~8_combout\,
	datad => \i_ALU|i1|GenSum:11:i_Sumador1Bit|s_i~combout\,
	combout => \i_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y16_N22
\i_ALU|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux4~1_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux4~0_combout\ & (\i_Mux_A|Mux3~0_combout\)) # (!\i_ALU|Mux4~0_combout\ & ((\i_Mux_A|Mux5~0_combout\))))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux3~0_combout\,
	datab => \i_ALU|Mux6~8_combout\,
	datac => \i_Mux_A|Mux5~0_combout\,
	datad => \i_ALU|Mux4~0_combout\,
	combout => \i_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y16_N6
\i_ALU|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux4~2_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & (\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT11\)) # (!\i_ALU|Mux6~4_combout\ & ((\i_ALU|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[3]~1_combout\,
	datab => \i_ALU|Mux6~4_combout\,
	datac => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \i_ALU|Mux4~1_combout\,
	combout => \i_ALU|Mux4~2_combout\);

-- Location: LCFF_X18_Y16_N7
\i_Reg|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux4~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(11));

-- Location: LCCOMB_X18_Y19_N0
\i_PC|registro[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[11]~5_combout\ = (SelPC(0) & ((\i_ALU|Mux4~2_combout\))) # (!SelPC(0) & (\i_Reg|registro\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SelPC(0),
	datab => \i_Reg|registro\(11),
	datad => \i_ALU|Mux4~2_combout\,
	combout => \i_PC|registro[11]~5_combout\);

-- Location: LCCOMB_X20_Y17_N12
\i_BancoReg|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux23~1_combout\ = (\i_IR|registro\(12)) # ((\i_IR|registro\(10) & !\i_IR|registro\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_IR|registro\(12),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux23~1_combout\);

-- Location: LCCOMB_X23_Y16_N8
\i_BancoReg|Registro_r4|registro[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r4|registro[11]~feeder_combout\ = \i_Mux_Banco|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux4~1_combout\,
	combout => \i_BancoReg|Registro_r4|registro[11]~feeder_combout\);

-- Location: LCFF_X23_Y16_N9
\i_BancoReg|Registro_r4|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r4|registro[11]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(11));

-- Location: LCCOMB_X23_Y16_N16
\i_BancoReg|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux12~0_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Registro_r5|registro\(11)) # ((\i_IR|registro\(11))))) # (!\i_IR|registro\(10) & (((\i_BancoReg|Registro_r4|registro\(11) & !\i_IR|registro\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_BancoReg|Registro_r5|registro\(11),
	datac => \i_BancoReg|Registro_r4|registro\(11),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\i_BancoReg|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux12~1_combout\ = (\i_IR|registro\(11) & ((\i_BancoReg|Mux12~0_combout\ & (\i_BancoReg|Registro_r7|registro\(11))) # (!\i_BancoReg|Mux12~0_combout\ & ((\i_BancoReg|Registro_r6|registro\(11)))))) # (!\i_IR|registro\(11) & 
-- (((\i_BancoReg|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(11),
	datab => \i_BancoReg|Registro_r7|registro\(11),
	datac => \i_BancoReg|Mux12~0_combout\,
	datad => \i_BancoReg|Registro_r6|registro\(11),
	combout => \i_BancoReg|Mux12~1_combout\);

-- Location: LCCOMB_X24_Y15_N18
\i_BancoReg|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux12~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux12~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(11))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (((\i_BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r1|registro\(11),
	datab => \i_BancoReg|Mux23~1_combout\,
	datac => \i_BancoReg|Mux23~2_combout\,
	datad => \i_BancoReg|Mux12~1_combout\,
	combout => \i_BancoReg|Mux12~2_combout\);

-- Location: LCCOMB_X24_Y15_N12
\i_BancoReg|Mux12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux12~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux12~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(11)))) # (!\i_BancoReg|Mux12~2_combout\ & (\i_BancoReg|Registro_r2|registro\(11))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(11),
	datab => \i_BancoReg|Registro_r3|registro\(11),
	datac => \i_BancoReg|Mux23~0_combout\,
	datad => \i_BancoReg|Mux12~2_combout\,
	combout => \i_BancoReg|Mux12~combout\);

-- Location: LCFF_X18_Y19_N1
\i_PC|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[11]~5_combout\,
	sdata => \i_BancoReg|Mux12~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(11));

-- Location: LCCOMB_X25_Y16_N10
\i_Mux_A|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux4~0_combout\ = (\estado_act.DECOD~regout\ & (((\i_PC|registro\(11))))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(11))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux12~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.DECOD~regout\,
	datab => \estado_act.FETCH~regout\,
	datac => \i_PC|registro\(11),
	datad => \i_BancoReg|Mux12~combout\,
	combout => \i_Mux_A|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y18_N2
\i_ALU|i1|GenSum:10:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:10:i_Sumador1Bit|s_i~combout\ = \i_ALU|Equal0~8_combout\ $ (\i_Mux_B|Mux5~0_combout\ $ (\i_Mux_A|Mux5~0_combout\ $ (\i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_B|Mux5~0_combout\,
	datac => \i_Mux_A|Mux5~0_combout\,
	datad => \i_ALU|i1|GenSum:9:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:10:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X18_Y17_N24
\i_ALU|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux5~1_combout\ = (\i_ALU|Mux5~0_combout\ & ((\i_Mux_A|Mux4~0_combout\) # ((!\i_ALU|Mux6~3_combout\)))) # (!\i_ALU|Mux5~0_combout\ & (((\i_ALU|Mux6~3_combout\ & !\i_ALU|i1|GenSum:10:i_Sumador1Bit|s_i~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux5~0_combout\,
	datab => \i_Mux_A|Mux4~0_combout\,
	datac => \i_ALU|Mux6~3_combout\,
	datad => \i_ALU|i1|GenSum:10:i_Sumador1Bit|s_i~combout\,
	combout => \i_ALU|Mux5~1_combout\);

-- Location: LCCOMB_X18_Y17_N0
\i_ALU|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux5~2_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & ((\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT10\))) # (!\i_ALU|Mux6~4_combout\ & (\i_ALU|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|Mux5~1_combout\,
	datad => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \i_ALU|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y16_N8
\i_PC|registro[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[10]~4_combout\ = (SelPC(0) & ((\i_ALU|Mux5~2_combout\))) # (!SelPC(0) & (\i_Reg|registro\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(10),
	datab => SelPC(0),
	datad => \i_ALU|Mux5~2_combout\,
	combout => \i_PC|registro[10]~4_combout\);

-- Location: LCCOMB_X23_Y16_N14
\i_BancoReg|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux13~0_combout\ = (\i_IR|registro\(10) & (((\i_IR|registro\(11))))) # (!\i_IR|registro\(10) & ((\i_IR|registro\(11) & (\i_BancoReg|Registro_r6|registro\(10))) # (!\i_IR|registro\(11) & ((\i_BancoReg|Registro_r4|registro\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_BancoReg|Registro_r6|registro\(10),
	datac => \i_BancoReg|Registro_r4|registro\(10),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux13~0_combout\);

-- Location: LCCOMB_X23_Y16_N26
\i_BancoReg|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux13~1_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Mux13~0_combout\ & (\i_BancoReg|Registro_r7|registro\(10))) # (!\i_BancoReg|Mux13~0_combout\ & ((\i_BancoReg|Registro_r5|registro\(10)))))) # (!\i_IR|registro\(10) & 
-- (((\i_BancoReg|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_BancoReg|Registro_r7|registro\(10),
	datac => \i_BancoReg|Registro_r5|registro\(10),
	datad => \i_BancoReg|Mux13~0_combout\,
	combout => \i_BancoReg|Mux13~1_combout\);

-- Location: LCCOMB_X23_Y16_N24
\i_BancoReg|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux13~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux13~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(10))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (((\i_BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r1|registro\(10),
	datab => \i_BancoReg|Mux23~1_combout\,
	datac => \i_BancoReg|Mux23~2_combout\,
	datad => \i_BancoReg|Mux13~1_combout\,
	combout => \i_BancoReg|Mux13~2_combout\);

-- Location: LCCOMB_X23_Y16_N22
\i_BancoReg|Mux13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux13~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux13~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(10)))) # (!\i_BancoReg|Mux13~2_combout\ & (\i_BancoReg|Registro_r2|registro\(10))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(10),
	datab => \i_BancoReg|Mux23~0_combout\,
	datac => \i_BancoReg|Mux13~2_combout\,
	datad => \i_BancoReg|Registro_r3|registro\(10),
	combout => \i_BancoReg|Mux13~combout\);

-- Location: LCFF_X19_Y16_N9
\i_PC|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[10]~4_combout\,
	sdata => \i_BancoReg|Mux13~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(10));

-- Location: LCCOMB_X19_Y16_N26
\i_Mux_A|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux5~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(10))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(10))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux13~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.DECOD~regout\,
	datab => \i_PC|registro\(10),
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux13~combout\,
	combout => \i_Mux_A|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y17_N2
\i_ALU|i4|res~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i4|res~4_combout\ = (\i_Mux_A|Mux6~0_combout\ & \i_Mux_B|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Mux_A|Mux6~0_combout\,
	datac => \i_Mux_B|Mux6~0_combout\,
	combout => \i_ALU|i4|res~4_combout\);

-- Location: LCCOMB_X18_Y17_N18
\i_ALU|i1|GenSum:9:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:9:i_Sumador1Bit|s_i~combout\ = \i_ALU|Equal0~8_combout\ $ (\i_Mux_A|Mux6~0_combout\ $ (\i_Mux_B|Mux6~0_combout\ $ (\i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_A|Mux6~0_combout\,
	datac => \i_Mux_B|Mux6~0_combout\,
	datad => \i_ALU|i1|GenSum:8:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:9:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X18_Y17_N12
\i_ALU|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux6~5_combout\ = (\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux6~3_combout\)))) # (!\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux6~3_combout\ & ((!\i_ALU|i1|GenSum:9:i_Sumador1Bit|s_i~combout\))) # (!\i_ALU|Mux6~3_combout\ & (!\i_ALU|i4|res~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_ALU|i4|res~4_combout\,
	datac => \i_ALU|Mux6~3_combout\,
	datad => \i_ALU|i1|GenSum:9:i_Sumador1Bit|s_i~combout\,
	combout => \i_ALU|Mux6~5_combout\);

-- Location: LCCOMB_X18_Y17_N22
\i_ALU|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux6~6_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux6~5_combout\ & ((\i_Mux_A|Mux5~0_combout\))) # (!\i_ALU|Mux6~5_combout\ & (\i_Mux_A|Mux7~0_combout\)))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_Mux_A|Mux7~0_combout\,
	datac => \i_Mux_A|Mux5~0_combout\,
	datad => \i_ALU|Mux6~5_combout\,
	combout => \i_ALU|Mux6~6_combout\);

-- Location: LCCOMB_X18_Y17_N26
\i_ALU|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux6~7_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & (\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT9\)) # (!\i_ALU|Mux6~4_combout\ & ((\i_ALU|Mux6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \i_ALU|Mux6~6_combout\,
	combout => \i_ALU|Mux6~7_combout\);

-- Location: LCFF_X18_Y17_N27
\i_Reg|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux6~7_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(9));

-- Location: LCCOMB_X18_Y19_N26
\i_PC|registro[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[9]~3_combout\ = (SelPC(0) & ((\i_ALU|Mux6~7_combout\))) # (!SelPC(0) & (\i_Reg|registro\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SelPC(0),
	datab => \i_Reg|registro\(9),
	datad => \i_ALU|Mux6~7_combout\,
	combout => \i_PC|registro[9]~3_combout\);

-- Location: LCFF_X21_Y18_N9
\i_BancoReg|Registro_r3|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux6~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(9));

-- Location: LCCOMB_X21_Y16_N18
\i_BancoReg|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux14~0_combout\ = (\i_IR|registro\(11) & (\i_IR|registro\(10))) # (!\i_IR|registro\(11) & ((\i_IR|registro\(10) & (\i_BancoReg|Registro_r5|registro\(9))) # (!\i_IR|registro\(10) & ((\i_BancoReg|Registro_r4|registro\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(11),
	datab => \i_IR|registro\(10),
	datac => \i_BancoReg|Registro_r5|registro\(9),
	datad => \i_BancoReg|Registro_r4|registro\(9),
	combout => \i_BancoReg|Mux14~0_combout\);

-- Location: LCCOMB_X22_Y15_N6
\i_BancoReg|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux14~1_combout\ = (\i_IR|registro\(11) & ((\i_BancoReg|Mux14~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(9)))) # (!\i_BancoReg|Mux14~0_combout\ & (\i_BancoReg|Registro_r6|registro\(9))))) # (!\i_IR|registro\(11) & 
-- (((\i_BancoReg|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(9),
	datab => \i_BancoReg|Registro_r7|registro\(9),
	datac => \i_IR|registro\(11),
	datad => \i_BancoReg|Mux14~0_combout\,
	combout => \i_BancoReg|Mux14~1_combout\);

-- Location: LCCOMB_X21_Y18_N0
\i_BancoReg|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux14~2_combout\ = (\i_BancoReg|Mux23~2_combout\ & (((\i_BancoReg|Mux14~1_combout\) # (!\i_BancoReg|Mux23~1_combout\)))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(9) & (\i_BancoReg|Mux23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r1|registro\(9),
	datab => \i_BancoReg|Mux23~2_combout\,
	datac => \i_BancoReg|Mux23~1_combout\,
	datad => \i_BancoReg|Mux14~1_combout\,
	combout => \i_BancoReg|Mux14~2_combout\);

-- Location: LCCOMB_X21_Y18_N8
\i_BancoReg|Mux14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux14~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux14~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(9)))) # (!\i_BancoReg|Mux14~2_combout\ & (\i_BancoReg|Registro_r2|registro\(9))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(9),
	datac => \i_BancoReg|Registro_r3|registro\(9),
	datad => \i_BancoReg|Mux14~2_combout\,
	combout => \i_BancoReg|Mux14~combout\);

-- Location: LCFF_X18_Y19_N27
\i_PC|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[9]~3_combout\,
	sdata => \i_BancoReg|Mux14~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(9));

-- Location: LCCOMB_X22_Y18_N6
\i_Mux_A|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux6~0_combout\ = (\estado_act.FETCH~regout\ & (((\i_PC|registro\(9))))) # (!\estado_act.FETCH~regout\ & ((\estado_act.DECOD~regout\ & (\i_PC|registro\(9))) # (!\estado_act.DECOD~regout\ & ((\i_BancoReg|Mux14~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.FETCH~regout\,
	datab => \estado_act.DECOD~regout\,
	datac => \i_PC|registro\(9),
	datad => \i_BancoReg|Mux14~combout\,
	combout => \i_Mux_A|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y17_N22
\i_ALU|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux7~0_combout\ = (\i_ALU|Mux6~3_combout\ & ((\i_Mux_A|Mux6~0_combout\) # ((!\i_ALU|Mux6~8_combout\)))) # (!\i_ALU|Mux6~3_combout\ & (((\i_ALU|Mux6~8_combout\ & \i_Mux_A|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_Mux_A|Mux6~0_combout\,
	datac => \i_ALU|Mux6~8_combout\,
	datad => \i_Mux_A|Mux8~0_combout\,
	combout => \i_ALU|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\i_ALU|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux7~1_combout\ = (\i_ALU|Mux7~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (\i_Mux_A|Mux7~0_combout\ $ (\i_Mux_B|Mux7~0_combout\)))) # (!\i_ALU|Mux7~0_combout\ & (((\i_Mux_A|Mux7~0_combout\ & \i_Mux_B|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_A|Mux7~0_combout\,
	datac => \i_Mux_B|Mux7~0_combout\,
	datad => \i_ALU|Mux7~0_combout\,
	combout => \i_ALU|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y18_N30
\i_ALU|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux7~2_combout\ = (\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux7~0_combout\)) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux7~1_combout\ $ (((!\i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0_combout\) # (!\i_ALU|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_ALU|Mux7~0_combout\,
	datac => \i_ALU|Mux7~1_combout\,
	datad => \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y19_N22
\i_ALU|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux7~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & ((\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT8\))) # (!\i_ALU|Mux6~4_combout\ & (\i_ALU|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[3]~1_combout\,
	datab => \i_ALU|Mux6~4_combout\,
	datac => \i_ALU|Mux7~2_combout\,
	datad => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \i_ALU|Mux7~3_combout\);

-- Location: LCFF_X23_Y19_N23
\i_Reg|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux7~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(8));

-- Location: LCCOMB_X18_Y19_N30
\i_Mux_Banco|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux7~0_combout\ = (\i_Mux_Banco|Mux15~0_combout\ & (((\i_Mux_Banco|Mux15~1_combout\) # (\i_Reg|registro\(8))))) # (!\i_Mux_Banco|Mux15~0_combout\ & (\switches~combout\(8) & (!\i_Mux_Banco|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(8),
	datab => \i_Mux_Banco|Mux15~0_combout\,
	datac => \i_Mux_Banco|Mux15~1_combout\,
	datad => \i_Reg|registro\(8),
	combout => \i_Mux_Banco|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y16_N14
\i_RAM|ram_block~32feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~32feeder_combout\ = \i_BancoReg|Mux31~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux31~combout\,
	combout => \i_RAM|ram_block~32feeder_combout\);

-- Location: LCFF_X16_Y16_N15
\i_RAM|ram_block~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~32feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~32_regout\);

-- Location: LCCOMB_X16_Y16_N24
\i_RAM|dout[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[8]~8_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a8\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~32_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a8\,
	datab => \i_RAM|ram_block~32_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[8]~8_combout\);

-- Location: LCFF_X16_Y15_N5
\i_RAM|ram_block_rtl_0_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux31~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(21));

-- Location: LCFF_X16_Y16_N25
\i_RAM|dout[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[8]~8_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(21),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(8));

-- Location: LCCOMB_X18_Y19_N8
\i_Mux_Banco|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux7~1_combout\ = (\i_Mux_Banco|Mux7~0_combout\ & ((\i_PC|registro\(8)) # ((!\i_Mux_Banco|Mux15~1_combout\)))) # (!\i_Mux_Banco|Mux7~0_combout\ & (((\i_Mux_Banco|Mux15~1_combout\ & \i_RAM|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(8),
	datab => \i_Mux_Banco|Mux7~0_combout\,
	datac => \i_Mux_Banco|Mux15~1_combout\,
	datad => \i_RAM|dout\(8),
	combout => \i_Mux_Banco|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y19_N8
\i_Mux_Banco|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux6~0_combout\ = (!\estado_act.LUI3~regout\ & ((!\estado_act.JALR3~regout\) # (!\estado_act.LW5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.LW5~regout\,
	datac => \estado_act.JALR3~regout\,
	datad => \estado_act.LUI3~regout\,
	combout => \i_Mux_Banco|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y19_N8
\i_Mux_Banco|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux7~2_combout\ = (\i_Mux_Banco|Mux6~0_combout\ & (\i_Mux_Banco|Mux7~1_combout\)) # (!\i_Mux_Banco|Mux6~0_combout\ & ((\i_IR|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_Mux_Banco|Mux7~1_combout\,
	datac => \i_IR|registro\(2),
	datad => \i_Mux_Banco|Mux6~0_combout\,
	combout => \i_Mux_Banco|Mux7~2_combout\);

-- Location: LCFF_X21_Y19_N15
\i_BancoReg|Registro_r2|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux7~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(8));

-- Location: LCCOMB_X21_Y15_N26
\i_BancoReg|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux31~0_combout\ = (\i_IR|registro\(7) & (((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & ((\i_IR|registro\(8) & ((\i_BancoReg|Registro_r6|registro\(8)))) # (!\i_IR|registro\(8) & (\i_BancoReg|Registro_r4|registro\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(8),
	datab => \i_BancoReg|Registro_r6|registro\(8),
	datac => \i_IR|registro\(7),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux31~0_combout\);

-- Location: LCCOMB_X21_Y15_N12
\i_BancoReg|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux31~1_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Mux31~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(8)))) # (!\i_BancoReg|Mux31~0_combout\ & (\i_BancoReg|Registro_r5|registro\(8))))) # (!\i_IR|registro\(7) & 
-- (((\i_BancoReg|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r5|registro\(8),
	datac => \i_BancoReg|Registro_r7|registro\(8),
	datad => \i_BancoReg|Mux31~0_combout\,
	combout => \i_BancoReg|Mux31~1_combout\);

-- Location: LCCOMB_X21_Y18_N14
\i_BancoReg|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux31~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux31~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(8))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(8),
	datad => \i_BancoReg|Mux31~1_combout\,
	combout => \i_BancoReg|Mux31~2_combout\);

-- Location: LCCOMB_X22_Y18_N30
\i_BancoReg|Mux31\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux31~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux31~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(8)))) # (!\i_BancoReg|Mux31~2_combout\ & (\i_BancoReg|Registro_r2|registro\(8))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(8),
	datac => \i_BancoReg|Registro_r3|registro\(8),
	datad => \i_BancoReg|Mux31~2_combout\,
	combout => \i_BancoReg|Mux31~combout\);

-- Location: LCCOMB_X16_Y16_N0
\i_RAM|dout[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[4]~4_combout\ = (\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a4\))) # (!\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block~28_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block~23_regout\,
	datab => \i_RAM|ram_block~28_regout\,
	datad => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \i_RAM|dout[4]~4_combout\);

-- Location: LCFF_X19_Y19_N9
\i_RAM|ram_block_rtl_0_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux35~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(17));

-- Location: LCFF_X16_Y16_N1
\i_RAM|dout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[4]~4_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(17),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(4));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(4),
	combout => \switches~combout\(4));

-- Location: LCCOMB_X22_Y17_N22
\i_Mux_Banco|Mux11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux11~combout\ = (\i_Mux_Banco|Mux11~0_combout\ & (((\switches~combout\(4)) # (\i_Mux_Banco|Mux15~0_combout\)))) # (!\i_Mux_Banco|Mux11~0_combout\ & (\i_RAM|dout\(4) & ((!\i_Mux_Banco|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Banco|Mux11~0_combout\,
	datab => \i_RAM|dout\(4),
	datac => \switches~combout\(4),
	datad => \i_Mux_Banco|Mux15~0_combout\,
	combout => \i_Mux_Banco|Mux11~combout\);

-- Location: LCCOMB_X19_Y17_N16
\i_BancoReg|Registro_r2|registro[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r2|registro[4]~feeder_combout\ = \i_Mux_Banco|Mux11~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux11~combout\,
	combout => \i_BancoReg|Registro_r2|registro[4]~feeder_combout\);

-- Location: LCFF_X19_Y17_N17
\i_BancoReg|Registro_r2|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r2|registro[4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(4));

-- Location: LCFF_X20_Y16_N29
\i_BancoReg|Registro_r4|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux11~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(4));

-- Location: LCCOMB_X20_Y16_N28
\i_BancoReg|Mux35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux35~0_combout\ = (\i_IR|registro\(7) & (((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & ((\i_IR|registro\(8) & (\i_BancoReg|Registro_r6|registro\(4))) # (!\i_IR|registro\(8) & ((\i_BancoReg|Registro_r4|registro\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(4),
	datab => \i_IR|registro\(7),
	datac => \i_BancoReg|Registro_r4|registro\(4),
	datad => \i_IR|registro\(8),
	combout => \i_BancoReg|Mux35~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\i_BancoReg|Mux35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux35~1_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Mux35~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(4)))) # (!\i_BancoReg|Mux35~0_combout\ & (\i_BancoReg|Registro_r5|registro\(4))))) # (!\i_IR|registro\(7) & 
-- (((\i_BancoReg|Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r5|registro\(4),
	datab => \i_BancoReg|Registro_r7|registro\(4),
	datac => \i_IR|registro\(7),
	datad => \i_BancoReg|Mux35~0_combout\,
	combout => \i_BancoReg|Mux35~1_combout\);

-- Location: LCCOMB_X21_Y18_N16
\i_BancoReg|Mux35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux35~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux35~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(4))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (\i_BancoReg|Mux36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~1_combout\,
	datab => \i_BancoReg|Mux36~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(4),
	datad => \i_BancoReg|Mux35~1_combout\,
	combout => \i_BancoReg|Mux35~2_combout\);

-- Location: LCCOMB_X22_Y18_N28
\i_BancoReg|Mux35\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux35~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux35~2_combout\ & (\i_BancoReg|Registro_r3|registro\(4))) # (!\i_BancoReg|Mux35~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(4)))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(4),
	datab => \i_BancoReg|Mux36~0_combout\,
	datac => \i_BancoReg|Registro_r2|registro\(4),
	datad => \i_BancoReg|Mux35~2_combout\,
	combout => \i_BancoReg|Mux35~combout\);

-- Location: LCCOMB_X18_Y15_N30
\i_RAM|dout[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[1]~1_combout\ = (\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a1\))) # (!\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block~25_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block~25_regout\,
	datab => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[1]~1_combout\);

-- Location: LCCOMB_X18_Y15_N24
\i_RAM|ram_block_rtl_0_bypass[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[14]~feeder_combout\ = \i_BancoReg|Mux38~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux38~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[14]~feeder_combout\);

-- Location: LCFF_X18_Y15_N25
\i_RAM|ram_block_rtl_0_bypass[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(14));

-- Location: LCFF_X18_Y15_N31
\i_RAM|dout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[1]~1_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(14),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(1));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(1),
	combout => \switches~combout\(1));

-- Location: LCCOMB_X21_Y17_N0
\i_Mux_Banco|Mux14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux14~combout\ = (\i_Mux_Banco|Mux14~0_combout\ & ((\i_Mux_Banco|Mux15~0_combout\) # ((\switches~combout\(1))))) # (!\i_Mux_Banco|Mux14~0_combout\ & (!\i_Mux_Banco|Mux15~0_combout\ & (\i_RAM|dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Banco|Mux14~0_combout\,
	datab => \i_Mux_Banco|Mux15~0_combout\,
	datac => \i_RAM|dout\(1),
	datad => \switches~combout\(1),
	combout => \i_Mux_Banco|Mux14~combout\);

-- Location: LCFF_X20_Y19_N25
\i_BancoReg|Registro_r2|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux14~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(1));

-- Location: LCCOMB_X20_Y16_N0
\i_BancoReg|Registro_r4|registro[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r4|registro[1]~feeder_combout\ = \i_Mux_Banco|Mux14~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux14~combout\,
	combout => \i_BancoReg|Registro_r4|registro[1]~feeder_combout\);

-- Location: LCFF_X20_Y16_N1
\i_BancoReg|Registro_r4|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r4|registro[1]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(1));

-- Location: LCCOMB_X20_Y17_N16
\i_BancoReg|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux22~0_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Registro_r5|registro\(1)) # ((\i_IR|registro\(11))))) # (!\i_IR|registro\(10) & (((\i_BancoReg|Registro_r4|registro\(1) & !\i_IR|registro\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r5|registro\(1),
	datab => \i_BancoReg|Registro_r4|registro\(1),
	datac => \i_IR|registro\(10),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux22~0_combout\);

-- Location: LCCOMB_X21_Y17_N20
\i_BancoReg|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux22~1_combout\ = (\i_IR|registro\(11) & ((\i_BancoReg|Mux22~0_combout\ & (\i_BancoReg|Registro_r7|registro\(1))) # (!\i_BancoReg|Mux22~0_combout\ & ((\i_BancoReg|Registro_r6|registro\(1)))))) # (!\i_IR|registro\(11) & 
-- (((\i_BancoReg|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r7|registro\(1),
	datab => \i_BancoReg|Registro_r6|registro\(1),
	datac => \i_IR|registro\(11),
	datad => \i_BancoReg|Mux22~0_combout\,
	combout => \i_BancoReg|Mux22~1_combout\);

-- Location: LCCOMB_X20_Y19_N30
\i_BancoReg|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux22~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux22~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(1))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (\i_BancoReg|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Mux23~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(1),
	datad => \i_BancoReg|Mux22~1_combout\,
	combout => \i_BancoReg|Mux22~2_combout\);

-- Location: LCCOMB_X20_Y19_N0
\i_BancoReg|Mux22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux22~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux22~2_combout\ & (\i_BancoReg|Registro_r3|registro\(1))) # (!\i_BancoReg|Mux22~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(1)))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(1),
	datab => \i_BancoReg|Mux23~0_combout\,
	datac => \i_BancoReg|Registro_r2|registro\(1),
	datad => \i_BancoReg|Mux22~2_combout\,
	combout => \i_BancoReg|Mux22~combout\);

-- Location: LCCOMB_X20_Y19_N2
\i_Mux_A|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux14~0_combout\ = (\estado_act.FETCH~regout\ & (\i_PC|registro\(1))) # (!\estado_act.FETCH~regout\ & ((\estado_act.DECOD~regout\ & (\i_PC|registro\(1))) # (!\estado_act.DECOD~regout\ & ((\i_BancoReg|Mux22~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.FETCH~regout\,
	datab => \i_PC|registro\(1),
	datac => \estado_act.DECOD~regout\,
	datad => \i_BancoReg|Mux22~combout\,
	combout => \i_Mux_A|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y17_N12
\i_ALU|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux8~0_combout\ = (\i_ALU|Mux6~3_combout\ & (\i_ALU|Equal0~8_combout\ $ (\i_Mux_B|Mux8~0_combout\ $ (\i_Mux_A|Mux8~0_combout\)))) # (!\i_ALU|Mux6~3_combout\ & (((\i_Mux_B|Mux8~0_combout\ & \i_Mux_A|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_B|Mux8~0_combout\,
	datac => \i_ALU|Mux6~3_combout\,
	datad => \i_Mux_A|Mux8~0_combout\,
	combout => \i_ALU|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y17_N8
\i_ALU|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux8~1_combout\ = (\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux6~3_combout\)))) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux8~0_combout\ $ (((!\i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0_combout\) # (!\i_ALU|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_ALU|Mux8~0_combout\,
	datac => \i_ALU|Mux6~3_combout\,
	datad => \i_ALU|i1|GenSum:6:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|Mux8~1_combout\);

-- Location: LCCOMB_X18_Y17_N10
\i_ALU|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux8~2_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux8~1_combout\ & (\i_Mux_A|Mux7~0_combout\)) # (!\i_ALU|Mux8~1_combout\ & ((\i_Mux_A|Mux9~0_combout\))))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_Mux_A|Mux7~0_combout\,
	datac => \i_ALU|Mux8~1_combout\,
	datad => \i_Mux_A|Mux9~0_combout\,
	combout => \i_ALU|Mux8~2_combout\);

-- Location: LCCOMB_X18_Y17_N4
\i_ALU|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux8~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & (\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!\i_ALU|Mux6~4_combout\ & ((\i_ALU|Mux8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \i_ALU|Mux8~2_combout\,
	combout => \i_ALU|Mux8~3_combout\);

-- Location: LCFF_X18_Y17_N5
\i_Reg|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux8~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(7));

-- Location: LCCOMB_X18_Y19_N2
\i_PC|registro[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[7]~1_combout\ = (SelPC(0) & ((\i_ALU|Mux8~3_combout\))) # (!SelPC(0) & (\i_Reg|registro\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SelPC(0),
	datab => \i_Reg|registro\(7),
	datad => \i_ALU|Mux8~3_combout\,
	combout => \i_PC|registro[7]~1_combout\);

-- Location: LCCOMB_X20_Y15_N6
\i_BancoReg|Registro_r6|registro[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r6|registro[7]~feeder_combout\ = \i_Mux_Banco|Mux8~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux8~2_combout\,
	combout => \i_BancoReg|Registro_r6|registro[7]~feeder_combout\);

-- Location: LCFF_X20_Y15_N7
\i_BancoReg|Registro_r6|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r6|registro[7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(7));

-- Location: LCCOMB_X20_Y16_N18
\i_BancoReg|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux16~1_combout\ = (\i_BancoReg|Mux16~0_combout\ & (((\i_BancoReg|Registro_r7|registro\(7))) # (!\i_IR|registro\(11)))) # (!\i_BancoReg|Mux16~0_combout\ & (\i_IR|registro\(11) & ((\i_BancoReg|Registro_r6|registro\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux16~0_combout\,
	datab => \i_IR|registro\(11),
	datac => \i_BancoReg|Registro_r7|registro\(7),
	datad => \i_BancoReg|Registro_r6|registro\(7),
	combout => \i_BancoReg|Mux16~1_combout\);

-- Location: LCCOMB_X21_Y18_N2
\i_BancoReg|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux16~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux16~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(7))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (((\i_BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r1|registro\(7),
	datab => \i_BancoReg|Mux23~1_combout\,
	datac => \i_BancoReg|Mux16~1_combout\,
	datad => \i_BancoReg|Mux23~2_combout\,
	combout => \i_BancoReg|Mux16~2_combout\);

-- Location: LCFF_X21_Y18_N25
\i_BancoReg|Registro_r3|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux8~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(7));

-- Location: LCCOMB_X21_Y18_N24
\i_BancoReg|Mux16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux16~combout\ = (\i_BancoReg|Mux16~2_combout\ & (((\i_BancoReg|Registro_r3|registro\(7)) # (!\i_BancoReg|Mux23~0_combout\)))) # (!\i_BancoReg|Mux16~2_combout\ & (\i_BancoReg|Registro_r2|registro\(7) & ((\i_BancoReg|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r2|registro\(7),
	datab => \i_BancoReg|Mux16~2_combout\,
	datac => \i_BancoReg|Registro_r3|registro\(7),
	datad => \i_BancoReg|Mux23~0_combout\,
	combout => \i_BancoReg|Mux16~combout\);

-- Location: LCFF_X18_Y19_N3
\i_PC|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[7]~1_combout\,
	sdata => \i_BancoReg|Mux16~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(7));

-- Location: LCCOMB_X20_Y18_N26
\i_Mux_A|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux8~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(7))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(7))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux16~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.DECOD~regout\,
	datab => \i_PC|registro\(7),
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux16~combout\,
	combout => \i_Mux_A|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\i_ALU|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux9~0_combout\ = (\i_ALU|Mux6~3_combout\ & ((\i_Mux_A|Mux8~0_combout\) # ((!\i_ALU|Mux6~8_combout\)))) # (!\i_ALU|Mux6~3_combout\ & (((\i_ALU|Mux6~8_combout\ & \i_Mux_A|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_Mux_A|Mux8~0_combout\,
	datac => \i_ALU|Mux6~8_combout\,
	datad => \i_Mux_A|Mux10~0_combout\,
	combout => \i_ALU|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y17_N30
\i_ALU|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux9~2_combout\ = (\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux9~0_combout\)))) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux9~1_combout\ $ (((!\i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0_combout\) # (!\i_ALU|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux9~1_combout\,
	datab => \i_ALU|Mux9~0_combout\,
	datac => \i_ALU|Mux6~8_combout\,
	datad => \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|Mux9~2_combout\);

-- Location: LCCOMB_X24_Y17_N4
\i_ALU|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux9~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & ((\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!\i_ALU|Mux6~4_combout\ & (\i_ALU|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \i_ALU|Mux9~2_combout\,
	datac => \op_ALU[3]~1_combout\,
	datad => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \i_ALU|Mux9~3_combout\);

-- Location: LCFF_X24_Y17_N5
\i_Reg|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux9~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(6));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(6),
	combout => \switches~combout\(6));

-- Location: LCCOMB_X18_Y19_N14
\i_Mux_Banco|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux9~0_combout\ = (\i_Mux_Banco|Mux15~1_combout\ & (((\i_Mux_Banco|Mux15~0_combout\)))) # (!\i_Mux_Banco|Mux15~1_combout\ & ((\i_Mux_Banco|Mux15~0_combout\ & (\i_Reg|registro\(6))) # (!\i_Mux_Banco|Mux15~0_combout\ & 
-- ((\switches~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Banco|Mux15~1_combout\,
	datab => \i_Reg|registro\(6),
	datac => \switches~combout\(6),
	datad => \i_Mux_Banco|Mux15~0_combout\,
	combout => \i_Mux_Banco|Mux9~0_combout\);

-- Location: LCCOMB_X16_Y16_N28
\i_RAM|ram_block~30feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~30feeder_combout\ = \i_BancoReg|Mux33~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux33~combout\,
	combout => \i_RAM|ram_block~30feeder_combout\);

-- Location: LCFF_X16_Y16_N29
\i_RAM|ram_block~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block~30feeder_combout\,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~30_regout\);

-- Location: LCCOMB_X16_Y16_N10
\i_RAM|dout[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[6]~6_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a6\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~30_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \i_RAM|ram_block~30_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[6]~6_combout\);

-- Location: LCCOMB_X19_Y19_N10
\i_RAM|ram_block_rtl_0_bypass[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[19]~feeder_combout\ = \i_BancoReg|Mux33~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux33~combout\,
	combout => \i_RAM|ram_block_rtl_0_bypass[19]~feeder_combout\);

-- Location: LCFF_X19_Y19_N11
\i_RAM|ram_block_rtl_0_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(19));

-- Location: LCFF_X16_Y16_N11
\i_RAM|dout[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[6]~6_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(19),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(6));

-- Location: LCCOMB_X18_Y19_N24
\i_Mux_Banco|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux9~1_combout\ = (\i_Mux_Banco|Mux9~0_combout\ & ((\i_PC|registro\(6)) # ((!\i_Mux_Banco|Mux15~1_combout\)))) # (!\i_Mux_Banco|Mux9~0_combout\ & (((\i_Mux_Banco|Mux15~1_combout\ & \i_RAM|dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(6),
	datab => \i_Mux_Banco|Mux9~0_combout\,
	datac => \i_Mux_Banco|Mux15~1_combout\,
	datad => \i_RAM|dout\(6),
	combout => \i_Mux_Banco|Mux9~1_combout\);

-- Location: LCCOMB_X21_Y19_N20
\i_Mux_Banco|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux9~2_combout\ = (\i_Mux_Banco|Mux6~0_combout\ & ((\i_Mux_Banco|Mux9~1_combout\))) # (!\i_Mux_Banco|Mux6~0_combout\ & (\i_IR|registro\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_IR|registro\(0),
	datac => \i_Mux_Banco|Mux9~1_combout\,
	datad => \i_Mux_Banco|Mux6~0_combout\,
	combout => \i_Mux_Banco|Mux9~2_combout\);

-- Location: LCFF_X21_Y19_N27
\i_BancoReg|Registro_r3|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux9~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(6));

-- Location: LCFF_X21_Y16_N23
\i_BancoReg|Registro_r5|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux9~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(6));

-- Location: LCFF_X21_Y16_N29
\i_BancoReg|Registro_r6|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux9~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(6));

-- Location: LCCOMB_X21_Y16_N28
\i_BancoReg|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux17~0_combout\ = (\i_IR|registro\(11) & ((\i_IR|registro\(10)) # ((\i_BancoReg|Registro_r6|registro\(6))))) # (!\i_IR|registro\(11) & (!\i_IR|registro\(10) & ((\i_BancoReg|Registro_r4|registro\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(11),
	datab => \i_IR|registro\(10),
	datac => \i_BancoReg|Registro_r6|registro\(6),
	datad => \i_BancoReg|Registro_r4|registro\(6),
	combout => \i_BancoReg|Mux17~0_combout\);

-- Location: LCCOMB_X21_Y16_N22
\i_BancoReg|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux17~1_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Mux17~0_combout\ & (\i_BancoReg|Registro_r7|registro\(6))) # (!\i_BancoReg|Mux17~0_combout\ & ((\i_BancoReg|Registro_r5|registro\(6)))))) # (!\i_IR|registro\(10) & 
-- (((\i_BancoReg|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r7|registro\(6),
	datab => \i_IR|registro\(10),
	datac => \i_BancoReg|Registro_r5|registro\(6),
	datad => \i_BancoReg|Mux17~0_combout\,
	combout => \i_BancoReg|Mux17~1_combout\);

-- Location: LCCOMB_X21_Y19_N28
\i_BancoReg|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux17~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux17~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(6))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (((\i_BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(6),
	datac => \i_BancoReg|Mux23~2_combout\,
	datad => \i_BancoReg|Mux17~1_combout\,
	combout => \i_BancoReg|Mux17~2_combout\);

-- Location: LCCOMB_X21_Y19_N6
\i_BancoReg|Mux17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux17~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux17~2_combout\ & (\i_BancoReg|Registro_r3|registro\(6))) # (!\i_BancoReg|Mux17~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(6)))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~0_combout\,
	datab => \i_BancoReg|Registro_r3|registro\(6),
	datac => \i_BancoReg|Registro_r2|registro\(6),
	datad => \i_BancoReg|Mux17~2_combout\,
	combout => \i_BancoReg|Mux17~combout\);

-- Location: LCCOMB_X20_Y19_N26
\i_Mux_A|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux9~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(6))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(6))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux17~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(6),
	datab => \estado_act.DECOD~regout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux17~combout\,
	combout => \i_Mux_A|Mux9~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\i_ALU|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux10~0_combout\ = (\i_ALU|Mux6~3_combout\ & (\i_ALU|Equal0~8_combout\ $ (\i_Mux_A|Mux10~0_combout\ $ (\i_Mux_B|Mux10~1_combout\)))) # (!\i_ALU|Mux6~3_combout\ & (((\i_Mux_A|Mux10~0_combout\ & \i_Mux_B|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~3_combout\,
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_A|Mux10~0_combout\,
	datad => \i_Mux_B|Mux10~1_combout\,
	combout => \i_ALU|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y17_N28
\i_ALU|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux10~1_combout\ = (\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux6~3_combout\)))) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux10~0_combout\ $ (((!\i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\) # (!\i_ALU|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_ALU|Mux10~0_combout\,
	datac => \i_ALU|Mux6~3_combout\,
	datad => \i_ALU|i1|GenSum:4:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|Mux10~1_combout\);

-- Location: LCCOMB_X18_Y17_N14
\i_ALU|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux10~2_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux10~1_combout\ & (\i_Mux_A|Mux9~0_combout\)) # (!\i_ALU|Mux10~1_combout\ & ((\i_Mux_A|Mux11~0_combout\))))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_Mux_A|Mux9~0_combout\,
	datac => \i_Mux_A|Mux11~0_combout\,
	datad => \i_ALU|Mux10~1_combout\,
	combout => \i_ALU|Mux10~2_combout\);

-- Location: LCCOMB_X18_Y17_N30
\i_ALU|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux10~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & ((\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!\i_ALU|Mux6~4_combout\ & (\i_ALU|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|Mux10~2_combout\,
	datad => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \i_ALU|Mux10~3_combout\);

-- Location: LCFF_X18_Y17_N31
\i_Reg|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux10~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(5));

-- Location: LCFF_X23_Y19_N19
\i_RAM|ram_block_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Reg|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(11));

-- Location: LCCOMB_X23_Y19_N18
\i_RAM|ram_block~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~42_combout\ = (\i_RAM|ram_block_rtl_0_bypass\(9) & (\i_Reg|registro\(4) & (\i_Reg|registro\(5) $ (!\i_RAM|ram_block_rtl_0_bypass\(11))))) # (!\i_RAM|ram_block_rtl_0_bypass\(9) & (!\i_Reg|registro\(4) & (\i_Reg|registro\(5) $ 
-- (!\i_RAM|ram_block_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0_bypass\(9),
	datab => \i_Reg|registro\(5),
	datac => \i_RAM|ram_block_rtl_0_bypass\(11),
	datad => \i_Reg|registro\(4),
	combout => \i_RAM|ram_block~42_combout\);

-- Location: LCFF_X23_Y19_N21
\i_RAM|ram_block_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \wrRamPeri~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(0));

-- Location: LCFF_X23_Y19_N29
\i_RAM|ram_block_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Reg|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(3));

-- Location: LCCOMB_X23_Y19_N10
\i_RAM|ram_block_rtl_0_bypass[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block_rtl_0_bypass[1]~feeder_combout\ = \i_Reg|registro\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Reg|registro\(0),
	combout => \i_RAM|ram_block_rtl_0_bypass[1]~feeder_combout\);

-- Location: LCFF_X23_Y19_N11
\i_RAM|ram_block_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|ram_block_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(1));

-- Location: LCCOMB_X23_Y19_N28
\i_RAM|ram_block~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~40_combout\ = (\i_Reg|registro\(1) & (\i_RAM|ram_block_rtl_0_bypass\(3) & (\i_Reg|registro\(0) $ (!\i_RAM|ram_block_rtl_0_bypass\(1))))) # (!\i_Reg|registro\(1) & (!\i_RAM|ram_block_rtl_0_bypass\(3) & (\i_Reg|registro\(0) $ 
-- (!\i_RAM|ram_block_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(1),
	datab => \i_Reg|registro\(0),
	datac => \i_RAM|ram_block_rtl_0_bypass\(3),
	datad => \i_RAM|ram_block_rtl_0_bypass\(1),
	combout => \i_RAM|ram_block~40_combout\);

-- Location: LCCOMB_X23_Y19_N20
\i_RAM|ram_block~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|ram_block~43_combout\ = (\i_RAM|ram_block~41_combout\ & (\i_RAM|ram_block~42_combout\ & (\i_RAM|ram_block_rtl_0_bypass\(0) & \i_RAM|ram_block~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block~41_combout\,
	datab => \i_RAM|ram_block~42_combout\,
	datac => \i_RAM|ram_block_rtl_0_bypass\(0),
	datad => \i_RAM|ram_block~40_combout\,
	combout => \i_RAM|ram_block~43_combout\);

-- Location: LCFF_X18_Y15_N13
\i_RAM|dout[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[5]~5_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(18),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(5));

-- Location: LCCOMB_X19_Y15_N0
\i_Mux_Banco|Mux10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux10~combout\ = (\i_Mux_Banco|Mux15~0_combout\ & (\i_Mux_Banco|Mux10~0_combout\)) # (!\i_Mux_Banco|Mux15~0_combout\ & ((\i_Mux_Banco|Mux10~0_combout\ & (\switches~combout\(5))) # (!\i_Mux_Banco|Mux10~0_combout\ & ((\i_RAM|dout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Banco|Mux15~0_combout\,
	datab => \i_Mux_Banco|Mux10~0_combout\,
	datac => \switches~combout\(5),
	datad => \i_RAM|dout\(5),
	combout => \i_Mux_Banco|Mux10~combout\);

-- Location: LCFF_X19_Y17_N19
\i_BancoReg|Registro_r2|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux10~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(5));

-- Location: LCFF_X21_Y16_N5
\i_BancoReg|Registro_r5|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux10~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(5));

-- Location: LCCOMB_X21_Y16_N4
\i_BancoReg|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux18~0_combout\ = (\i_IR|registro\(10) & (((\i_BancoReg|Registro_r5|registro\(5)) # (\i_IR|registro\(11))))) # (!\i_IR|registro\(10) & (\i_BancoReg|Registro_r4|registro\(5) & ((!\i_IR|registro\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(10),
	datab => \i_BancoReg|Registro_r4|registro\(5),
	datac => \i_BancoReg|Registro_r5|registro\(5),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux18~0_combout\);

-- Location: LCCOMB_X20_Y16_N6
\i_BancoReg|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux18~1_combout\ = (\i_BancoReg|Mux18~0_combout\ & (((\i_BancoReg|Registro_r7|registro\(5)) # (!\i_IR|registro\(11))))) # (!\i_BancoReg|Mux18~0_combout\ & (\i_BancoReg|Registro_r6|registro\(5) & ((\i_IR|registro\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(5),
	datab => \i_BancoReg|Mux18~0_combout\,
	datac => \i_BancoReg|Registro_r7|registro\(5),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux18~1_combout\);

-- Location: LCCOMB_X19_Y17_N28
\i_BancoReg|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux18~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux18~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(5))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (((\i_BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r1|registro\(5),
	datab => \i_BancoReg|Mux23~1_combout\,
	datac => \i_BancoReg|Mux23~2_combout\,
	datad => \i_BancoReg|Mux18~1_combout\,
	combout => \i_BancoReg|Mux18~2_combout\);

-- Location: LCCOMB_X19_Y17_N18
\i_BancoReg|Mux18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux18~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux18~2_combout\ & (\i_BancoReg|Registro_r3|registro\(5))) # (!\i_BancoReg|Mux18~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(5)))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r3|registro\(5),
	datab => \i_BancoReg|Mux23~0_combout\,
	datac => \i_BancoReg|Registro_r2|registro\(5),
	datad => \i_BancoReg|Mux18~2_combout\,
	combout => \i_BancoReg|Mux18~combout\);

-- Location: LCCOMB_X19_Y17_N26
\i_Mux_PC|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux10~0_combout\ = (!SelPC(0) & ((\SelPC[1]~0_combout\ & (\i_Reg|registro\(5))) # (!\SelPC[1]~0_combout\ & ((\i_BancoReg|Mux18~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(5),
	datab => \i_BancoReg|Mux18~combout\,
	datac => \SelPC[1]~0_combout\,
	datad => SelPC(0),
	combout => \i_Mux_PC|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y17_N16
\i_Mux_PC|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux10~1_combout\ = (\i_Mux_PC|Mux10~0_combout\) # ((\SelPC[1]~0_combout\ & (SelPC(0) & \i_ALU|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelPC[1]~0_combout\,
	datab => SelPC(0),
	datac => \i_Mux_PC|Mux10~0_combout\,
	datad => \i_ALU|Mux10~3_combout\,
	combout => \i_Mux_PC|Mux10~1_combout\);

-- Location: LCFF_X23_Y18_N11
\i_IR|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a2\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(2));

-- Location: LCCOMB_X23_Y19_N6
\i_ALU|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux6~3_combout\ = ((\i_IR|registro\(1)) # (!\i_IR|registro\(2))) # (!\estado_act.ARIT3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.ARIT3~regout\,
	datab => \i_IR|registro\(1),
	datad => \i_IR|registro\(2),
	combout => \i_ALU|Mux6~3_combout\);

-- Location: LCCOMB_X24_Y17_N28
\i_ALU|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux11~0_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux6~3_combout\ & ((\i_Mux_A|Mux10~0_combout\))) # (!\i_ALU|Mux6~3_combout\ & (\i_Mux_A|Mux12~0_combout\)))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_Mux_A|Mux12~0_combout\,
	datac => \i_ALU|Mux6~3_combout\,
	datad => \i_Mux_A|Mux10~0_combout\,
	combout => \i_ALU|Mux11~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\i_ALU|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux11~1_combout\ = (\i_ALU|Mux11~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (\i_Mux_B|Mux11~1_combout\ $ (\i_Mux_A|Mux11~0_combout\)))) # (!\i_ALU|Mux11~0_combout\ & (((\i_Mux_B|Mux11~1_combout\ & \i_Mux_A|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_ALU|Mux11~0_combout\,
	datac => \i_Mux_B|Mux11~1_combout\,
	datad => \i_Mux_A|Mux11~0_combout\,
	combout => \i_ALU|Mux11~1_combout\);

-- Location: LCCOMB_X24_Y17_N16
\i_ALU|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux11~2_combout\ = (\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux11~0_combout\)) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux11~1_combout\ $ (((!\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\) # (!\i_ALU|Mux11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_ALU|Mux11~0_combout\,
	datac => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datad => \i_ALU|Mux11~1_combout\,
	combout => \i_ALU|Mux11~2_combout\);

-- Location: LCCOMB_X24_Y17_N6
\i_ALU|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux11~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & ((\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT4\))) # (!\i_ALU|Mux6~4_combout\ & (\i_ALU|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|Mux11~2_combout\,
	datad => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \i_ALU|Mux11~3_combout\);

-- Location: LCCOMB_X19_Y17_N0
\i_Mux_PC|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux11~1_combout\ = (\i_Mux_PC|Mux11~0_combout\) # ((SelPC(0) & (\SelPC[1]~0_combout\ & \i_ALU|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_PC|Mux11~0_combout\,
	datab => SelPC(0),
	datac => \SelPC[1]~0_combout\,
	datad => \i_ALU|Mux11~3_combout\,
	combout => \i_Mux_PC|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y18_N4
\i_IR|registro[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_IR|registro[6]~feeder_combout\ = \i_ROM|memoria_rtl_0|auto_generated|ram_block1a6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a6\,
	combout => \i_IR|registro[6]~feeder_combout\);

-- Location: LCFF_X22_Y18_N5
\i_IR|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_IR|registro[6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(6));

-- Location: LCCOMB_X16_Y17_N8
\i_Mux_IR|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_IR|Mux0~0_combout\ = (\estado_act.LUI3~regout\ & (\i_IR|registro\(12))) # (!\estado_act.LUI3~regout\ & ((\i_IR|registro\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(12),
	datac => \i_IR|registro\(6),
	datad => \estado_act.LUI3~regout\,
	combout => \i_Mux_IR|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y17_N18
\i_Mux_IR|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_IR|Mux0~1_combout\ = (\WideOr11~0_combout\ & ((\i_Mux_IR|Mux0~0_combout\))) # (!\WideOr11~0_combout\ & (\i_IR|registro\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(9),
	datac => \i_Mux_IR|Mux0~0_combout\,
	datad => \WideOr11~0_combout\,
	combout => \i_Mux_IR|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y17_N28
\i_BancoReg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux3~0_combout\ = (\i_Mux_IR|Mux2~1_combout\ & (!\i_Mux_IR|Mux0~1_combout\ & (\i_Mux_IR|Mux1~1_combout\ & \WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_IR|Mux2~1_combout\,
	datab => \i_Mux_IR|Mux0~1_combout\,
	datac => \i_Mux_IR|Mux1~1_combout\,
	datad => \WideOr12~combout\,
	combout => \i_BancoReg|Mux3~0_combout\);

-- Location: LCFF_X20_Y17_N21
\i_BancoReg|Registro_r3|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux15~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(0));

-- Location: LCCOMB_X19_Y18_N14
\i_BancoReg|Registro_r1|registro[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r1|registro[0]~feeder_combout\ = \i_Mux_Banco|Mux15~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux15~combout\,
	combout => \i_BancoReg|Registro_r1|registro[0]~feeder_combout\);

-- Location: LCFF_X19_Y18_N15
\i_BancoReg|Registro_r1|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r1|registro[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r1|registro\(0));

-- Location: LCCOMB_X20_Y15_N10
\i_BancoReg|Registro_r6|registro[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r6|registro[0]~feeder_combout\ = \i_Mux_Banco|Mux15~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux15~combout\,
	combout => \i_BancoReg|Registro_r6|registro[0]~feeder_combout\);

-- Location: LCFF_X20_Y15_N11
\i_BancoReg|Registro_r6|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r6|registro[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(0));

-- Location: LCCOMB_X21_Y17_N8
\i_BancoReg|Registro_r5|registro[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r5|registro[0]~feeder_combout\ = \i_Mux_Banco|Mux15~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux15~combout\,
	combout => \i_BancoReg|Registro_r5|registro[0]~feeder_combout\);

-- Location: LCFF_X21_Y17_N9
\i_BancoReg|Registro_r5|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r5|registro[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(0));

-- Location: LCCOMB_X16_Y17_N30
\i_BancoReg|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux23~3_combout\ = (\i_IR|registro\(10) & (((\i_IR|registro\(11)) # (\i_BancoReg|Registro_r5|registro\(0))))) # (!\i_IR|registro\(10) & (\i_BancoReg|Registro_r4|registro\(0) & (!\i_IR|registro\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(0),
	datab => \i_IR|registro\(10),
	datac => \i_IR|registro\(11),
	datad => \i_BancoReg|Registro_r5|registro\(0),
	combout => \i_BancoReg|Mux23~3_combout\);

-- Location: LCCOMB_X16_Y17_N4
\i_BancoReg|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux23~4_combout\ = (\i_IR|registro\(11) & ((\i_BancoReg|Mux23~3_combout\ & (\i_BancoReg|Registro_r7|registro\(0))) # (!\i_BancoReg|Mux23~3_combout\ & ((\i_BancoReg|Registro_r6|registro\(0)))))) # (!\i_IR|registro\(11) & 
-- (((\i_BancoReg|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r7|registro\(0),
	datab => \i_IR|registro\(11),
	datac => \i_BancoReg|Registro_r6|registro\(0),
	datad => \i_BancoReg|Mux23~3_combout\,
	combout => \i_BancoReg|Mux23~4_combout\);

-- Location: LCCOMB_X20_Y17_N0
\i_BancoReg|Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux23~5_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux23~4_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(0))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (((\i_BancoReg|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Registro_r1|registro\(0),
	datac => \i_BancoReg|Mux23~2_combout\,
	datad => \i_BancoReg|Mux23~4_combout\,
	combout => \i_BancoReg|Mux23~5_combout\);

-- Location: LCCOMB_X20_Y17_N20
\i_BancoReg|Mux23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux23~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux23~5_combout\ & ((\i_BancoReg|Registro_r3|registro\(0)))) # (!\i_BancoReg|Mux23~5_combout\ & (\i_BancoReg|Registro_r2|registro\(0))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(0),
	datac => \i_BancoReg|Registro_r3|registro\(0),
	datad => \i_BancoReg|Mux23~5_combout\,
	combout => \i_BancoReg|Mux23~combout\);

-- Location: LCCOMB_X20_Y17_N2
\i_Mux_A|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux15~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(0))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(0))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux23~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.DECOD~regout\,
	datab => \i_PC|registro\(0),
	datac => \i_BancoReg|Mux23~combout\,
	datad => \estado_act.FETCH~regout\,
	combout => \i_Mux_A|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y17_N8
\i_ALU|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux12~1_combout\ = (\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux6~3_combout\)))) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux12~0_combout\ $ (((!\i_ALU|Mux6~3_combout\) # (!\i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux12~0_combout\,
	datab => \i_ALU|Mux6~8_combout\,
	datac => \i_ALU|i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datad => \i_ALU|Mux6~3_combout\,
	combout => \i_ALU|Mux12~1_combout\);

-- Location: LCCOMB_X24_Y17_N2
\i_ALU|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux12~2_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux12~1_combout\ & (\i_Mux_A|Mux11~0_combout\)) # (!\i_ALU|Mux12~1_combout\ & ((\i_Mux_A|Mux13~0_combout\))))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux11~0_combout\,
	datab => \i_ALU|Mux6~8_combout\,
	datac => \i_Mux_A|Mux13~0_combout\,
	datad => \i_ALU|Mux12~1_combout\,
	combout => \i_ALU|Mux12~2_combout\);

-- Location: LCCOMB_X24_Y17_N8
\i_ALU|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux12~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & (\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\i_ALU|Mux6~4_combout\ & ((\i_ALU|Mux12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \i_ALU|Mux12~2_combout\,
	combout => \i_ALU|Mux12~3_combout\);

-- Location: LCFF_X24_Y17_N9
\i_Reg|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux12~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(3));

-- Location: LCCOMB_X19_Y17_N8
\i_Mux_PC|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux12~0_combout\ = (!SelPC(0) & ((\SelPC[1]~0_combout\ & ((\i_Reg|registro\(3)))) # (!\SelPC[1]~0_combout\ & (\i_BancoReg|Mux20~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux20~combout\,
	datab => SelPC(0),
	datac => \SelPC[1]~0_combout\,
	datad => \i_Reg|registro\(3),
	combout => \i_Mux_PC|Mux12~0_combout\);

-- Location: LCCOMB_X19_Y17_N14
\i_Mux_PC|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux12~1_combout\ = (\i_Mux_PC|Mux12~0_combout\) # ((\SelPC[1]~0_combout\ & (SelPC(0) & \i_ALU|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelPC[1]~0_combout\,
	datab => SelPC(0),
	datac => \i_Mux_PC|Mux12~0_combout\,
	datad => \i_ALU|Mux12~3_combout\,
	combout => \i_Mux_PC|Mux12~1_combout\);

-- Location: LCFF_X19_Y17_N23
\i_PC|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_PC|Mux12~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(3));

-- Location: LCCOMB_X21_Y16_N14
\i_BancoReg|Registro_r5|registro[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r5|registro[3]~feeder_combout\ = \i_Mux_Banco|Mux12~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux12~combout\,
	combout => \i_BancoReg|Registro_r5|registro[3]~feeder_combout\);

-- Location: LCFF_X21_Y16_N15
\i_BancoReg|Registro_r5|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r5|registro[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r5|registro\(3));

-- Location: LCCOMB_X21_Y16_N24
\i_BancoReg|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux20~0_combout\ = (\i_IR|registro\(10) & (((\i_BancoReg|Registro_r5|registro\(3)) # (\i_IR|registro\(11))))) # (!\i_IR|registro\(10) & (\i_BancoReg|Registro_r4|registro\(3) & ((!\i_IR|registro\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(3),
	datab => \i_BancoReg|Registro_r5|registro\(3),
	datac => \i_IR|registro\(10),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux20~0_combout\);

-- Location: LCCOMB_X20_Y16_N22
\i_BancoReg|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux20~1_combout\ = (\i_IR|registro\(11) & ((\i_BancoReg|Mux20~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(3)))) # (!\i_BancoReg|Mux20~0_combout\ & (\i_BancoReg|Registro_r6|registro\(3))))) # (!\i_IR|registro\(11) & 
-- (((\i_BancoReg|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(3),
	datab => \i_IR|registro\(11),
	datac => \i_BancoReg|Registro_r7|registro\(3),
	datad => \i_BancoReg|Mux20~0_combout\,
	combout => \i_BancoReg|Mux20~1_combout\);

-- Location: LCCOMB_X20_Y17_N28
\i_BancoReg|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux20~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Mux20~1_combout\)) # (!\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Registro_r1|registro\(3)))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (\i_BancoReg|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Mux23~2_combout\,
	datac => \i_BancoReg|Mux20~1_combout\,
	datad => \i_BancoReg|Registro_r1|registro\(3),
	combout => \i_BancoReg|Mux20~2_combout\);

-- Location: LCCOMB_X20_Y17_N8
\i_BancoReg|Mux20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux20~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux20~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(3)))) # (!\i_BancoReg|Mux20~2_combout\ & (\i_BancoReg|Registro_r2|registro\(3))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(3),
	datac => \i_BancoReg|Registro_r3|registro\(3),
	datad => \i_BancoReg|Mux20~2_combout\,
	combout => \i_BancoReg|Mux20~combout\);

-- Location: LCCOMB_X20_Y17_N26
\i_Mux_A|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux12~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(3))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(3))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux20~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.DECOD~regout\,
	datab => \i_PC|registro\(3),
	datac => \i_BancoReg|Mux20~combout\,
	datad => \estado_act.FETCH~regout\,
	combout => \i_Mux_A|Mux12~0_combout\);

-- Location: LCCOMB_X24_Y18_N8
\i_ALU|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux13~0_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux6~3_combout\ & (\i_Mux_A|Mux12~0_combout\)) # (!\i_ALU|Mux6~3_combout\ & ((\i_Mux_A|Mux14~0_combout\))))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_Mux_A|Mux12~0_combout\,
	datac => \i_ALU|Mux6~3_combout\,
	datad => \i_Mux_A|Mux14~0_combout\,
	combout => \i_ALU|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y18_N14
\i_ALU|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux13~1_combout\ = (\i_ALU|Mux13~0_combout\ & (\i_ALU|Equal0~8_combout\ $ (\i_Mux_A|Mux13~0_combout\ $ (\i_Mux_B|Mux13~1_combout\)))) # (!\i_ALU|Mux13~0_combout\ & (((\i_Mux_A|Mux13~0_combout\ & \i_Mux_B|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~8_combout\,
	datab => \i_Mux_A|Mux13~0_combout\,
	datac => \i_ALU|Mux13~0_combout\,
	datad => \i_Mux_B|Mux13~1_combout\,
	combout => \i_ALU|Mux13~1_combout\);

-- Location: LCCOMB_X24_Y18_N16
\i_ALU|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux13~2_combout\ = (\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux13~0_combout\)) # (!\i_ALU|Mux6~8_combout\ & (\i_ALU|Mux13~1_combout\ $ (((!\i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\) # (!\i_ALU|Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_ALU|Mux13~0_combout\,
	datac => \i_ALU|Mux13~1_combout\,
	datad => \i_ALU|i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|Mux13~2_combout\);

-- Location: LCCOMB_X24_Y17_N14
\i_ALU|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux13~3_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & ((\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\i_ALU|Mux6~4_combout\ & (\i_ALU|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|Mux13~2_combout\,
	datad => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \i_ALU|Mux13~3_combout\);

-- Location: LCCOMB_X19_Y17_N2
\i_Mux_PC|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux13~1_combout\ = (\i_Mux_PC|Mux13~0_combout\) # ((SelPC(0) & (\SelPC[1]~0_combout\ & \i_ALU|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_PC|Mux13~0_combout\,
	datab => SelPC(0),
	datac => \SelPC[1]~0_combout\,
	datad => \i_ALU|Mux13~3_combout\,
	combout => \i_Mux_PC|Mux13~1_combout\);

-- Location: LCFF_X23_Y18_N9
\i_IR|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a3\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(3));

-- Location: LCCOMB_X23_Y18_N14
\op_ALU[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_ALU[3]~1_combout\ = (\i_IR|registro\(3) & \estado_act.ARIT3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_IR|registro\(3),
	datad => \estado_act.ARIT3~regout\,
	combout => \op_ALU[3]~1_combout\);

-- Location: LCCOMB_X24_Y18_N18
\i_ALU|i4|res~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i4|res~0_combout\ = (\i_Mux_A|Mux14~0_combout\ & ((\i_Mux_B|Mux14~1_combout\) # ((\i_BancoReg|Mux38~combout\ & \WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux38~combout\,
	datab => \i_Mux_B|Mux14~1_combout\,
	datac => \WideOr1~0_combout\,
	datad => \i_Mux_A|Mux14~0_combout\,
	combout => \i_ALU|i4|res~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~combout\ = \i_Mux_A|Mux14~0_combout\ $ (\i_ALU|i1|b_i\(1) $ (((\i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\) # (!\i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux14~0_combout\,
	datab => \i_ALU|i1|b_i\(1),
	datac => \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datad => \i_ALU|i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X24_Y17_N10
\i_ALU|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux14~0_combout\ = (\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux6~3_combout\)))) # (!\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux6~3_combout\ & ((!\i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~combout\))) # (!\i_ALU|Mux6~3_combout\ & (!\i_ALU|i4|res~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~8_combout\,
	datab => \i_ALU|i4|res~0_combout\,
	datac => \i_ALU|Mux6~3_combout\,
	datad => \i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~combout\,
	combout => \i_ALU|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\i_ALU|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux14~1_combout\ = (\i_ALU|Mux6~8_combout\ & ((\i_ALU|Mux14~0_combout\ & ((\i_Mux_A|Mux13~0_combout\))) # (!\i_ALU|Mux14~0_combout\ & (\i_Mux_A|Mux15~0_combout\)))) # (!\i_ALU|Mux6~8_combout\ & (((\i_ALU|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux15~0_combout\,
	datab => \i_Mux_A|Mux13~0_combout\,
	datac => \i_ALU|Mux6~8_combout\,
	datad => \i_ALU|Mux14~0_combout\,
	combout => \i_ALU|Mux14~1_combout\);

-- Location: LCCOMB_X24_Y17_N20
\i_ALU|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux14~2_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux6~4_combout\ & (\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT1\)) # (!\i_ALU|Mux6~4_combout\ & ((\i_ALU|Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux6~4_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \i_ALU|Mux14~1_combout\,
	combout => \i_ALU|Mux14~2_combout\);

-- Location: LCCOMB_X20_Y19_N16
\i_Mux_PC|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux14~1_combout\ = (\i_Mux_PC|Mux14~0_combout\) # ((\SelPC[1]~0_combout\ & (SelPC(0) & \i_ALU|Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_PC|Mux14~0_combout\,
	datab => \SelPC[1]~0_combout\,
	datac => SelPC(0),
	datad => \i_ALU|Mux14~2_combout\,
	combout => \i_Mux_PC|Mux14~1_combout\);

-- Location: LCFF_X23_Y18_N5
\i_IR|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a1\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(1));

-- Location: LCCOMB_X23_Y18_N8
\i_ALU|Mux0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux0~11_combout\ = ((!\i_IR|registro\(2) & (!\i_IR|registro\(1) & !\i_IR|registro\(3)))) # (!\estado_act.ARIT3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(2),
	datab => \i_IR|registro\(1),
	datac => \i_IR|registro\(3),
	datad => \estado_act.ARIT3~regout\,
	combout => \i_ALU|Mux0~11_combout\);

-- Location: LCCOMB_X18_Y18_N30
\i_ALU|i1|GenSum:14:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:14:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i_Mux_A|Mux1~0_combout\ & ((\i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\i_Mux_B|Mux1~0_combout\ $ (!\i_ALU|Equal0~8_combout\)))) # (!\i_Mux_A|Mux1~0_combout\ & 
-- (\i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\i_Mux_B|Mux1~0_combout\ $ (!\i_ALU|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux1~0_combout\,
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_A|Mux1~0_combout\,
	datad => \i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:14:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X18_Y18_N24
\i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\ = \i_Mux_A|Mux0~0_combout\ $ (\i_ALU|Equal0~8_combout\ $ (\i_Mux_B|Mux0~0_combout\ $ (\i_ALU|i1|GenSum:14:i_Sumador1Bit|c_i_mas_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux0~0_combout\,
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_B|Mux0~0_combout\,
	datad => \i_ALU|i1|GenSum:14:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X23_Y18_N2
\i_ALU|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux0~10_combout\ = (\op_ALU[2]~0_combout\ & (!\Selector14~0_combout\ & (\i_Mux_A|Mux0~0_combout\))) # (!\op_ALU[2]~0_combout\ & (((\i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[2]~0_combout\,
	datab => \Selector14~0_combout\,
	datac => \i_Mux_A|Mux0~0_combout\,
	datad => \i_ALU|i3|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \i_ALU|Mux0~10_combout\);

-- Location: LCCOMB_X23_Y18_N6
\i_ALU|Mux0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux0~13_combout\ = (\estado_act.ARIT3~regout\ & (\i_IR|registro\(1) & (!\i_IR|registro\(3) & \i_ALU|Mux0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.ARIT3~regout\,
	datab => \i_IR|registro\(1),
	datac => \i_IR|registro\(3),
	datad => \i_ALU|Mux0~10_combout\,
	combout => \i_ALU|Mux0~13_combout\);

-- Location: LCCOMB_X23_Y18_N20
\i_ALU|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux0~12_combout\ = (\i_ALU|Mux0~9_combout\) # ((\i_ALU|Mux0~13_combout\) # ((\i_ALU|Mux0~11_combout\ & !\i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux0~9_combout\,
	datab => \i_ALU|Mux0~11_combout\,
	datac => \i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\,
	datad => \i_ALU|Mux0~13_combout\,
	combout => \i_ALU|Mux0~12_combout\);

-- Location: LCFF_X23_Y18_N21
\i_Reg|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux0~12_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(15));

-- Location: LCCOMB_X25_Y18_N24
\i_ALU|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux0~8_combout\ = (\Selector14~0_combout\ & (\i_Mux_A|Mux1~0_combout\)) # (!\Selector14~0_combout\ & (((!\i_Mux_B|Mux0~0_combout\) # (!\i_Mux_A|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => \i_Mux_A|Mux1~0_combout\,
	datac => \i_Mux_A|Mux0~0_combout\,
	datad => \i_Mux_B|Mux0~0_combout\,
	combout => \i_ALU|Mux0~8_combout\);

-- Location: LCCOMB_X23_Y18_N0
\i_ALU|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux0~9_combout\ = (\op_ALU[2]~0_combout\ & (!\op_ALU[3]~1_combout\ & (\i_ALU|Mux0~8_combout\ & !\i_ALU|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[2]~0_combout\,
	datab => \op_ALU[3]~1_combout\,
	datac => \i_ALU|Mux0~8_combout\,
	datad => \i_ALU|Mux6~2_combout\,
	combout => \i_ALU|Mux0~9_combout\);

-- Location: LCCOMB_X19_Y16_N30
\i_PC|registro[15]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[15]~10_combout\ = (SelPC(0) & (((\i_ALU|Mux0~9_combout\) # (\i_ALU|Mux0~13_combout\)))) # (!SelPC(0) & (\i_Reg|registro\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SelPC(0),
	datab => \i_Reg|registro\(15),
	datac => \i_ALU|Mux0~9_combout\,
	datad => \i_ALU|Mux0~13_combout\,
	combout => \i_PC|registro[15]~10_combout\);

-- Location: LCCOMB_X19_Y16_N6
\i_PC|registro[15]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[15]~9_combout\ = (\i_PC|registro[15]~10_combout\) # ((!\i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\ & (SelPC(0) & \i_ALU|Mux0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\,
	datab => SelPC(0),
	datac => \i_ALU|Mux0~11_combout\,
	datad => \i_PC|registro[15]~10_combout\,
	combout => \i_PC|registro[15]~9_combout\);

-- Location: LCCOMB_X19_Y16_N18
\i_PC|registro[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[15]~feeder_combout\ = \i_PC|registro[15]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_PC|registro[15]~9_combout\,
	combout => \i_PC|registro[15]~feeder_combout\);

-- Location: LCFF_X19_Y16_N19
\i_PC|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[15]~feeder_combout\,
	sdata => \i_BancoReg|Mux8~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(15));

-- Location: LCCOMB_X19_Y16_N22
\i_Mux_Banco|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux0~0_combout\ = (\SelBanco[1]~1_combout\ & (((\SelBanco[0]~0_combout\)))) # (!\SelBanco[1]~1_combout\ & ((\SelBanco[0]~0_combout\ & (\i_IR|registro\(9))) # (!\SelBanco[0]~0_combout\ & ((\i_PC|registro\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelBanco[1]~1_combout\,
	datab => \i_IR|registro\(9),
	datac => \SelBanco[0]~0_combout\,
	datad => \i_PC|registro\(15),
	combout => \i_Mux_Banco|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y16_N16
\i_Mux_Banco|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux0~1_combout\ = (\i_Reg|registro\(15) & ((\SelBanco[1]~1_combout\ $ (\i_Mux_Banco|Mux0~0_combout\)))) # (!\i_Reg|registro\(15) & (\i_Mux_Banco|Mux0~0_combout\ & ((\i_RAM|dout\(15)) # (!\SelBanco[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|dout\(15),
	datab => \i_Reg|registro\(15),
	datac => \SelBanco[1]~1_combout\,
	datad => \i_Mux_Banco|Mux0~0_combout\,
	combout => \i_Mux_Banco|Mux0~1_combout\);

-- Location: LCFF_X20_Y17_N13
\i_BancoReg|Registro_r3|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux0~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(15));

-- Location: LCCOMB_X24_Y16_N20
\i_BancoReg|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux8~0_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Registro_r5|registro\(15)) # ((\i_IR|registro\(11))))) # (!\i_IR|registro\(10) & (((\i_BancoReg|Registro_r4|registro\(15) & !\i_IR|registro\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r5|registro\(15),
	datab => \i_BancoReg|Registro_r4|registro\(15),
	datac => \i_IR|registro\(10),
	datad => \i_IR|registro\(11),
	combout => \i_BancoReg|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y15_N8
\i_BancoReg|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux8~1_combout\ = (\i_IR|registro\(11) & ((\i_BancoReg|Mux8~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(15)))) # (!\i_BancoReg|Mux8~0_combout\ & (\i_BancoReg|Registro_r6|registro\(15))))) # (!\i_IR|registro\(11) & 
-- (((\i_BancoReg|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(15),
	datab => \i_IR|registro\(11),
	datac => \i_BancoReg|Registro_r7|registro\(15),
	datad => \i_BancoReg|Mux8~0_combout\,
	combout => \i_BancoReg|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y17_N6
\i_BancoReg|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux8~2_combout\ = (\i_BancoReg|Mux23~1_combout\ & ((\i_BancoReg|Mux23~2_combout\ & ((\i_BancoReg|Mux8~1_combout\))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(15))))) # (!\i_BancoReg|Mux23~1_combout\ & 
-- (\i_BancoReg|Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~1_combout\,
	datab => \i_BancoReg|Mux23~2_combout\,
	datac => \i_BancoReg|Registro_r1|registro\(15),
	datad => \i_BancoReg|Mux8~1_combout\,
	combout => \i_BancoReg|Mux8~2_combout\);

-- Location: LCCOMB_X23_Y17_N22
\i_BancoReg|Mux8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux8~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux8~2_combout\ & (\i_BancoReg|Registro_r3|registro\(15))) # (!\i_BancoReg|Mux8~2_combout\ & ((\i_BancoReg|Registro_r2|registro\(15)))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~0_combout\,
	datab => \i_BancoReg|Registro_r3|registro\(15),
	datac => \i_BancoReg|Registro_r2|registro\(15),
	datad => \i_BancoReg|Mux8~2_combout\,
	combout => \i_BancoReg|Mux8~combout\);

-- Location: LCCOMB_X22_Y16_N24
\i_Mux_A|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux0~0_combout\ = (\estado_act.DECOD~regout\ & (\i_PC|registro\(15))) # (!\estado_act.DECOD~regout\ & ((\estado_act.FETCH~regout\ & (\i_PC|registro\(15))) # (!\estado_act.FETCH~regout\ & ((\i_BancoReg|Mux8~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_PC|registro\(15),
	datab => \estado_act.DECOD~regout\,
	datac => \estado_act.FETCH~regout\,
	datad => \i_BancoReg|Mux8~combout\,
	combout => \i_Mux_A|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y18_N0
\i_ALU|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~1_cout\ = CARRY((\i_Mux_B|Mux15~1_combout\ & !\i_Mux_A|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux15~1_combout\,
	datab => \i_Mux_A|Mux15~0_combout\,
	datad => VCC,
	cout => \i_ALU|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y18_N2
\i_ALU|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~3_cout\ = CARRY((\i_Mux_A|Mux14~0_combout\ & ((!\i_ALU|LessThan0~1_cout\) # (!\i_Mux_B|Mux14~2_combout\))) # (!\i_Mux_A|Mux14~0_combout\ & (!\i_Mux_B|Mux14~2_combout\ & !\i_ALU|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux14~0_combout\,
	datab => \i_Mux_B|Mux14~2_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~1_cout\,
	cout => \i_ALU|LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y18_N4
\i_ALU|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~5_cout\ = CARRY((\i_Mux_A|Mux13~0_combout\ & (\i_Mux_B|Mux13~1_combout\ & !\i_ALU|LessThan0~3_cout\)) # (!\i_Mux_A|Mux13~0_combout\ & ((\i_Mux_B|Mux13~1_combout\) # (!\i_ALU|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux13~0_combout\,
	datab => \i_Mux_B|Mux13~1_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~3_cout\,
	cout => \i_ALU|LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y18_N6
\i_ALU|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~7_cout\ = CARRY((\i_Mux_A|Mux12~0_combout\ & ((!\i_ALU|LessThan0~5_cout\) # (!\i_Mux_B|Mux12~1_combout\))) # (!\i_Mux_A|Mux12~0_combout\ & (!\i_Mux_B|Mux12~1_combout\ & !\i_ALU|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux12~0_combout\,
	datab => \i_Mux_B|Mux12~1_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~5_cout\,
	cout => \i_ALU|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y18_N8
\i_ALU|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~9_cout\ = CARRY((\i_Mux_A|Mux11~0_combout\ & (\i_Mux_B|Mux11~1_combout\ & !\i_ALU|LessThan0~7_cout\)) # (!\i_Mux_A|Mux11~0_combout\ & ((\i_Mux_B|Mux11~1_combout\) # (!\i_ALU|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux11~0_combout\,
	datab => \i_Mux_B|Mux11~1_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~7_cout\,
	cout => \i_ALU|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y18_N10
\i_ALU|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~11_cout\ = CARRY((\i_Mux_B|Mux10~1_combout\ & (\i_Mux_A|Mux10~0_combout\ & !\i_ALU|LessThan0~9_cout\)) # (!\i_Mux_B|Mux10~1_combout\ & ((\i_Mux_A|Mux10~0_combout\) # (!\i_ALU|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux10~1_combout\,
	datab => \i_Mux_A|Mux10~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~9_cout\,
	cout => \i_ALU|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y18_N12
\i_ALU|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~13_cout\ = CARRY((\i_Mux_B|Mux9~0_combout\ & ((!\i_ALU|LessThan0~11_cout\) # (!\i_Mux_A|Mux9~0_combout\))) # (!\i_Mux_B|Mux9~0_combout\ & (!\i_Mux_A|Mux9~0_combout\ & !\i_ALU|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux9~0_combout\,
	datab => \i_Mux_A|Mux9~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~11_cout\,
	cout => \i_ALU|LessThan0~13_cout\);

-- Location: LCCOMB_X26_Y18_N14
\i_ALU|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~15_cout\ = CARRY((\i_Mux_A|Mux8~0_combout\ & ((!\i_ALU|LessThan0~13_cout\) # (!\i_Mux_B|Mux8~0_combout\))) # (!\i_Mux_A|Mux8~0_combout\ & (!\i_Mux_B|Mux8~0_combout\ & !\i_ALU|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux8~0_combout\,
	datab => \i_Mux_B|Mux8~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~13_cout\,
	cout => \i_ALU|LessThan0~15_cout\);

-- Location: LCCOMB_X26_Y18_N16
\i_ALU|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~17_cout\ = CARRY((\i_Mux_B|Mux7~0_combout\ & ((!\i_ALU|LessThan0~15_cout\) # (!\i_Mux_A|Mux7~0_combout\))) # (!\i_Mux_B|Mux7~0_combout\ & (!\i_Mux_A|Mux7~0_combout\ & !\i_ALU|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux7~0_combout\,
	datab => \i_Mux_A|Mux7~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~15_cout\,
	cout => \i_ALU|LessThan0~17_cout\);

-- Location: LCCOMB_X26_Y18_N18
\i_ALU|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~19_cout\ = CARRY((\i_Mux_A|Mux6~0_combout\ & ((!\i_ALU|LessThan0~17_cout\) # (!\i_Mux_B|Mux6~0_combout\))) # (!\i_Mux_A|Mux6~0_combout\ & (!\i_Mux_B|Mux6~0_combout\ & !\i_ALU|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux6~0_combout\,
	datab => \i_Mux_B|Mux6~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~17_cout\,
	cout => \i_ALU|LessThan0~19_cout\);

-- Location: LCCOMB_X26_Y18_N20
\i_ALU|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~21_cout\ = CARRY((\i_Mux_A|Mux5~0_combout\ & (\i_Mux_B|Mux5~0_combout\ & !\i_ALU|LessThan0~19_cout\)) # (!\i_Mux_A|Mux5~0_combout\ & ((\i_Mux_B|Mux5~0_combout\) # (!\i_ALU|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux5~0_combout\,
	datab => \i_Mux_B|Mux5~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~19_cout\,
	cout => \i_ALU|LessThan0~21_cout\);

-- Location: LCCOMB_X26_Y18_N22
\i_ALU|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~23_cout\ = CARRY((\i_Mux_A|Mux4~0_combout\ & ((!\i_ALU|LessThan0~21_cout\) # (!\i_Mux_B|Mux4~0_combout\))) # (!\i_Mux_A|Mux4~0_combout\ & (!\i_Mux_B|Mux4~0_combout\ & !\i_ALU|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux4~0_combout\,
	datab => \i_Mux_B|Mux4~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~21_cout\,
	cout => \i_ALU|LessThan0~23_cout\);

-- Location: LCCOMB_X26_Y18_N24
\i_ALU|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~25_cout\ = CARRY((\i_Mux_B|Mux3~0_combout\ & ((!\i_ALU|LessThan0~23_cout\) # (!\i_Mux_A|Mux3~0_combout\))) # (!\i_Mux_B|Mux3~0_combout\ & (!\i_Mux_A|Mux3~0_combout\ & !\i_ALU|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux3~0_combout\,
	datab => \i_Mux_A|Mux3~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~23_cout\,
	cout => \i_ALU|LessThan0~25_cout\);

-- Location: LCCOMB_X26_Y18_N26
\i_ALU|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~27_cout\ = CARRY((\i_Mux_B|Mux2~0_combout\ & (\i_Mux_A|Mux2~0_combout\ & !\i_ALU|LessThan0~25_cout\)) # (!\i_Mux_B|Mux2~0_combout\ & ((\i_Mux_A|Mux2~0_combout\) # (!\i_ALU|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux2~0_combout\,
	datab => \i_Mux_A|Mux2~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~25_cout\,
	cout => \i_ALU|LessThan0~27_cout\);

-- Location: LCCOMB_X26_Y18_N28
\i_ALU|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~29_cout\ = CARRY((\i_Mux_B|Mux1~0_combout\ & ((!\i_ALU|LessThan0~27_cout\) # (!\i_Mux_A|Mux1~0_combout\))) # (!\i_Mux_B|Mux1~0_combout\ & (!\i_Mux_A|Mux1~0_combout\ & !\i_ALU|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux1~0_combout\,
	datab => \i_Mux_A|Mux1~0_combout\,
	datad => VCC,
	cin => \i_ALU|LessThan0~27_cout\,
	cout => \i_ALU|LessThan0~29_cout\);

-- Location: LCCOMB_X26_Y18_N30
\i_ALU|LessThan0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|LessThan0~30_combout\ = (\i_Mux_B|Mux0~0_combout\ & ((\i_ALU|LessThan0~29_cout\) # (!\i_Mux_A|Mux0~0_combout\))) # (!\i_Mux_B|Mux0~0_combout\ & (\i_ALU|LessThan0~29_cout\ & !\i_Mux_A|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux0~0_combout\,
	datad => \i_Mux_A|Mux0~0_combout\,
	cin => \i_ALU|LessThan0~29_cout\,
	combout => \i_ALU|LessThan0~30_combout\);

-- Location: LCCOMB_X23_Y18_N22
\i_ALU|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux15~0_combout\ = (\i_ALU|Mux6~2_combout\ & ((\op_ALU[2]~0_combout\ & (\i_Mux_A|Mux14~0_combout\)) # (!\op_ALU[2]~0_combout\ & ((\i_ALU|i3|Mult0|auto_generated|mac_out2~dataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_ALU[2]~0_combout\,
	datab => \i_ALU|Mux6~2_combout\,
	datac => \i_Mux_A|Mux14~0_combout\,
	datad => \i_ALU|i3|Mult0|auto_generated|mac_out2~dataout\,
	combout => \i_ALU|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y18_N30
\i_ALU|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux15~2_combout\ = (!\op_ALU[3]~1_combout\ & ((\i_ALU|Mux15~0_combout\) # ((\i_ALU|Mux15~1_combout\ & !\i_ALU|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Mux15~1_combout\,
	datab => \i_ALU|Mux6~2_combout\,
	datac => \op_ALU[3]~1_combout\,
	datad => \i_ALU|Mux15~0_combout\,
	combout => \i_ALU|Mux15~2_combout\);

-- Location: LCCOMB_X23_Y18_N18
\i_ALU|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|Mux15~3_combout\ = (\i_ALU|Mux15~2_combout\) # ((\i_ALU|Equal0~9_combout\ & (\i_ALU|LessThan0~30_combout\ & \op_ALU[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|Equal0~9_combout\,
	datab => \i_ALU|LessThan0~30_combout\,
	datac => \op_ALU[3]~1_combout\,
	datad => \i_ALU|Mux15~2_combout\,
	combout => \i_ALU|Mux15~3_combout\);

-- Location: LCFF_X23_Y18_N19
\i_Reg|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_ALU|Mux15~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_Reg|registro\(0));

-- Location: LCCOMB_X20_Y19_N8
\i_Mux_PC|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux15~0_combout\ = (!SelPC(0) & ((\SelPC[1]~0_combout\ & ((\i_Reg|registro\(0)))) # (!\SelPC[1]~0_combout\ & (\i_BancoReg|Mux23~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~combout\,
	datab => \SelPC[1]~0_combout\,
	datac => \i_Reg|registro\(0),
	datad => SelPC(0),
	combout => \i_Mux_PC|Mux15~0_combout\);

-- Location: LCCOMB_X20_Y19_N14
\i_Mux_PC|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_PC|Mux15~1_combout\ = (\i_Mux_PC|Mux15~0_combout\) # ((\SelPC[1]~0_combout\ & (SelPC(0) & \i_ALU|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelPC[1]~0_combout\,
	datab => SelPC(0),
	datac => \i_Mux_PC|Mux15~0_combout\,
	datad => \i_ALU|Mux15~3_combout\,
	combout => \i_Mux_PC|Mux15~1_combout\);

-- Location: LCFF_X22_Y16_N5
\i_IR|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a13\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(13));

-- Location: LCCOMB_X22_Y16_N2
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\i_IR|registro\(15) & (\i_IR|registro\(14) & (!\i_IR|registro\(13) & \estado_act.DECOD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(15),
	datab => \i_IR|registro\(14),
	datac => \i_IR|registro\(13),
	datad => \estado_act.DECOD~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X22_Y16_N0
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\estado_act.FETCH~regout\) # (\Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_act.FETCH~regout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCFF_X22_Y16_N1
\estado_act.DECOD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.DECOD~regout\);

-- Location: LCCOMB_X23_Y19_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\i_IR|registro\(13) & (\estado_act.DECOD~regout\ & (!\i_IR|registro\(14) & !\i_IR|registro\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(13),
	datab => \estado_act.DECOD~regout\,
	datac => \i_IR|registro\(14),
	datad => \i_IR|registro\(15),
	combout => \Selector4~0_combout\);

-- Location: LCFF_X23_Y19_N27
\estado_act.ARIT3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.ARIT3~regout\);

-- Location: LCCOMB_X18_Y16_N0
\WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (\WideOr1~0_combout\ & (!\estado_act.ARIT3~regout\ & !\estado_act.LW4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0_combout\,
	datab => \estado_act.ARIT3~regout\,
	datad => \estado_act.LW4~regout\,
	combout => \WideOr1~1_combout\);

-- Location: LCFF_X18_Y16_N1
\estado_act.FETCH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \WideOr1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.FETCH~regout\);

-- Location: LCCOMB_X20_Y19_N24
\SelPC[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- SelPC(0) = (\estado_act.FETCH~regout\) # (!\estado_act.RESET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_act.RESET~regout\,
	datad => \estado_act.FETCH~regout\,
	combout => SelPC(0));

-- Location: LCCOMB_X19_Y16_N28
\i_PC|registro[14]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_PC|registro[14]~8_combout\ = (SelPC(0) & ((\i_ALU|Mux1~3_combout\))) # (!SelPC(0) & (\i_Reg|registro\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Reg|registro\(14),
	datab => SelPC(0),
	datad => \i_ALU|Mux1~3_combout\,
	combout => \i_PC|registro[14]~8_combout\);

-- Location: LCCOMB_X16_Y18_N14
\i_BancoReg|Registro_r3|registro[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r3|registro[14]~feeder_combout\ = \i_Mux_Banco|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux1~1_combout\,
	combout => \i_BancoReg|Registro_r3|registro[14]~feeder_combout\);

-- Location: LCFF_X16_Y18_N15
\i_BancoReg|Registro_r3|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r3|registro[14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r3|registro\(14));

-- Location: LCFF_X21_Y16_N27
\i_BancoReg|Registro_r6|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux1~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r6|registro\(14));

-- Location: LCCOMB_X21_Y16_N26
\i_BancoReg|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux9~0_combout\ = (\i_IR|registro\(11) & (((\i_BancoReg|Registro_r6|registro\(14)) # (\i_IR|registro\(10))))) # (!\i_IR|registro\(11) & (\i_BancoReg|Registro_r4|registro\(14) & ((!\i_IR|registro\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r4|registro\(14),
	datab => \i_IR|registro\(11),
	datac => \i_BancoReg|Registro_r6|registro\(14),
	datad => \i_IR|registro\(10),
	combout => \i_BancoReg|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y16_N0
\i_BancoReg|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux9~1_combout\ = (\i_IR|registro\(10) & ((\i_BancoReg|Mux9~0_combout\ & (\i_BancoReg|Registro_r7|registro\(14))) # (!\i_BancoReg|Mux9~0_combout\ & ((\i_BancoReg|Registro_r5|registro\(14)))))) # (!\i_IR|registro\(10) & 
-- (((\i_BancoReg|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r7|registro\(14),
	datab => \i_IR|registro\(10),
	datac => \i_BancoReg|Registro_r5|registro\(14),
	datad => \i_BancoReg|Mux9~0_combout\,
	combout => \i_BancoReg|Mux9~1_combout\);

-- Location: LCCOMB_X23_Y17_N30
\i_BancoReg|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux9~2_combout\ = (\i_BancoReg|Mux23~2_combout\ & (((\i_BancoReg|Mux9~1_combout\) # (!\i_BancoReg|Mux23~1_combout\)))) # (!\i_BancoReg|Mux23~2_combout\ & (\i_BancoReg|Registro_r1|registro\(14) & ((\i_BancoReg|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r1|registro\(14),
	datab => \i_BancoReg|Mux23~2_combout\,
	datac => \i_BancoReg|Mux9~1_combout\,
	datad => \i_BancoReg|Mux23~1_combout\,
	combout => \i_BancoReg|Mux9~2_combout\);

-- Location: LCCOMB_X23_Y17_N16
\i_BancoReg|Mux9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux9~combout\ = (\i_BancoReg|Mux23~0_combout\ & ((\i_BancoReg|Mux9~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(14)))) # (!\i_BancoReg|Mux9~2_combout\ & (\i_BancoReg|Registro_r2|registro\(14))))) # (!\i_BancoReg|Mux23~0_combout\ & 
-- (((\i_BancoReg|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(14),
	datac => \i_BancoReg|Registro_r3|registro\(14),
	datad => \i_BancoReg|Mux9~2_combout\,
	combout => \i_BancoReg|Mux9~combout\);

-- Location: LCFF_X19_Y16_N29
\i_PC|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_PC|registro[14]~8_combout\,
	sdata => \i_BancoReg|Mux9~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \ALT_INV_estado_act.RESET~regout\,
	sload => \estado_act.JALR3~regout\,
	ena => \en_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_PC|registro\(14));

-- Location: LCCOMB_X19_Y16_N24
\i_Mux_A|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_A|Mux1~0_combout\ = (\estado_act.FETCH~regout\ & (\i_PC|registro\(14))) # (!\estado_act.FETCH~regout\ & ((\estado_act.DECOD~regout\ & (\i_PC|registro\(14))) # (!\estado_act.DECOD~regout\ & ((\i_BancoReg|Mux9~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.FETCH~regout\,
	datab => \i_PC|registro\(14),
	datac => \i_BancoReg|Mux9~combout\,
	datad => \estado_act.DECOD~regout\,
	combout => \i_Mux_A|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y18_N14
\i_ALU|i1|GenSum:14:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:14:i_Sumador1Bit|s_i~combout\ = \i_Mux_B|Mux1~0_combout\ $ (\i_Mux_A|Mux1~0_combout\ $ (\i_ALU|Equal0~8_combout\ $ (\i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_B|Mux1~0_combout\,
	datab => \i_Mux_A|Mux1~0_combout\,
	datac => \i_ALU|Equal0~8_combout\,
	datad => \i_ALU|i1|GenSum:13:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:14:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X18_Y18_N4
\i_ALU|i1|GenSum:13:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:13:i_Sumador1Bit|s_i~combout\ = \i_Mux_A|Mux2~0_combout\ $ (\i_ALU|Equal0~8_combout\ $ (\i_Mux_B|Mux2~0_combout\ $ (\i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_A|Mux2~0_combout\,
	datab => \i_ALU|Equal0~8_combout\,
	datac => \i_Mux_B|Mux2~0_combout\,
	datad => \i_ALU|i1|GenSum:12:i_Sumador1Bit|c_i_mas_1~0_combout\,
	combout => \i_ALU|i1|GenSum:13:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X20_Y19_N20
\i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ = \i_BancoReg|Mux22~combout\ $ (\i_BancoReg|Mux38~combout\ $ (((\i_BancoReg|Mux23~combout\) # (!\i_BancoReg|Mux39~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux23~combout\,
	datab => \i_BancoReg|Mux39~combout\,
	datac => \i_BancoReg|Mux22~combout\,
	datad => \i_BancoReg|Mux38~combout\,
	combout => \i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X20_Y19_N28
\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\i_BancoReg|Mux22~combout\ & (!\i_BancoReg|Mux23~combout\ & (\i_BancoReg|Mux39~combout\ & \i_BancoReg|Mux38~combout\))) # (!\i_BancoReg|Mux22~combout\ & ((\i_BancoReg|Mux38~combout\) # 
-- ((!\i_BancoReg|Mux23~combout\ & \i_BancoReg|Mux39~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux22~combout\,
	datab => \i_BancoReg|Mux23~combout\,
	datac => \i_BancoReg|Mux39~combout\,
	datad => \i_BancoReg|Mux38~combout\,
	combout => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X19_Y19_N28
\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\ = (\i_BancoReg|Mux37~combout\ & ((\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\) # (!\i_BancoReg|Mux21~combout\))) # (!\i_BancoReg|Mux37~combout\ & (!\i_BancoReg|Mux21~combout\ & 
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux37~combout\,
	datac => \i_BancoReg|Mux21~combout\,
	datad => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~1_combout\,
	combout => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\);

-- Location: LCCOMB_X19_Y19_N18
\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3_combout\ = (\i_BancoReg|Mux20~combout\ & ((!\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\) # (!\i_BancoReg|Mux36~combout\))) # (!\i_BancoReg|Mux20~combout\ & (!\i_BancoReg|Mux36~combout\ & 
-- !\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_BancoReg|Mux20~combout\,
	datac => \i_BancoReg|Mux36~combout\,
	datad => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~2_combout\,
	combout => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3_combout\);

-- Location: LCCOMB_X19_Y19_N0
\i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0_combout\ = (\i_BancoReg|Mux19~combout\ & ((\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3_combout\) # (!\i_BancoReg|Mux35~combout\))) # (!\i_BancoReg|Mux19~combout\ & (!\i_BancoReg|Mux35~combout\ & 
-- \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux19~combout\,
	datac => \i_BancoReg|Mux35~combout\,
	datad => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3_combout\,
	combout => \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X19_Y19_N20
\i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\i_BancoReg|Mux18~combout\ & ((\i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0_combout\) # (!\i_BancoReg|Mux34~combout\))) # (!\i_BancoReg|Mux18~combout\ & (!\i_BancoReg|Mux34~combout\ & 
-- \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_BancoReg|Mux18~combout\,
	datac => \i_BancoReg|Mux34~combout\,
	datad => \i_ALU|i1|GenSum:5:i_Sumador1Bit|s_i~0_combout\,
	combout => \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X19_Y19_N2
\i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0_combout\ = (\i_BancoReg|Mux33~combout\ & (\i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1_combout\ & \i_BancoReg|Mux17~combout\)) # (!\i_BancoReg|Mux33~combout\ & ((\i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1_combout\) 
-- # (\i_BancoReg|Mux17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux33~combout\,
	datac => \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datad => \i_BancoReg|Mux17~combout\,
	combout => \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X19_Y19_N24
\i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~1_combout\ = \i_BancoReg|Mux32~combout\ $ (\i_BancoReg|Mux16~combout\ $ (\i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux32~combout\,
	datac => \i_BancoReg|Mux16~combout\,
	datad => \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0_combout\,
	combout => \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~1_combout\);

-- Location: LCCOMB_X19_Y19_N4
\i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\i_BancoReg|Mux32~combout\ & (\i_BancoReg|Mux16~combout\ & \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0_combout\)) # (!\i_BancoReg|Mux32~combout\ & ((\i_BancoReg|Mux16~combout\) # 
-- (\i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux32~combout\,
	datac => \i_BancoReg|Mux16~combout\,
	datad => \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~0_combout\,
	combout => \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X19_Y19_N30
\i_ALU|i1|GenSum:6:i_Sumador1Bit|s_i~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_ALU|i1|GenSum:6:i_Sumador1Bit|s_i~0_combout\ = \i_BancoReg|Mux33~combout\ $ (\i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1_combout\ $ (\i_BancoReg|Mux17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux33~combout\,
	datac => \i_ALU|i1|GenSum:5:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datad => \i_BancoReg|Mux17~combout\,
	combout => \i_ALU|i1|GenSum:6:i_Sumador1Bit|s_i~0_combout\);

-- Location: LCCOMB_X19_Y19_N14
\en_PC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~4_combout\ = (\i_ALU|i1|GenSum:6:i_Sumador1Bit|s_i~0_combout\ & (\i_BancoReg|Mux15~combout\ $ (\i_BancoReg|Mux31~combout\ $ (\i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux15~combout\,
	datab => \i_BancoReg|Mux31~combout\,
	datac => \i_ALU|i1|GenSum:7:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datad => \i_ALU|i1|GenSum:6:i_Sumador1Bit|s_i~0_combout\,
	combout => \en_PC~4_combout\);

-- Location: LCCOMB_X19_Y19_N12
\en_PC~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~5_combout\ = (\en_PC~4_combout\ & (\i_BancoReg|Mux19~combout\ $ (\i_BancoReg|Mux35~combout\ $ (\i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux19~combout\,
	datab => \i_BancoReg|Mux35~combout\,
	datac => \en_PC~4_combout\,
	datad => \i_ALU|i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~3_combout\,
	combout => \en_PC~5_combout\);

-- Location: LCCOMB_X19_Y19_N6
\en_PC~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~6_combout\ = (\en_PC~3_combout\ & (\i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\ & (\i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~1_combout\ & \en_PC~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_PC~3_combout\,
	datab => \i_ALU|i1|GenSum:1:i_Sumador1Bit|s_i~0_combout\,
	datac => \i_ALU|i1|GenSum:7:i_Sumador1Bit|s_i~1_combout\,
	datad => \en_PC~5_combout\,
	combout => \en_PC~6_combout\);

-- Location: LCCOMB_X18_Y18_N26
\en_PC~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~7_combout\ = (\en_PC~2_combout\ & (\i_ALU|i1|GenSum:10:i_Sumador1Bit|s_i~combout\ & (\i_ALU|i1|GenSum:11:i_Sumador1Bit|s_i~combout\ & \en_PC~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_PC~2_combout\,
	datab => \i_ALU|i1|GenSum:10:i_Sumador1Bit|s_i~combout\,
	datac => \i_ALU|i1|GenSum:11:i_Sumador1Bit|s_i~combout\,
	datad => \en_PC~6_combout\,
	combout => \en_PC~7_combout\);

-- Location: LCCOMB_X18_Y18_N6
\en_PC~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~8_combout\ = (\i_ALU|i1|GenSum:12:i_Sumador1Bit|s_i~combout\ & (\i_ALU|i1|GenSum:9:i_Sumador1Bit|s_i~combout\ & (\i_ALU|i1|GenSum:13:i_Sumador1Bit|s_i~combout\ & \en_PC~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_ALU|i1|GenSum:12:i_Sumador1Bit|s_i~combout\,
	datab => \i_ALU|i1|GenSum:9:i_Sumador1Bit|s_i~combout\,
	datac => \i_ALU|i1|GenSum:13:i_Sumador1Bit|s_i~combout\,
	datad => \en_PC~7_combout\,
	combout => \en_PC~8_combout\);

-- Location: LCCOMB_X18_Y18_N16
en_PC : cycloneii_lcell_comb
-- Equation(s):
-- \en_PC~combout\ = (\en_PC~9_combout\) # ((\i_ALU|i1|GenSum:14:i_Sumador1Bit|s_i~combout\ & (\i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\ & \en_PC~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_PC~9_combout\,
	datab => \i_ALU|i1|GenSum:14:i_Sumador1Bit|s_i~combout\,
	datac => \i_ALU|i1|GenSum:15:i_Sumador1Bit|s_i~combout\,
	datad => \en_PC~8_combout\,
	combout => \en_PC~combout\);

-- Location: LCCOMB_X22_Y18_N18
\i_IR|registro[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_IR|registro[14]~feeder_combout\ = \i_ROM|memoria_rtl_0|auto_generated|ram_block1a14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_ROM|memoria_rtl_0|auto_generated|ram_block1a14\,
	combout => \i_IR|registro[14]~feeder_combout\);

-- Location: LCFF_X22_Y18_N19
\i_IR|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_IR|registro[14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \estado_act.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_IR|registro\(14));

-- Location: LCCOMB_X22_Y16_N18
\estado_act.LWSW3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_act.LWSW3~0_combout\ = (\i_IR|registro\(15) & ((\i_IR|registro\(14) & (\estado_act.LWSW3~regout\)) # (!\i_IR|registro\(14) & ((\estado_act.DECOD~regout\))))) # (!\i_IR|registro\(15) & (((\estado_act.LWSW3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(15),
	datab => \i_IR|registro\(14),
	datac => \estado_act.LWSW3~regout\,
	datad => \estado_act.DECOD~regout\,
	combout => \estado_act.LWSW3~0_combout\);

-- Location: LCFF_X22_Y16_N19
\estado_act.LWSW3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado_act.LWSW3~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.LWSW3~regout\);

-- Location: LCCOMB_X22_Y16_N16
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\i_IR|registro\(15) & (\estado_act.LWSW3~regout\ & (\i_IR|registro\(13) & !\i_IR|registro\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(15),
	datab => \estado_act.LWSW3~regout\,
	datac => \i_IR|registro\(13),
	datad => \i_IR|registro\(14),
	combout => \Selector11~0_combout\);

-- Location: LCFF_X22_Y16_N17
\estado_act.LW4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.LW4~regout\);

-- Location: LCFF_X22_Y16_N9
\estado_act.LW5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \estado_act.LW4~regout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_act.LW5~regout\);

-- Location: LCCOMB_X21_Y17_N26
\i_Mux_Banco|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux15~0_combout\ = ((\estado_act.JALR3~regout\) # (\estado_act.LUI3~regout\)) # (!\estado_act.LW5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_act.LW5~regout\,
	datac => \estado_act.JALR3~regout\,
	datad => \estado_act.LUI3~regout\,
	combout => \i_Mux_Banco|Mux15~0_combout\);

-- Location: LCFF_X19_Y15_N31
\i_RAM|ram_block~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux39~combout\,
	sload => VCC,
	ena => \i_RAM|ram_block~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block~24_regout\);

-- Location: LCCOMB_X18_Y15_N28
\i_RAM|dout[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RAM|dout[0]~0_combout\ = (\i_RAM|ram_block~23_regout\ & (\i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\i_RAM|ram_block~23_regout\ & ((\i_RAM|ram_block~24_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_RAM|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \i_RAM|ram_block~24_regout\,
	datad => \i_RAM|ram_block~23_regout\,
	combout => \i_RAM|dout[0]~0_combout\);

-- Location: LCFF_X19_Y15_N13
\i_RAM|ram_block_rtl_0_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux39~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|ram_block_rtl_0_bypass\(13));

-- Location: LCFF_X18_Y15_N29
\i_RAM|dout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RAM|dout[0]~0_combout\,
	sdata => \i_RAM|ram_block_rtl_0_bypass\(13),
	sload => \i_RAM|ram_block~43_combout\,
	ena => \estado_act.LW4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RAM|dout\(0));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(0),
	combout => \switches~combout\(0));

-- Location: LCCOMB_X21_Y17_N2
\i_Mux_Banco|Mux15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_Mux_Banco|Mux15~combout\ = (\i_Mux_Banco|Mux15~2_combout\ & ((\i_Mux_Banco|Mux15~0_combout\) # ((\switches~combout\(0))))) # (!\i_Mux_Banco|Mux15~2_combout\ & (!\i_Mux_Banco|Mux15~0_combout\ & (\i_RAM|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Mux_Banco|Mux15~2_combout\,
	datab => \i_Mux_Banco|Mux15~0_combout\,
	datac => \i_RAM|dout\(0),
	datad => \switches~combout\(0),
	combout => \i_Mux_Banco|Mux15~combout\);

-- Location: LCCOMB_X19_Y18_N8
\i_BancoReg|Registro_r2|registro[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Registro_r2|registro[0]~feeder_combout\ = \i_Mux_Banco|Mux15~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_Mux_Banco|Mux15~combout\,
	combout => \i_BancoReg|Registro_r2|registro[0]~feeder_combout\);

-- Location: LCFF_X19_Y18_N9
\i_BancoReg|Registro_r2|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_BancoReg|Registro_r2|registro[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i_BancoReg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r2|registro\(0));

-- Location: LCFF_X16_Y17_N11
\i_BancoReg|Registro_r7|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux15~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r7|registro\(0));

-- Location: LCFF_X16_Y17_N21
\i_BancoReg|Registro_r4|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_Mux_Banco|Mux15~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i_BancoReg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_BancoReg|Registro_r4|registro\(0));

-- Location: LCCOMB_X20_Y15_N26
\i_BancoReg|Mux39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux39~0_combout\ = (\i_IR|registro\(7) & ((\i_BancoReg|Registro_r5|registro\(0)) # ((\i_IR|registro\(8))))) # (!\i_IR|registro\(7) & (((!\i_IR|registro\(8) & \i_BancoReg|Registro_r4|registro\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_IR|registro\(7),
	datab => \i_BancoReg|Registro_r5|registro\(0),
	datac => \i_IR|registro\(8),
	datad => \i_BancoReg|Registro_r4|registro\(0),
	combout => \i_BancoReg|Mux39~0_combout\);

-- Location: LCCOMB_X20_Y15_N4
\i_BancoReg|Mux39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux39~1_combout\ = (\i_IR|registro\(8) & ((\i_BancoReg|Mux39~0_combout\ & ((\i_BancoReg|Registro_r7|registro\(0)))) # (!\i_BancoReg|Mux39~0_combout\ & (\i_BancoReg|Registro_r6|registro\(0))))) # (!\i_IR|registro\(8) & 
-- (((\i_BancoReg|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r6|registro\(0),
	datab => \i_IR|registro\(8),
	datac => \i_BancoReg|Registro_r7|registro\(0),
	datad => \i_BancoReg|Mux39~0_combout\,
	combout => \i_BancoReg|Mux39~1_combout\);

-- Location: LCCOMB_X19_Y18_N12
\i_BancoReg|Mux39~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux39~2_combout\ = (\i_BancoReg|Mux36~1_combout\ & ((\i_BancoReg|Mux36~2_combout\ & ((\i_BancoReg|Mux39~1_combout\))) # (!\i_BancoReg|Mux36~2_combout\ & (\i_BancoReg|Registro_r1|registro\(0))))) # (!\i_BancoReg|Mux36~1_combout\ & 
-- (((\i_BancoReg|Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Registro_r1|registro\(0),
	datab => \i_BancoReg|Mux36~1_combout\,
	datac => \i_BancoReg|Mux36~2_combout\,
	datad => \i_BancoReg|Mux39~1_combout\,
	combout => \i_BancoReg|Mux39~2_combout\);

-- Location: LCCOMB_X19_Y18_N10
\i_BancoReg|Mux39\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_BancoReg|Mux39~combout\ = (\i_BancoReg|Mux36~0_combout\ & ((\i_BancoReg|Mux39~2_combout\ & ((\i_BancoReg|Registro_r3|registro\(0)))) # (!\i_BancoReg|Mux39~2_combout\ & (\i_BancoReg|Registro_r2|registro\(0))))) # (!\i_BancoReg|Mux36~0_combout\ & 
-- (((\i_BancoReg|Mux39~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_BancoReg|Mux36~0_combout\,
	datab => \i_BancoReg|Registro_r2|registro\(0),
	datac => \i_BancoReg|Registro_r3|registro\(0),
	datad => \i_BancoReg|Mux39~2_combout\,
	combout => \i_BancoReg|Mux39~combout\);

-- Location: LCCOMB_X22_Y16_N4
enableMuxReg : cycloneii_lcell_comb
-- Equation(s):
-- \enableMuxReg~combout\ = (\estado_act.SW4~regout\ & \i_Reg|registro\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_act.SW4~regout\,
	datad => \i_Reg|registro\(15),
	combout => \enableMuxReg~combout\);

-- Location: LCFF_X24_Y18_N13
\i_RegPeri|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux39~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(0));

-- Location: LCFF_X24_Y14_N17
\i_RegPeri|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux38~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(1));

-- Location: LCCOMB_X24_Y14_N18
\i_RegPeri|registro[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RegPeri|registro[2]~feeder_combout\ = \i_BancoReg|Mux37~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux37~combout\,
	combout => \i_RegPeri|registro[2]~feeder_combout\);

-- Location: LCFF_X24_Y14_N19
\i_RegPeri|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RegPeri|registro[2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(2));

-- Location: LCCOMB_X24_Y14_N24
\i_RegPeri|registro[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RegPeri|registro[3]~feeder_combout\ = \i_BancoReg|Mux36~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux36~combout\,
	combout => \i_RegPeri|registro[3]~feeder_combout\);

-- Location: LCFF_X24_Y14_N25
\i_RegPeri|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RegPeri|registro[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(3));

-- Location: LCCOMB_X22_Y18_N16
\i_RegPeri|registro[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RegPeri|registro[4]~feeder_combout\ = \i_BancoReg|Mux35~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux35~combout\,
	combout => \i_RegPeri|registro[4]~feeder_combout\);

-- Location: LCFF_X22_Y18_N17
\i_RegPeri|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RegPeri|registro[4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(4));

-- Location: LCFF_X22_Y18_N27
\i_RegPeri|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux34~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(5));

-- Location: LCFF_X24_Y14_N7
\i_RegPeri|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux33~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(6));

-- Location: LCFF_X24_Y14_N9
\i_RegPeri|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux32~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(7));

-- Location: LCFF_X24_Y14_N11
\i_RegPeri|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux31~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(8));

-- Location: LCCOMB_X24_Y14_N0
\i_RegPeri|registro[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RegPeri|registro[9]~feeder_combout\ = \i_BancoReg|Mux30~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux30~combout\,
	combout => \i_RegPeri|registro[9]~feeder_combout\);

-- Location: LCFF_X24_Y14_N1
\i_RegPeri|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RegPeri|registro[9]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(9));

-- Location: LCCOMB_X24_Y14_N26
\i_RegPeri|registro[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RegPeri|registro[10]~feeder_combout\ = \i_BancoReg|Mux29~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux29~combout\,
	combout => \i_RegPeri|registro[10]~feeder_combout\);

-- Location: LCFF_X24_Y14_N27
\i_RegPeri|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RegPeri|registro[10]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(10));

-- Location: LCFF_X24_Y14_N21
\i_RegPeri|registro[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux28~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(11));

-- Location: LCFF_X24_Y14_N3
\i_RegPeri|registro[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux27~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(12));

-- Location: LCFF_X24_Y18_N27
\i_RegPeri|registro[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux26~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(13));

-- Location: LCCOMB_X24_Y14_N4
\i_RegPeri|registro[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i_RegPeri|registro[14]~feeder_combout\ = \i_BancoReg|Mux25~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_BancoReg|Mux25~combout\,
	combout => \i_RegPeri|registro[14]~feeder_combout\);

-- Location: LCFF_X24_Y14_N5
\i_RegPeri|registro[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i_RegPeri|registro[14]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(14));

-- Location: LCFF_X24_Y14_N23
\i_RegPeri|registro[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i_BancoReg|Mux24~combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \enableMuxReg~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i_RegPeri|registro\(15));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(7));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(8));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(9));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(10));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(11));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(12));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(13));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(14));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i_RegPeri|registro\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(15));
END structure;


