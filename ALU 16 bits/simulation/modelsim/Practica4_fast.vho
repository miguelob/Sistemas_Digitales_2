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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/06/2019 15:31:54"

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

ENTITY 	ALU IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	op_alu : IN std_logic_vector(3 DOWNTO 0);
	ov : OUT std_logic;
	co : OUT std_logic;
	z : OUT std_logic;
	res : OUT std_logic_vector(4 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- ov	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- co	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- res[0]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- res[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- res[2]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- res[3]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- res[4]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op_alu[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op_alu[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op_alu[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op_alu[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_op_alu : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ov : std_logic;
SIGNAL ww_co : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_res : std_logic_vector(4 DOWNTO 0);
SIGNAL \i3|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i3|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i3|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ : std_logic;
SIGNAL \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux7~16_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i1|GenSum:1:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ : std_logic;
SIGNAL \i1|GenSum:3:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \Mux7~14_combout\ : std_logic;
SIGNAL \Mux7~15_combout\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \i4|res~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \i4|res~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \i1|GenSum:2:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \i4|res~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \i3|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \i1|GenSum:4:i_Sumador1Bit|s_i~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \i1|b_i\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \op_alu~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_op_alu <= op_alu;
ov <= ww_ov;
co <= ww_co;
z <= ww_z;
res <= ww_res;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i3|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\i3|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \i3|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \i3|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \i3|Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\i3|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \i3|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \i3|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \i3|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \i3|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\i3|Mult0|auto_generated|mac_mult1~dataout\ & \i3|Mult0|auto_generated|mac_mult1~7\ & \i3|Mult0|auto_generated|mac_mult1~6\ & \i3|Mult0|auto_generated|mac_mult1~5\ & \i3|Mult0|auto_generated|mac_mult1~4\ & \i3|Mult0|auto_generated|mac_mult1~3\ & 
\i3|Mult0|auto_generated|mac_mult1~2\ & \i3|Mult0|auto_generated|mac_mult1~1\ & \i3|Mult0|auto_generated|mac_mult1~0\);

\i3|Mult0|auto_generated|mac_out2~0\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\i3|Mult0|auto_generated|mac_out2~1\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\i3|Mult0|auto_generated|mac_out2~2\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\i3|Mult0|auto_generated|mac_out2~3\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\i3|Mult0|auto_generated|mac_out2~4\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\i3|Mult0|auto_generated|mac_out2~5\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\i3|Mult0|auto_generated|mac_out2~6\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\i3|Mult0|auto_generated|mac_out2~7\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\i3|Mult0|auto_generated|mac_out2~dataout\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\i3|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\i3|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\i3|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\i3|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\i3|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\i3|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\i3|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\i3|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\i3|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\i3|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a~combout\(4) & \a~combout\(3) & \a~combout\(2) & \a~combout\(1) & \a~combout\(0) & gnd & gnd & gnd & gnd);

\i3|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\b~combout\(4) & \b~combout\(3) & \b~combout\(2) & \b~combout\(1) & \b~combout\(0) & gnd & gnd & gnd & gnd);

\i3|Mult0|auto_generated|mac_mult1~0\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\i3|Mult0|auto_generated|mac_mult1~1\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\i3|Mult0|auto_generated|mac_mult1~2\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\i3|Mult0|auto_generated|mac_mult1~3\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\i3|Mult0|auto_generated|mac_mult1~4\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\i3|Mult0|auto_generated|mac_mult1~5\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\i3|Mult0|auto_generated|mac_mult1~6\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\i3|Mult0|auto_generated|mac_mult1~7\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\i3|Mult0|auto_generated|mac_mult1~dataout\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\i3|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

-- Location: DSPOUT_X28_Y8_N2
\i3|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \i3|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X42_Y8_N10
\i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\ = (\a~combout\(0) & (\b~combout\(0) $ (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	datad => \Equal0~1_combout\,
	combout => \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\);

-- Location: LCCOMB_X42_Y8_N6
\i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i1|b_i\(1) & (\a~combout\(1) & ((\i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\) # (!\i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\)))) # (!\i1|b_i\(1) & 
-- ((\i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\) # ((\a~combout\(1)) # (!\i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datab => \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \i1|b_i\(1),
	datad => \a~combout\(1),
	combout => \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X43_Y8_N14
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\a~combout\(4) & (\b~combout\(4) & (\a~combout\(0) & \b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \b~combout\(4),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X44_Y8_N24
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & (\i4|res~2_combout\ & (\op_alu~combout\(2) & !\op_alu~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \i4|res~2_combout\,
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(3),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X42_Y8_N30
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\b~combout\(1) & (((!\a~combout\(0) & \b~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(0) & (\b~combout\(0) & !\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \a~combout\(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y8_N24
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\b~combout\(2) & ((\LessThan0~0_combout\) # (!\a~combout\(2)))) # (!\b~combout\(2) & (!\a~combout\(2) & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X43_Y8_N24
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\b~combout\(3) & ((\LessThan0~1_combout\) # (!\a~combout\(3)))) # (!\b~combout\(3) & (\LessThan0~1_combout\ & !\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \LessThan0~1_combout\,
	datad => \a~combout\(3),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y8_N12
\Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (!\i3|Mult0|auto_generated|mac_out2~dataout\ & (!\i3|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\i3|Mult0|auto_generated|mac_out2~DATAOUT1\ & !\i3|Mult0|auto_generated|mac_out2~DATAOUT2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Mult0|auto_generated|mac_out2~dataout\,
	datab => \i3|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \i3|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \i3|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X43_Y8_N12
\Mux7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~13_combout\ = (\i1|GenSum:2:i_Sumador1Bit|s_i~combout\ & (\Equal0~0_combout\ & (\a~combout\(0) $ (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:2:i_Sumador1Bit|s_i~combout\,
	datab => \Equal0~0_combout\,
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	combout => \Mux7~13_combout\);

-- Location: LCCOMB_X42_Y8_N14
\Mux7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~16_combout\ = (\Mux7~5_combout\ & (\i4|res~1_combout\ & (\b~combout\(1) & \a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~5_combout\,
	datab => \i4|res~1_combout\,
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \Mux7~16_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op_alu[2]~I\ : cycloneii_io
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
	padio => ww_op_alu(2),
	combout => \op_alu~combout\(2));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op_alu[1]~I\ : cycloneii_io
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
	padio => ww_op_alu(1),
	combout => \op_alu~combout\(1));

-- Location: LCCOMB_X40_Y8_N24
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\op_alu~combout\(2) & \op_alu~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(1),
	combout => \Mux2~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op_alu[3]~I\ : cycloneii_io
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
	padio => ww_op_alu(3),
	combout => \op_alu~combout\(3));

-- Location: LCCOMB_X44_Y8_N0
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\op_alu~combout\(3) & (!\op_alu~combout\(2) & !\op_alu~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_alu~combout\(3),
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(1),
	combout => \Equal0~0_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op_alu[0]~I\ : cycloneii_io
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
	padio => ww_op_alu(0),
	combout => \op_alu~combout\(0));

-- Location: LCCOMB_X44_Y8_N18
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\op_alu~combout\(1) & (!\op_alu~combout\(3) & (!\op_alu~combout\(2) & !\op_alu~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_alu~combout\(1),
	datab => \op_alu~combout\(3),
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X44_Y8_N12
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = \b~combout\(4) $ (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(4),
	datad => \Equal0~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X44_Y8_N22
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Equal0~0_combout\ & ((\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ & (!\a~combout\(4) & !\Mux6~0_combout\)) # (!\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\a~combout\(4) & \Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \a~combout\(4),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: DSPMULT_X28_Y8_N0
\i3|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \i3|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \i3|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \i3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X40_Y8_N20
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\i3|Mult0|auto_generated|mac_out2~DATAOUT9\ & (((\i3|Mult0|auto_generated|mac_out2~DATAOUT7\ & \i3|Mult0|auto_generated|mac_out2~DATAOUT8\)) # (!\i3|Mult0|auto_generated|mac_out2~DATAOUT5\))) # 
-- (!\i3|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\i3|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\i3|Mult0|auto_generated|mac_out2~DATAOUT7\) # (\i3|Mult0|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \i3|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \i3|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \i3|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X40_Y8_N26
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\i3|Mult0|auto_generated|mac_out2~DATAOUT4\ & !\op_alu~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datac => \op_alu~combout\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X40_Y8_N14
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\i3|Mult0|auto_generated|mac_out2~DATAOUT6\ & (((!\Mux5~0_combout\) # (!\Mux5~1_combout\)) # (!\i3|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!\i3|Mult0|auto_generated|mac_out2~DATAOUT6\ & 
-- ((\i3|Mult0|auto_generated|mac_out2~DATAOUT5\) # ((\Mux5~1_combout\) # (\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \i3|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X40_Y8_N16
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux6~1_combout\) # ((\Mux2~0_combout\ & (\Mux5~2_combout\ & !\op_alu~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux5~2_combout\,
	datad => \op_alu~combout\(3),
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X40_Y8_N22
\Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & (!\op_alu~combout\(3) & (\Mux2~0_combout\ & !\i3|Mult0|auto_generated|mac_out2~DATAOUT4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datab => \op_alu~combout\(3),
	datac => \Mux2~0_combout\,
	datad => \i3|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X40_Y8_N8
\Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (\op_alu~combout\(2) & (!\a~combout\(2) & (!\a~combout\(1) & !\op_alu~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_alu~combout\(2),
	datab => \a~combout\(2),
	datac => \a~combout\(1),
	datad => \op_alu~combout\(3),
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X43_Y8_N6
\Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\op_alu~combout\(1) & (((!\a~combout\(4))))) # (!\op_alu~combout\(1) & (\op_alu~combout\(0) & (!\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_alu~combout\(1),
	datab => \op_alu~combout\(0),
	datac => \a~combout\(0),
	datad => \a~combout\(4),
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X40_Y8_N2
\Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\Mux7~8_combout\) # ((!\a~combout\(3) & (\Mux7~10_combout\ & \Mux7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \Mux7~8_combout\,
	datac => \Mux7~10_combout\,
	datad => \Mux7~9_combout\,
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X42_Y8_N0
\i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\Equal0~1_combout\) # (\b~combout\(0) $ (\a~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	datad => \Equal0~1_combout\,
	combout => \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X42_Y8_N20
\i1|b_i[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|b_i\(1) = \b~combout\(1) $ (\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \Equal0~1_combout\,
	combout => \i1|b_i\(1));

-- Location: LCCOMB_X42_Y8_N18
\i1|GenSum:1:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:1:i_Sumador1Bit|s_i~combout\ = \i1|b_i\(1) $ (\a~combout\(1) $ (((\i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\) # (!\i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~1_combout\,
	datab => \i1|GenSum:0:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \i1|b_i\(1),
	datad => \a~combout\(1),
	combout => \i1|GenSum:1:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X43_Y8_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~2_combout\ & ((\b~combout\(4)) # (!\a~combout\(4)))) # (!\LessThan0~2_combout\ & (\b~combout\(4) & !\a~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X40_Y8_N18
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\op_alu~combout\(2) & \op_alu~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(3),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X43_Y8_N18
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\op_alu~combout\(0) & !\op_alu~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_alu~combout\(0),
	datac => \op_alu~combout\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X43_Y8_N4
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux4~0_combout\ & ((\Mux7~16_combout\) # ((!\LessThan0~3_combout\ & \Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~16_combout\,
	datab => \LessThan0~3_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X43_Y8_N26
\Mux7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = \Equal0~1_combout\ $ (\b~combout\(4) $ (!\a~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \b~combout\(4),
	datad => \a~combout\(4),
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X42_Y8_N16
\i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & ((\a~combout\(2)) # (\b~combout\(2) $ (!\Equal0~1_combout\)))) # (!\i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\a~combout\(2) & (\b~combout\(2) $ 
-- (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \Equal0~1_combout\,
	combout => \i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X43_Y8_N8
\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ = (\a~combout\(3) & ((\i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\) # (\b~combout\(3) $ (!\Equal0~1_combout\)))) # (!\a~combout\(3) & (\i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ & (\b~combout\(3) $ 
-- (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \b~combout\(3),
	datad => \Equal0~1_combout\,
	combout => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\);

-- Location: LCCOMB_X43_Y8_N0
\i1|GenSum:3:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:3:i_Sumador1Bit|s_i~combout\ = \a~combout\(3) $ (\i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\b~combout\(3) $ (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \i1|GenSum:2:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datac => \b~combout\(3),
	datad => \Equal0~1_combout\,
	combout => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X43_Y8_N30
\Mux7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~14_combout\ = (\Mux7~13_combout\ & (\i1|GenSum:3:i_Sumador1Bit|s_i~combout\ & (\Mux7~12_combout\ $ (!\i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~13_combout\,
	datab => \Mux7~12_combout\,
	datac => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datad => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	combout => \Mux7~14_combout\);

-- Location: LCCOMB_X43_Y8_N16
\Mux7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~15_combout\ = (\Mux7~11_combout\) # ((\Mux7~6_combout\) # ((\i1|GenSum:1:i_Sumador1Bit|s_i~combout\ & \Mux7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~11_combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datac => \Mux7~6_combout\,
	datad => \Mux7~14_combout\,
	combout => \Mux7~15_combout\);

-- Location: LCCOMB_X40_Y8_N28
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\op_alu~combout\(2) & (((\a~combout\(1))) # (!\op_alu~combout\(1)))) # (!\op_alu~combout\(2) & (\op_alu~combout\(1) & ((\i3|Mult0|auto_generated|mac_out2~dataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_alu~combout\(2),
	datab => \op_alu~combout\(1),
	datac => \a~combout\(1),
	datad => \i3|Mult0|auto_generated|mac_out2~dataout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X43_Y8_N10
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((\op_alu~combout\(0)) # ((\a~combout\(0) & \b~combout\(0))))) # (!\Mux4~2_combout\ & ((\a~combout\(0) $ (\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \op_alu~combout\(0),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X43_Y8_N20
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!\op_alu~combout\(3) & (\Mux4~2_combout\ $ (((!\op_alu~combout\(1) & \Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_alu~combout\(1),
	datab => \Mux4~2_combout\,
	datac => \op_alu~combout\(3),
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X43_Y8_N22
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\) # ((\LessThan0~3_combout\ & (\Mux4~1_combout\ & \Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \LessThan0~3_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X42_Y8_N2
\i4|res~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|res~0_combout\ = (\b~combout\(1) & \a~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \i4|res~0_combout\);

-- Location: LCCOMB_X44_Y8_N20
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\op_alu~combout\(1)) # (!\op_alu~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(1),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X42_Y8_N22
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux2~1_combout\ & (((\Mux2~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux2~2_combout\ & (!\i1|GenSum:1:i_Sumador1Bit|s_i~combout\)) # (!\Mux2~2_combout\ & ((!\i4|res~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \i1|GenSum:1:i_Sumador1Bit|s_i~combout\,
	datac => \i4|res~0_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X42_Y8_N8
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux2~1_combout\ & ((\Mux3~0_combout\ & ((\a~combout\(2)))) # (!\Mux3~0_combout\ & (\a~combout\(0))))) # (!\Mux2~1_combout\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \a~combout\(0),
	datac => \a~combout\(2),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X40_Y8_N30
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\op_alu~combout\(3) & ((\Mux2~0_combout\ & ((\i3|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!\Mux2~0_combout\ & (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \i3|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \op_alu~combout\(3),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X42_Y8_N4
\i4|res~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|res~1_combout\ = (\a~combout\(2) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \b~combout\(2),
	combout => \i4|res~1_combout\);

-- Location: LCCOMB_X42_Y8_N26
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~1_combout\ & ((\Mux2~2_combout\) # ((\a~combout\(1))))) # (!\Mux2~1_combout\ & (!\Mux2~2_combout\ & (!\i4|res~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~2_combout\,
	datac => \i4|res~1_combout\,
	datad => \a~combout\(1),
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X42_Y8_N12
\i1|GenSum:2:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:2:i_Sumador1Bit|s_i~combout\ = \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\b~combout\(2) $ (\a~combout\(2) $ (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:1:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \Equal0~1_combout\,
	combout => \i1|GenSum:2:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X42_Y8_N28
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~3_combout\ & ((\a~combout\(3)) # ((!\Mux2~2_combout\)))) # (!\Mux2~3_combout\ & (((!\i1|GenSum:2:i_Sumador1Bit|s_i~combout\ & \Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \Mux2~3_combout\,
	datac => \i1|GenSum:2:i_Sumador1Bit|s_i~combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X40_Y8_N0
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (!\op_alu~combout\(3) & ((\Mux2~0_combout\ & ((\i3|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\Mux2~0_combout\ & (\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \i3|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datac => \Mux2~0_combout\,
	datad => \op_alu~combout\(3),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X43_Y8_N28
\i4|res~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|res~2_combout\ = (\b~combout\(3) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \i4|res~2_combout\);

-- Location: LCCOMB_X44_Y8_N14
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux2~1_combout\ & (((\Mux2~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux2~2_combout\ & ((!\i1|GenSum:3:i_Sumador1Bit|s_i~combout\))) # (!\Mux2~2_combout\ & (!\i4|res~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \i4|res~2_combout\,
	datac => \i1|GenSum:3:i_Sumador1Bit|s_i~combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X44_Y8_N10
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\op_alu~combout\(2) & ((\op_alu~combout\(0)) # (\op_alu~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_alu~combout\(0),
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(1),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X44_Y8_N8
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\a~combout\(4)) # (!\Mux2~1_combout\)))) # (!\Mux1~0_combout\ & (\a~combout\(2) & ((\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \Mux1~0_combout\,
	datac => \a~combout\(4),
	datad => \Mux2~1_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X40_Y8_N10
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\op_alu~combout\(3) & ((\Mux2~0_combout\ & ((\i3|Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!\Mux2~0_combout\ & (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux1~1_combout\,
	datac => \i3|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \op_alu~combout\(3),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X44_Y8_N30
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\op_alu~combout\(2) & (((\a~combout\(4) & !\op_alu~combout\(0))))) # (!\op_alu~combout\(2) & (\i3|Mult0|auto_generated|mac_out2~DATAOUT4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \a~combout\(4),
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X44_Y8_N16
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\op_alu~combout\(1) & (\Mux0~2_combout\ & !\op_alu~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_alu~combout\(1),
	datab => \Mux0~2_combout\,
	datad => \op_alu~combout\(3),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X44_Y8_N2
\i1|GenSum:4:i_Sumador1Bit|s_i\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|GenSum:4:i_Sumador1Bit|s_i~combout\ = \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\ $ (\b~combout\(4) $ (\a~combout\(4) $ (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|GenSum:3:i_Sumador1Bit|c_i_mas_1~0_combout\,
	datab => \b~combout\(4),
	datac => \a~combout\(4),
	datad => \Equal0~1_combout\,
	combout => \i1|GenSum:4:i_Sumador1Bit|s_i~combout\);

-- Location: LCCOMB_X44_Y8_N26
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\op_alu~combout\(0) & (\a~combout\(3))) # (!\op_alu~combout\(0) & (((!\a~combout\(4)) # (!\b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(4),
	datac => \a~combout\(4),
	datad => \op_alu~combout\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X44_Y8_N4
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\op_alu~combout\(1) & (\Mux0~0_combout\ & (\op_alu~combout\(2) & !\op_alu~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_alu~combout\(1),
	datab => \Mux0~0_combout\,
	datac => \op_alu~combout\(2),
	datad => \op_alu~combout\(3),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X44_Y8_N28
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\) # ((\Mux0~1_combout\) # ((!\i1|GenSum:4:i_Sumador1Bit|s_i~combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \i1|GenSum:4:i_Sumador1Bit|s_i~combout\,
	datac => \Mux0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Mux0~4_combout\);

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ov~I\ : cycloneii_io
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
	datain => \Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ov);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\co~I\ : cycloneii_io
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
	datain => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_co);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z~I\ : cycloneii_io
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
	datain => \Mux7~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z);

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\res[0]~I\ : cycloneii_io
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
	datain => \Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_res(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\res[1]~I\ : cycloneii_io
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
	datain => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_res(1));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\res[2]~I\ : cycloneii_io
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
	datain => \Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_res(2));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\res[3]~I\ : cycloneii_io
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
	datain => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_res(3));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\res[4]~I\ : cycloneii_io
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
	datain => \Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_res(4));
END structure;


