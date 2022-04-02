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

-- DATE "01/19/2019 10:18:35"

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

ENTITY 	RS232 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	datos : IN std_logic;
	paridad_out : OUT std_logic;
	framing : OUT std_logic;
	salida : OUT std_logic_vector(10 DOWNTO 0)
	);
END RS232;

-- Design Ports Information
-- paridad_out	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- framing	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[1]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[2]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[4]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[6]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[8]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[9]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[10]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RS232 IS
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
SIGNAL ww_datos : std_logic;
SIGNAL ww_paridad_out : std_logic;
SIGNAL ww_framing : std_logic;
SIGNAL ww_salida : std_logic_vector(10 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i5|Add0~0_combout\ : std_logic;
SIGNAL \i5|Add0~2_combout\ : std_logic;
SIGNAL \i5|Add0~8_combout\ : std_logic;
SIGNAL \i5|Add0~10_combout\ : std_logic;
SIGNAL \i5|Add0~14_combout\ : std_logic;
SIGNAL \i5|Add0~20_combout\ : std_logic;
SIGNAL \i4|Add0~6_combout\ : std_logic;
SIGNAL \i4|Add0~12_combout\ : std_logic;
SIGNAL \i4|Add0~14_combout\ : std_logic;
SIGNAL \i4|Add0~16_combout\ : std_logic;
SIGNAL \i1|contador[1]~0_combout\ : std_logic;
SIGNAL \i1|contador[0]~2_combout\ : std_logic;
SIGNAL \i1|Equal0~1_combout\ : std_logic;
SIGNAL \i3|estado_act.Inicio~regout\ : std_logic;
SIGNAL \i3|estado_act.Final~regout\ : std_logic;
SIGNAL \i3|Selector3~0_combout\ : std_logic;
SIGNAL \i5|contador[10]~3_combout\ : std_logic;
SIGNAL \i5|contador[7]~6_combout\ : std_logic;
SIGNAL \i2|stop[3]~0_combout\ : std_logic;
SIGNAL \i2|stop[2]~2_combout\ : std_logic;
SIGNAL \i2|stop[2]~3_combout\ : std_logic;
SIGNAL \i4|contador[7]~4_combout\ : std_logic;
SIGNAL \i4|contador[6]~6_combout\ : std_logic;
SIGNAL \i3|Selector3~2_combout\ : std_logic;
SIGNAL \i2|stop[0]~5_combout\ : std_logic;
SIGNAL \i3|estado_act.Inicio~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i1|contador[2]~5_combout\ : std_logic;
SIGNAL \i1|contador[2]~6_combout\ : std_logic;
SIGNAL \i1|contador[3]~3_combout\ : std_logic;
SIGNAL \i1|contador[3]~4_combout\ : std_logic;
SIGNAL \i1|contador[1]~1_combout\ : std_logic;
SIGNAL \i1|Equal0~0_combout\ : std_logic;
SIGNAL \i3|Selector3~1_combout\ : std_logic;
SIGNAL \i3|Selector1~0_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \i3|estado_act.Start~regout\ : std_logic;
SIGNAL \datos~combout\ : std_logic;
SIGNAL \i3|process_1~0_combout\ : std_logic;
SIGNAL \i4|contador[3]~8_combout\ : std_logic;
SIGNAL \i4|Add0~0_combout\ : std_logic;
SIGNAL \i4|contador[0]~11_combout\ : std_logic;
SIGNAL \i4|Add0~1\ : std_logic;
SIGNAL \i4|Add0~2_combout\ : std_logic;
SIGNAL \i4|contador[1]~10_combout\ : std_logic;
SIGNAL \i4|Add0~3\ : std_logic;
SIGNAL \i4|Add0~4_combout\ : std_logic;
SIGNAL \i4|contador[2]~9_combout\ : std_logic;
SIGNAL \i4|Add0~5\ : std_logic;
SIGNAL \i4|Add0~7\ : std_logic;
SIGNAL \i4|Add0~8_combout\ : std_logic;
SIGNAL \i4|contador[4]~5_combout\ : std_logic;
SIGNAL \i4|Add0~9\ : std_logic;
SIGNAL \i4|Add0~10_combout\ : std_logic;
SIGNAL \i4|contador[5]~7_combout\ : std_logic;
SIGNAL \i4|co~1_combout\ : std_logic;
SIGNAL \i4|co~2_combout\ : std_logic;
SIGNAL \i4|contador[10]~0_combout\ : std_logic;
SIGNAL \i4|contador[8]~2_combout\ : std_logic;
SIGNAL \i4|Add0~11\ : std_logic;
SIGNAL \i4|Add0~13\ : std_logic;
SIGNAL \i4|Add0~15\ : std_logic;
SIGNAL \i4|Add0~17\ : std_logic;
SIGNAL \i4|Add0~18_combout\ : std_logic;
SIGNAL \i4|contador[9]~3_combout\ : std_logic;
SIGNAL \i4|Add0~19\ : std_logic;
SIGNAL \i4|Add0~20_combout\ : std_logic;
SIGNAL \i4|contador[10]~1_combout\ : std_logic;
SIGNAL \i4|co~0_combout\ : std_logic;
SIGNAL \i3|process_1~1_combout\ : std_logic;
SIGNAL \i3|Selector2~2_combout\ : std_logic;
SIGNAL \i3|estado_act.Registro~regout\ : std_logic;
SIGNAL \i5|contador[1]~11_combout\ : std_logic;
SIGNAL \i5|contador[0]~12_combout\ : std_logic;
SIGNAL \i5|Add0~1\ : std_logic;
SIGNAL \i5|Add0~3\ : std_logic;
SIGNAL \i5|Add0~5\ : std_logic;
SIGNAL \i5|Add0~6_combout\ : std_logic;
SIGNAL \i5|contador[3]~9_combout\ : std_logic;
SIGNAL \i5|Add0~4_combout\ : std_logic;
SIGNAL \i5|contador[2]~10_combout\ : std_logic;
SIGNAL \i5|co~2_combout\ : std_logic;
SIGNAL \i5|contador[5]~5_combout\ : std_logic;
SIGNAL \i5|contador[4]~8_combout\ : std_logic;
SIGNAL \i5|Add0~7\ : std_logic;
SIGNAL \i5|Add0~9\ : std_logic;
SIGNAL \i5|Add0~11\ : std_logic;
SIGNAL \i5|Add0~12_combout\ : std_logic;
SIGNAL \i5|contador[6]~7_combout\ : std_logic;
SIGNAL \i5|co~1_combout\ : std_logic;
SIGNAL \i5|contador[11]~0_combout\ : std_logic;
SIGNAL \i5|Add0~13\ : std_logic;
SIGNAL \i5|Add0~15\ : std_logic;
SIGNAL \i5|Add0~16_combout\ : std_logic;
SIGNAL \i5|contador[8]~4_combout\ : std_logic;
SIGNAL \i5|Add0~17\ : std_logic;
SIGNAL \i5|Add0~18_combout\ : std_logic;
SIGNAL \i5|contador[9]~2_combout\ : std_logic;
SIGNAL \i5|Add0~19\ : std_logic;
SIGNAL \i5|Add0~21\ : std_logic;
SIGNAL \i5|Add0~22_combout\ : std_logic;
SIGNAL \i5|contador[11]~1_combout\ : std_logic;
SIGNAL \i5|co~0_combout\ : std_logic;
SIGNAL \i5|co~combout\ : std_logic;
SIGNAL \i2|stop[3]~1_combout\ : std_logic;
SIGNAL \i2|stop[1]~4_combout\ : std_logic;
SIGNAL \i2|process_0~0_combout\ : std_logic;
SIGNAL \i2|contador~0_combout\ : std_logic;
SIGNAL \i2|contador~regout\ : std_logic;
SIGNAL \i1|registro[0]~feeder_combout\ : std_logic;
SIGNAL \i1|process_0~0_combout\ : std_logic;
SIGNAL \i1|registro[2]~feeder_combout\ : std_logic;
SIGNAL \i1|registro[4]~feeder_combout\ : std_logic;
SIGNAL \i3|error~0_combout\ : std_logic;
SIGNAL \i1|s_p[0]~0_combout\ : std_logic;
SIGNAL \i1|s_p[1]~1_combout\ : std_logic;
SIGNAL \i1|s_p[2]~2_combout\ : std_logic;
SIGNAL \i1|s_p[3]~3_combout\ : std_logic;
SIGNAL \i1|s_p[4]~4_combout\ : std_logic;
SIGNAL \i1|s_p[5]~5_combout\ : std_logic;
SIGNAL \i1|s_p[6]~6_combout\ : std_logic;
SIGNAL \i1|s_p[7]~7_combout\ : std_logic;
SIGNAL \i1|s_p[8]~8_combout\ : std_logic;
SIGNAL \i1|s_p[9]~9_combout\ : std_logic;
SIGNAL \i1|s_p[10]~10_combout\ : std_logic;
SIGNAL \i1|registro\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \i1|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|stop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i4|contador\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \i5|contador\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_datos <= datos;
paridad_out <= ww_paridad_out;
framing <= ww_framing;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_n~combout\);
\ALT_INV_reset_n~clkctrl_outclk\ <= NOT \reset_n~clkctrl_outclk\;

-- Location: LCCOMB_X42_Y24_N0
\i5|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~0_combout\ = \i5|contador\(0) $ (VCC)
-- \i5|Add0~1\ = CARRY(\i5|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador\(0),
	datad => VCC,
	combout => \i5|Add0~0_combout\,
	cout => \i5|Add0~1\);

-- Location: LCCOMB_X42_Y24_N2
\i5|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~2_combout\ = (\i5|contador\(1) & (!\i5|Add0~1\)) # (!\i5|contador\(1) & ((\i5|Add0~1\) # (GND)))
-- \i5|Add0~3\ = CARRY((!\i5|Add0~1\) # (!\i5|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador\(1),
	datad => VCC,
	cin => \i5|Add0~1\,
	combout => \i5|Add0~2_combout\,
	cout => \i5|Add0~3\);

-- Location: LCCOMB_X42_Y24_N8
\i5|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~8_combout\ = (\i5|contador\(4) & (\i5|Add0~7\ $ (GND))) # (!\i5|contador\(4) & (!\i5|Add0~7\ & VCC))
-- \i5|Add0~9\ = CARRY((\i5|contador\(4) & !\i5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador\(4),
	datad => VCC,
	cin => \i5|Add0~7\,
	combout => \i5|Add0~8_combout\,
	cout => \i5|Add0~9\);

-- Location: LCCOMB_X42_Y24_N10
\i5|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~10_combout\ = (\i5|contador\(5) & (!\i5|Add0~9\)) # (!\i5|contador\(5) & ((\i5|Add0~9\) # (GND)))
-- \i5|Add0~11\ = CARRY((!\i5|Add0~9\) # (!\i5|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador\(5),
	datad => VCC,
	cin => \i5|Add0~9\,
	combout => \i5|Add0~10_combout\,
	cout => \i5|Add0~11\);

-- Location: LCCOMB_X42_Y24_N14
\i5|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~14_combout\ = (\i5|contador\(7) & (!\i5|Add0~13\)) # (!\i5|contador\(7) & ((\i5|Add0~13\) # (GND)))
-- \i5|Add0~15\ = CARRY((!\i5|Add0~13\) # (!\i5|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador\(7),
	datad => VCC,
	cin => \i5|Add0~13\,
	combout => \i5|Add0~14_combout\,
	cout => \i5|Add0~15\);

-- Location: LCCOMB_X42_Y24_N20
\i5|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~20_combout\ = (\i5|contador\(10) & (\i5|Add0~19\ $ (GND))) # (!\i5|contador\(10) & (!\i5|Add0~19\ & VCC))
-- \i5|Add0~21\ = CARRY((\i5|contador\(10) & !\i5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador\(10),
	datad => VCC,
	cin => \i5|Add0~19\,
	combout => \i5|Add0~20_combout\,
	cout => \i5|Add0~21\);

-- Location: LCCOMB_X40_Y24_N16
\i4|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~6_combout\ = (\i4|contador\(3) & (!\i4|Add0~5\)) # (!\i4|contador\(3) & ((\i4|Add0~5\) # (GND)))
-- \i4|Add0~7\ = CARRY((!\i4|Add0~5\) # (!\i4|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador\(3),
	datad => VCC,
	cin => \i4|Add0~5\,
	combout => \i4|Add0~6_combout\,
	cout => \i4|Add0~7\);

-- Location: LCCOMB_X40_Y24_N22
\i4|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~12_combout\ = (\i4|contador\(6) & (\i4|Add0~11\ $ (GND))) # (!\i4|contador\(6) & (!\i4|Add0~11\ & VCC))
-- \i4|Add0~13\ = CARRY((\i4|contador\(6) & !\i4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(6),
	datad => VCC,
	cin => \i4|Add0~11\,
	combout => \i4|Add0~12_combout\,
	cout => \i4|Add0~13\);

-- Location: LCCOMB_X40_Y24_N24
\i4|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~14_combout\ = (\i4|contador\(7) & (!\i4|Add0~13\)) # (!\i4|contador\(7) & ((\i4|Add0~13\) # (GND)))
-- \i4|Add0~15\ = CARRY((!\i4|Add0~13\) # (!\i4|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(7),
	datad => VCC,
	cin => \i4|Add0~13\,
	combout => \i4|Add0~14_combout\,
	cout => \i4|Add0~15\);

-- Location: LCCOMB_X40_Y24_N26
\i4|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~16_combout\ = (\i4|contador\(8) & (\i4|Add0~15\ $ (GND))) # (!\i4|contador\(8) & (!\i4|Add0~15\ & VCC))
-- \i4|Add0~17\ = CARRY((\i4|contador\(8) & !\i4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador\(8),
	datad => VCC,
	cin => \i4|Add0~15\,
	combout => \i4|Add0~16_combout\,
	cout => \i4|Add0~17\);

-- Location: LCFF_X45_Y24_N11
\i1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(0));

-- Location: LCFF_X43_Y24_N7
\i5|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[10]~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(10));

-- Location: LCFF_X43_Y24_N27
\i5|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[7]~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(7));

-- Location: LCFF_X44_Y24_N13
\i2|stop[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|stop[2]~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|stop\(2));

-- Location: LCCOMB_X45_Y24_N12
\i1|contador[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[1]~0_combout\ = (!\i1|contador\(0)) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~combout\,
	datad => \i1|contador\(0),
	combout => \i1|contador[1]~0_combout\);

-- Location: LCCOMB_X45_Y24_N10
\i1|contador[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[0]~2_combout\ = \i1|contador\(0) $ (((\reset_n~combout\ & (!\i1|Equal0~0_combout\ & \i5|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \i1|Equal0~0_combout\,
	datac => \i1|contador\(0),
	datad => \i5|co~combout\,
	combout => \i1|contador[0]~2_combout\);

-- Location: LCCOMB_X45_Y24_N6
\i1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~1_combout\ = (\i1|contador\(0) & \i1|contador\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(0),
	datad => \i1|contador\(1),
	combout => \i1|Equal0~1_combout\);

-- Location: LCFF_X39_Y24_N11
\i4|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[7]~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(7));

-- Location: LCFF_X40_Y24_N7
\i4|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[6]~6_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(6));

-- Location: LCFF_X39_Y24_N9
\i3|estado_act.Inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i3|estado_act.Inicio~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i3|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|estado_act.Inicio~regout\);

-- Location: LCFF_X39_Y24_N21
\i3|estado_act.Final\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i3|Selector3~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i3|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|estado_act.Final~regout\);

-- Location: LCCOMB_X38_Y24_N28
\i3|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Selector3~0_combout\ = (\datos~combout\) # ((\i3|estado_act.Inicio~regout\ & !\i3|estado_act.Final~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datos~combout\,
	datac => \i3|estado_act.Inicio~regout\,
	datad => \i3|estado_act.Final~regout\,
	combout => \i3|Selector3~0_combout\);

-- Location: LCCOMB_X43_Y24_N6
\i5|contador[10]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[10]~3_combout\ = (\i3|estado_act.Registro~regout\ & (!\i5|contador[11]~0_combout\ & ((\i5|Add0~20_combout\)))) # (!\i3|estado_act.Registro~regout\ & ((\i5|contador\(10)) # ((!\i5|contador[11]~0_combout\ & \i5|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|contador[11]~0_combout\,
	datac => \i5|contador\(10),
	datad => \i5|Add0~20_combout\,
	combout => \i5|contador[10]~3_combout\);

-- Location: LCCOMB_X43_Y24_N26
\i5|contador[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[7]~6_combout\ = (\i3|estado_act.Registro~regout\ & (!\i5|contador[11]~0_combout\ & ((\i5|Add0~14_combout\)))) # (!\i3|estado_act.Registro~regout\ & ((\i5|contador\(7)) # ((!\i5|contador[11]~0_combout\ & \i5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|contador[11]~0_combout\,
	datac => \i5|contador\(7),
	datad => \i5|Add0~14_combout\,
	combout => \i5|contador[7]~6_combout\);

-- Location: LCFF_X42_Y24_N27
\i2|stop[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|stop[0]~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|stop\(0));

-- Location: LCCOMB_X44_Y24_N22
\i2|stop[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|stop[3]~0_combout\ = ((!\i2|stop\(2)) # (!\i2|stop\(0))) # (!\i2|stop\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|stop\(1),
	datac => \i2|stop\(0),
	datad => \i2|stop\(2),
	combout => \i2|stop[3]~0_combout\);

-- Location: LCCOMB_X44_Y24_N28
\i2|stop[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|stop[2]~2_combout\ = (!\i2|stop\(1)) # (!\i2|stop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|stop\(0),
	datad => \i2|stop\(1),
	combout => \i2|stop[2]~2_combout\);

-- Location: LCCOMB_X44_Y24_N12
\i2|stop[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|stop[2]~3_combout\ = \i2|stop\(2) $ (((!\i2|stop[2]~2_combout\ & (\i2|process_0~0_combout\ & \i5|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|stop[2]~2_combout\,
	datab => \i2|process_0~0_combout\,
	datac => \i2|stop\(2),
	datad => \i5|co~combout\,
	combout => \i2|stop[2]~3_combout\);

-- Location: LCCOMB_X39_Y24_N10
\i4|contador[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[7]~4_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~14_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(7)) # ((\i4|Add0~14_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~14_combout\,
	datac => \i4|contador\(7),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[7]~4_combout\);

-- Location: LCCOMB_X40_Y24_N6
\i4|contador[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[6]~6_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~12_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(6)) # ((\i4|Add0~12_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~12_combout\,
	datac => \i4|contador\(6),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[6]~6_combout\);

-- Location: LCCOMB_X39_Y24_N18
\i3|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Selector3~2_combout\ = \i3|Selector3~0_combout\ $ (\i3|process_1~1_combout\ $ (((!\i1|Equal0~0_combout\) # (!\i3|estado_act.Registro~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i3|Selector3~0_combout\,
	datac => \i1|Equal0~0_combout\,
	datad => \i3|process_1~1_combout\,
	combout => \i3|Selector3~2_combout\);

-- Location: LCCOMB_X42_Y24_N26
\i2|stop[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|stop[0]~5_combout\ = \i2|stop\(0) $ (((\i2|process_0~0_combout\ & \i5|co~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|process_0~0_combout\,
	datac => \i2|stop\(0),
	datad => \i5|co~combout\,
	combout => \i2|stop[0]~5_combout\);

-- Location: LCCOMB_X39_Y24_N8
\i3|estado_act.Inicio~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|estado_act.Inicio~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \i3|estado_act.Inicio~feeder_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X45_Y24_N22
\i1|contador[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[2]~5_combout\ = (\i1|Equal0~0_combout\) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datac => \i1|Equal0~0_combout\,
	combout => \i1|contador[2]~5_combout\);

-- Location: LCCOMB_X45_Y24_N14
\i1|contador[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[2]~6_combout\ = \i1|contador\(2) $ (((\i1|Equal0~1_combout\ & (!\i1|contador[2]~5_combout\ & \i5|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~1_combout\,
	datab => \i1|contador[2]~5_combout\,
	datac => \i1|contador\(2),
	datad => \i5|co~combout\,
	combout => \i1|contador[2]~6_combout\);

-- Location: LCFF_X45_Y24_N15
\i1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(2));

-- Location: LCCOMB_X45_Y24_N4
\i1|contador[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[3]~3_combout\ = ((\i1|Equal0~0_combout\) # (!\i1|contador\(2))) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \i1|contador\(2),
	datac => \i1|Equal0~0_combout\,
	combout => \i1|contador[3]~3_combout\);

-- Location: LCCOMB_X45_Y24_N20
\i1|contador[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[3]~4_combout\ = \i1|contador\(3) $ (((\i1|Equal0~1_combout\ & (!\i1|contador[3]~3_combout\ & \i5|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~1_combout\,
	datab => \i1|contador[3]~3_combout\,
	datac => \i1|contador\(3),
	datad => \i5|co~combout\,
	combout => \i1|contador[3]~4_combout\);

-- Location: LCFF_X45_Y24_N21
\i1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(3));

-- Location: LCCOMB_X45_Y24_N28
\i1|contador[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[1]~1_combout\ = \i1|contador\(1) $ (((!\i1|contador[1]~0_combout\ & (!\i1|Equal0~0_combout\ & \i5|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador[1]~0_combout\,
	datab => \i1|Equal0~0_combout\,
	datac => \i1|contador\(1),
	datad => \i5|co~combout\,
	combout => \i1|contador[1]~1_combout\);

-- Location: LCFF_X45_Y24_N29
\i1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(1));

-- Location: LCCOMB_X45_Y24_N8
\i1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~0_combout\ = (\i1|contador\(0) & (!\i1|contador\(2) & (\i1|contador\(3) & \i1|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(0),
	datab => \i1|contador\(2),
	datac => \i1|contador\(3),
	datad => \i1|contador\(1),
	combout => \i1|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y24_N0
\i3|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Selector3~1_combout\ = (\i3|estado_act.Registro~regout\ & \i1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|estado_act.Registro~regout\,
	datad => \i1|Equal0~0_combout\,
	combout => \i3|Selector3~1_combout\);

-- Location: LCCOMB_X39_Y24_N14
\i3|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Selector1~0_combout\ = (\i3|Selector3~0_combout\ & (\i3|estado_act.Start~regout\ & (\i3|Selector3~1_combout\ $ (!\i3|process_1~1_combout\)))) # (!\i3|Selector3~0_combout\ & ((\i3|Selector3~1_combout\ & (\i3|estado_act.Start~regout\ & 
-- !\i3|process_1~1_combout\)) # (!\i3|Selector3~1_combout\ & ((\i3|estado_act.Start~regout\) # (!\i3|process_1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Selector3~0_combout\,
	datab => \i3|Selector3~1_combout\,
	datac => \i3|estado_act.Start~regout\,
	datad => \i3|process_1~1_combout\,
	combout => \i3|Selector1~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~clkctrl_outclk\);

-- Location: LCFF_X39_Y24_N15
\i3|estado_act.Start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i3|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|estado_act.Start~regout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos~I\ : cycloneii_io
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
	padio => ww_datos,
	combout => \datos~combout\);

-- Location: LCCOMB_X39_Y24_N0
\i3|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|process_1~0_combout\ = (\i3|estado_act.Start~regout\ & !\datos~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3|estado_act.Start~regout\,
	datad => \datos~combout\,
	combout => \i3|process_1~0_combout\);

-- Location: LCCOMB_X39_Y24_N26
\i4|contador[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[3]~8_combout\ = (\i4|Add0~6_combout\ & (((!\i3|estado_act.Start~regout\ & \i4|contador\(3))) # (!\i4|contador[10]~0_combout\))) # (!\i4|Add0~6_combout\ & (!\i3|estado_act.Start~regout\ & (\i4|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|Add0~6_combout\,
	datab => \i3|estado_act.Start~regout\,
	datac => \i4|contador\(3),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[3]~8_combout\);

-- Location: LCFF_X39_Y24_N27
\i4|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[3]~8_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(3));

-- Location: LCCOMB_X40_Y24_N10
\i4|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~0_combout\ = \i4|contador\(0) $ (VCC)
-- \i4|Add0~1\ = CARRY(\i4|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador\(0),
	datad => VCC,
	combout => \i4|Add0~0_combout\,
	cout => \i4|Add0~1\);

-- Location: LCCOMB_X39_Y24_N22
\i4|contador[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[0]~11_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~0_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(0)) # ((\i4|Add0~0_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~0_combout\,
	datac => \i4|contador\(0),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[0]~11_combout\);

-- Location: LCFF_X39_Y24_N23
\i4|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[0]~11_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(0));

-- Location: LCCOMB_X40_Y24_N12
\i4|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~2_combout\ = (\i4|contador\(1) & (!\i4|Add0~1\)) # (!\i4|contador\(1) & ((\i4|Add0~1\) # (GND)))
-- \i4|Add0~3\ = CARRY((!\i4|Add0~1\) # (!\i4|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador\(1),
	datad => VCC,
	cin => \i4|Add0~1\,
	combout => \i4|Add0~2_combout\,
	cout => \i4|Add0~3\);

-- Location: LCCOMB_X39_Y24_N16
\i4|contador[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[1]~10_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~2_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(1)) # ((\i4|Add0~2_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~2_combout\,
	datac => \i4|contador\(1),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[1]~10_combout\);

-- Location: LCFF_X39_Y24_N17
\i4|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[1]~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(1));

-- Location: LCCOMB_X40_Y24_N14
\i4|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~4_combout\ = (\i4|contador\(2) & (\i4|Add0~3\ $ (GND))) # (!\i4|contador\(2) & (!\i4|Add0~3\ & VCC))
-- \i4|Add0~5\ = CARRY((\i4|contador\(2) & !\i4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador\(2),
	datad => VCC,
	cin => \i4|Add0~3\,
	combout => \i4|Add0~4_combout\,
	cout => \i4|Add0~5\);

-- Location: LCCOMB_X39_Y24_N6
\i4|contador[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[2]~9_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~4_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(2)) # ((\i4|Add0~4_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~4_combout\,
	datac => \i4|contador\(2),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[2]~9_combout\);

-- Location: LCFF_X39_Y24_N7
\i4|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[2]~9_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(2));

-- Location: LCCOMB_X40_Y24_N18
\i4|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~8_combout\ = (\i4|contador\(4) & (\i4|Add0~7\ $ (GND))) # (!\i4|contador\(4) & (!\i4|Add0~7\ & VCC))
-- \i4|Add0~9\ = CARRY((\i4|contador\(4) & !\i4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(4),
	datad => VCC,
	cin => \i4|Add0~7\,
	combout => \i4|Add0~8_combout\,
	cout => \i4|Add0~9\);

-- Location: LCCOMB_X39_Y24_N30
\i4|contador[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[4]~5_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~8_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(4)) # ((\i4|Add0~8_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~8_combout\,
	datac => \i4|contador\(4),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[4]~5_combout\);

-- Location: LCFF_X39_Y24_N31
\i4|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[4]~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(4));

-- Location: LCCOMB_X40_Y24_N20
\i4|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~10_combout\ = (\i4|contador\(5) & (!\i4|Add0~9\)) # (!\i4|contador\(5) & ((\i4|Add0~9\) # (GND)))
-- \i4|Add0~11\ = CARRY((!\i4|Add0~9\) # (!\i4|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador\(5),
	datad => VCC,
	cin => \i4|Add0~9\,
	combout => \i4|Add0~10_combout\,
	cout => \i4|Add0~11\);

-- Location: LCCOMB_X39_Y24_N24
\i4|contador[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[5]~7_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~10_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(5)) # ((\i4|Add0~10_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~10_combout\,
	datac => \i4|contador\(5),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[5]~7_combout\);

-- Location: LCFF_X39_Y24_N25
\i4|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[5]~7_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(5));

-- Location: LCCOMB_X39_Y24_N12
\i4|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|co~1_combout\ = (!\i4|contador\(6) & (\i4|contador\(4) & (!\i4|contador\(5) & !\i4|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(6),
	datab => \i4|contador\(4),
	datac => \i4|contador\(5),
	datad => \i4|contador\(3),
	combout => \i4|co~1_combout\);

-- Location: LCCOMB_X39_Y24_N20
\i4|co~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|co~2_combout\ = (\i4|contador\(1) & (!\i4|contador\(0) & \i4|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(1),
	datab => \i4|contador\(0),
	datad => \i4|contador\(2),
	combout => \i4|co~2_combout\);

-- Location: LCCOMB_X38_Y24_N22
\i4|contador[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[10]~0_combout\ = ((\i4|co~0_combout\ & (\i4|co~1_combout\ & \i4|co~2_combout\))) # (!\i3|estado_act.Start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|co~0_combout\,
	datab => \i3|estado_act.Start~regout\,
	datac => \i4|co~1_combout\,
	datad => \i4|co~2_combout\,
	combout => \i4|contador[10]~0_combout\);

-- Location: LCCOMB_X39_Y24_N28
\i4|contador[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[8]~2_combout\ = (\i4|Add0~16_combout\ & (((!\i3|estado_act.Start~regout\ & \i4|contador\(8))) # (!\i4|contador[10]~0_combout\))) # (!\i4|Add0~16_combout\ & (!\i3|estado_act.Start~regout\ & (\i4|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|Add0~16_combout\,
	datab => \i3|estado_act.Start~regout\,
	datac => \i4|contador\(8),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[8]~2_combout\);

-- Location: LCFF_X39_Y24_N29
\i4|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[8]~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(8));

-- Location: LCCOMB_X40_Y24_N28
\i4|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~18_combout\ = (\i4|contador\(9) & (!\i4|Add0~17\)) # (!\i4|contador\(9) & ((\i4|Add0~17\) # (GND)))
-- \i4|Add0~19\ = CARRY((!\i4|Add0~17\) # (!\i4|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador\(9),
	datad => VCC,
	cin => \i4|Add0~17\,
	combout => \i4|Add0~18_combout\,
	cout => \i4|Add0~19\);

-- Location: LCCOMB_X40_Y24_N8
\i4|contador[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[9]~3_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~18_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(9)) # ((\i4|Add0~18_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~18_combout\,
	datac => \i4|contador\(9),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[9]~3_combout\);

-- Location: LCFF_X40_Y24_N9
\i4|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[9]~3_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(9));

-- Location: LCCOMB_X40_Y24_N30
\i4|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Add0~20_combout\ = \i4|Add0~19\ $ (!\i4|contador\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i4|contador\(10),
	cin => \i4|Add0~19\,
	combout => \i4|Add0~20_combout\);

-- Location: LCCOMB_X40_Y24_N2
\i4|contador[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[10]~1_combout\ = (\i3|estado_act.Start~regout\ & (\i4|Add0~20_combout\ & ((!\i4|contador[10]~0_combout\)))) # (!\i3|estado_act.Start~regout\ & ((\i4|contador\(10)) # ((\i4|Add0~20_combout\ & !\i4|contador[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Start~regout\,
	datab => \i4|Add0~20_combout\,
	datac => \i4|contador\(10),
	datad => \i4|contador[10]~0_combout\,
	combout => \i4|contador[10]~1_combout\);

-- Location: LCFF_X40_Y24_N3
\i4|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[10]~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(10));

-- Location: LCCOMB_X39_Y24_N4
\i4|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|co~0_combout\ = (!\i4|contador\(7) & (\i4|contador\(8) & (!\i4|contador\(9) & \i4|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(7),
	datab => \i4|contador\(8),
	datac => \i4|contador\(9),
	datad => \i4|contador\(10),
	combout => \i4|co~0_combout\);

-- Location: LCCOMB_X39_Y24_N2
\i3|process_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|process_1~1_combout\ = (\i4|co~2_combout\ & (\i3|process_1~0_combout\ & (\i4|co~0_combout\ & \i4|co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|co~2_combout\,
	datab => \i3|process_1~0_combout\,
	datac => \i4|co~0_combout\,
	datad => \i4|co~1_combout\,
	combout => \i3|process_1~1_combout\);

-- Location: LCCOMB_X40_Y24_N4
\i3|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Selector2~2_combout\ = (\i3|Selector3~0_combout\ & ((\i3|process_1~1_combout\) # ((!\i1|Equal0~0_combout\ & \i3|estado_act.Registro~regout\)))) # (!\i3|Selector3~0_combout\ & (\i3|estado_act.Registro~regout\ & (\i1|Equal0~0_combout\ $ 
-- (\i3|process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Selector3~0_combout\,
	datab => \i1|Equal0~0_combout\,
	datac => \i3|estado_act.Registro~regout\,
	datad => \i3|process_1~1_combout\,
	combout => \i3|Selector2~2_combout\);

-- Location: LCFF_X40_Y24_N5
\i3|estado_act.Registro\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i3|Selector2~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|estado_act.Registro~regout\);

-- Location: LCCOMB_X43_Y24_N10
\i5|contador[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[1]~11_combout\ = (\i5|Add0~2_combout\ & (((!\i3|estado_act.Registro~regout\ & \i5|contador\(1))) # (!\i5|contador[11]~0_combout\))) # (!\i5|Add0~2_combout\ & (!\i3|estado_act.Registro~regout\ & (\i5|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|Add0~2_combout\,
	datab => \i3|estado_act.Registro~regout\,
	datac => \i5|contador\(1),
	datad => \i5|contador[11]~0_combout\,
	combout => \i5|contador[1]~11_combout\);

-- Location: LCFF_X43_Y24_N11
\i5|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[1]~11_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(1));

-- Location: LCCOMB_X43_Y24_N24
\i5|contador[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[0]~12_combout\ = (\i5|Add0~0_combout\ & (((!\i3|estado_act.Registro~regout\ & \i5|contador\(0))) # (!\i5|contador[11]~0_combout\))) # (!\i5|Add0~0_combout\ & (!\i3|estado_act.Registro~regout\ & (\i5|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|Add0~0_combout\,
	datab => \i3|estado_act.Registro~regout\,
	datac => \i5|contador\(0),
	datad => \i5|contador[11]~0_combout\,
	combout => \i5|contador[0]~12_combout\);

-- Location: LCFF_X43_Y24_N25
\i5|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[0]~12_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(0));

-- Location: LCCOMB_X42_Y24_N4
\i5|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~4_combout\ = (\i5|contador\(2) & (\i5|Add0~3\ $ (GND))) # (!\i5|contador\(2) & (!\i5|Add0~3\ & VCC))
-- \i5|Add0~5\ = CARRY((\i5|contador\(2) & !\i5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador\(2),
	datad => VCC,
	cin => \i5|Add0~3\,
	combout => \i5|Add0~4_combout\,
	cout => \i5|Add0~5\);

-- Location: LCCOMB_X42_Y24_N6
\i5|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~6_combout\ = (\i5|contador\(3) & (!\i5|Add0~5\)) # (!\i5|contador\(3) & ((\i5|Add0~5\) # (GND)))
-- \i5|Add0~7\ = CARRY((!\i5|Add0~5\) # (!\i5|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador\(3),
	datad => VCC,
	cin => \i5|Add0~5\,
	combout => \i5|Add0~6_combout\,
	cout => \i5|Add0~7\);

-- Location: LCCOMB_X43_Y24_N30
\i5|contador[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[3]~9_combout\ = (\i3|estado_act.Registro~regout\ & (\i5|Add0~6_combout\ & ((!\i5|contador[11]~0_combout\)))) # (!\i3|estado_act.Registro~regout\ & ((\i5|contador\(3)) # ((\i5|Add0~6_combout\ & !\i5|contador[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|Add0~6_combout\,
	datac => \i5|contador\(3),
	datad => \i5|contador[11]~0_combout\,
	combout => \i5|contador[3]~9_combout\);

-- Location: LCFF_X43_Y24_N31
\i5|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[3]~9_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(3));

-- Location: LCCOMB_X43_Y24_N16
\i5|contador[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[2]~10_combout\ = (\i3|estado_act.Registro~regout\ & (\i5|Add0~4_combout\ & ((!\i5|contador[11]~0_combout\)))) # (!\i3|estado_act.Registro~regout\ & ((\i5|contador\(2)) # ((\i5|Add0~4_combout\ & !\i5|contador[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|Add0~4_combout\,
	datac => \i5|contador\(2),
	datad => \i5|contador[11]~0_combout\,
	combout => \i5|contador[2]~10_combout\);

-- Location: LCFF_X43_Y24_N17
\i5|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[2]~10_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(2));

-- Location: LCCOMB_X43_Y24_N14
\i5|co~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|co~2_combout\ = (!\i5|contador\(0) & (\i5|contador\(3) & (\i5|contador\(2) & !\i5|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador\(0),
	datab => \i5|contador\(3),
	datac => \i5|contador\(2),
	datad => \i5|contador\(1),
	combout => \i5|co~2_combout\);

-- Location: LCCOMB_X43_Y24_N12
\i5|contador[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[5]~5_combout\ = (\i5|Add0~10_combout\ & (((!\i3|estado_act.Registro~regout\ & \i5|contador\(5))) # (!\i5|contador[11]~0_combout\))) # (!\i5|Add0~10_combout\ & (!\i3|estado_act.Registro~regout\ & (\i5|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|Add0~10_combout\,
	datab => \i3|estado_act.Registro~regout\,
	datac => \i5|contador\(5),
	datad => \i5|contador[11]~0_combout\,
	combout => \i5|contador[5]~5_combout\);

-- Location: LCFF_X43_Y24_N13
\i5|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[5]~5_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(5));

-- Location: LCCOMB_X43_Y24_N22
\i5|contador[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[4]~8_combout\ = (\i5|Add0~8_combout\ & (((!\i3|estado_act.Registro~regout\ & \i5|contador\(4))) # (!\i5|contador[11]~0_combout\))) # (!\i5|Add0~8_combout\ & (!\i3|estado_act.Registro~regout\ & (\i5|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|Add0~8_combout\,
	datab => \i3|estado_act.Registro~regout\,
	datac => \i5|contador\(4),
	datad => \i5|contador[11]~0_combout\,
	combout => \i5|contador[4]~8_combout\);

-- Location: LCFF_X43_Y24_N23
\i5|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[4]~8_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(4));

-- Location: LCCOMB_X42_Y24_N12
\i5|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~12_combout\ = (\i5|contador\(6) & (\i5|Add0~11\ $ (GND))) # (!\i5|contador\(6) & (!\i5|Add0~11\ & VCC))
-- \i5|Add0~13\ = CARRY((\i5|contador\(6) & !\i5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador\(6),
	datad => VCC,
	cin => \i5|Add0~11\,
	combout => \i5|Add0~12_combout\,
	cout => \i5|Add0~13\);

-- Location: LCCOMB_X43_Y24_N4
\i5|contador[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[6]~7_combout\ = (\i3|estado_act.Registro~regout\ & (!\i5|contador[11]~0_combout\ & ((\i5|Add0~12_combout\)))) # (!\i3|estado_act.Registro~regout\ & ((\i5|contador\(6)) # ((!\i5|contador[11]~0_combout\ & \i5|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|contador[11]~0_combout\,
	datac => \i5|contador\(6),
	datad => \i5|Add0~12_combout\,
	combout => \i5|contador[6]~7_combout\);

-- Location: LCFF_X43_Y24_N5
\i5|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[6]~7_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(6));

-- Location: LCCOMB_X43_Y24_N0
\i5|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|co~1_combout\ = (!\i5|contador\(7) & (!\i5|contador\(6) & (!\i5|contador\(4) & \i5|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador\(7),
	datab => \i5|contador\(6),
	datac => \i5|contador\(4),
	datad => \i5|contador\(5),
	combout => \i5|co~1_combout\);

-- Location: LCCOMB_X43_Y24_N2
\i5|contador[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[11]~0_combout\ = ((\i5|co~0_combout\ & (\i5|co~2_combout\ & \i5|co~1_combout\))) # (!\i3|estado_act.Registro~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|co~0_combout\,
	datac => \i5|co~2_combout\,
	datad => \i5|co~1_combout\,
	combout => \i5|contador[11]~0_combout\);

-- Location: LCCOMB_X42_Y24_N16
\i5|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~16_combout\ = (\i5|contador\(8) & (\i5|Add0~15\ $ (GND))) # (!\i5|contador\(8) & (!\i5|Add0~15\ & VCC))
-- \i5|Add0~17\ = CARRY((\i5|contador\(8) & !\i5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador\(8),
	datad => VCC,
	cin => \i5|Add0~15\,
	combout => \i5|Add0~16_combout\,
	cout => \i5|Add0~17\);

-- Location: LCCOMB_X43_Y24_N8
\i5|contador[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[8]~4_combout\ = (\i3|estado_act.Registro~regout\ & (!\i5|contador[11]~0_combout\ & ((\i5|Add0~16_combout\)))) # (!\i3|estado_act.Registro~regout\ & ((\i5|contador\(8)) # ((!\i5|contador[11]~0_combout\ & \i5|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|contador[11]~0_combout\,
	datac => \i5|contador\(8),
	datad => \i5|Add0~16_combout\,
	combout => \i5|contador[8]~4_combout\);

-- Location: LCFF_X43_Y24_N9
\i5|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[8]~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(8));

-- Location: LCCOMB_X42_Y24_N18
\i5|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~18_combout\ = (\i5|contador\(9) & (!\i5|Add0~17\)) # (!\i5|contador\(9) & ((\i5|Add0~17\) # (GND)))
-- \i5|Add0~19\ = CARRY((!\i5|Add0~17\) # (!\i5|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador\(9),
	datad => VCC,
	cin => \i5|Add0~17\,
	combout => \i5|Add0~18_combout\,
	cout => \i5|Add0~19\);

-- Location: LCCOMB_X43_Y24_N20
\i5|contador[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[9]~2_combout\ = (\i3|estado_act.Registro~regout\ & (!\i5|contador[11]~0_combout\ & ((\i5|Add0~18_combout\)))) # (!\i3|estado_act.Registro~regout\ & ((\i5|contador\(9)) # ((!\i5|contador[11]~0_combout\ & \i5|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|contador[11]~0_combout\,
	datac => \i5|contador\(9),
	datad => \i5|Add0~18_combout\,
	combout => \i5|contador[9]~2_combout\);

-- Location: LCFF_X43_Y24_N21
\i5|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[9]~2_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(9));

-- Location: LCCOMB_X42_Y24_N22
\i5|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Add0~22_combout\ = \i5|Add0~21\ $ (\i5|contador\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i5|contador\(11),
	cin => \i5|Add0~21\,
	combout => \i5|Add0~22_combout\);

-- Location: LCCOMB_X42_Y24_N28
\i5|contador[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador[11]~1_combout\ = (\i5|contador[11]~0_combout\ & (!\i3|estado_act.Registro~regout\ & (\i5|contador\(11)))) # (!\i5|contador[11]~0_combout\ & ((\i5|Add0~22_combout\) # ((!\i3|estado_act.Registro~regout\ & \i5|contador\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador[11]~0_combout\,
	datab => \i3|estado_act.Registro~regout\,
	datac => \i5|contador\(11),
	datad => \i5|Add0~22_combout\,
	combout => \i5|contador[11]~1_combout\);

-- Location: LCFF_X42_Y24_N29
\i5|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador[11]~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador\(11));

-- Location: LCCOMB_X43_Y24_N18
\i5|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|co~0_combout\ = (!\i5|contador\(10) & (!\i5|contador\(8) & (\i5|contador\(9) & \i5|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador\(10),
	datab => \i5|contador\(8),
	datac => \i5|contador\(9),
	datad => \i5|contador\(11),
	combout => \i5|co~0_combout\);

-- Location: LCCOMB_X43_Y24_N28
\i5|co\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|co~combout\ = (\i3|estado_act.Registro~regout\ & (\i5|co~0_combout\ & (\i5|co~2_combout\ & \i5|co~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|estado_act.Registro~regout\,
	datab => \i5|co~0_combout\,
	datac => \i5|co~2_combout\,
	datad => \i5|co~1_combout\,
	combout => \i5|co~combout\);

-- Location: LCCOMB_X44_Y24_N18
\i2|stop[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|stop[3]~1_combout\ = \i2|stop\(3) $ (((!\i2|stop[3]~0_combout\ & (\i2|process_0~0_combout\ & \i5|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|stop[3]~0_combout\,
	datab => \i2|process_0~0_combout\,
	datac => \i2|stop\(3),
	datad => \i5|co~combout\,
	combout => \i2|stop[3]~1_combout\);

-- Location: LCFF_X44_Y24_N19
\i2|stop[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|stop[3]~1_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|stop\(3));

-- Location: LCCOMB_X44_Y24_N0
\i2|stop[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|stop[1]~4_combout\ = \i2|stop\(1) $ (((\i2|stop\(0) & (\i2|process_0~0_combout\ & \i5|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|stop\(0),
	datab => \i2|process_0~0_combout\,
	datac => \i2|stop\(1),
	datad => \i5|co~combout\,
	combout => \i2|stop[1]~4_combout\);

-- Location: LCFF_X44_Y24_N1
\i2|stop[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|stop[1]~4_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|stop\(1));

-- Location: LCCOMB_X44_Y24_N26
\i2|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|process_0~0_combout\ = (\i2|stop\(3) & ((\i2|stop\(2)) # (\i2|stop\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|stop\(2),
	datab => \i2|stop\(3),
	datad => \i2|stop\(1),
	combout => \i2|process_0~0_combout\);

-- Location: LCCOMB_X44_Y24_N10
\i2|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador~0_combout\ = \i2|contador~regout\ $ (((\datos~combout\ & (\i2|process_0~0_combout\ & \i5|co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos~combout\,
	datab => \i2|process_0~0_combout\,
	datac => \i2|contador~regout\,
	datad => \i5|co~combout\,
	combout => \i2|contador~0_combout\);

-- Location: LCFF_X44_Y24_N11
\i2|contador\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador~0_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador~regout\);

-- Location: LCCOMB_X44_Y24_N24
\i1|registro[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro[0]~feeder_combout\ = \datos~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datos~combout\,
	combout => \i1|registro[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y24_N6
\i1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|process_0~0_combout\ = (!\i1|Equal0~0_combout\ & \i5|co~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|Equal0~0_combout\,
	datad => \i5|co~combout\,
	combout => \i1|process_0~0_combout\);

-- Location: LCFF_X44_Y24_N25
\i1|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(0));

-- Location: LCFF_X44_Y24_N27
\i1|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|registro\(0),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(1));

-- Location: LCCOMB_X44_Y24_N20
\i1|registro[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro[2]~feeder_combout\ = \i1|registro\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i1|registro\(1),
	combout => \i1|registro[2]~feeder_combout\);

-- Location: LCFF_X44_Y24_N21
\i1|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro[2]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(2));

-- Location: LCFF_X44_Y24_N29
\i1|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|registro\(2),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(3));

-- Location: LCCOMB_X44_Y24_N16
\i1|registro[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro[4]~feeder_combout\ = \i1|registro\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i1|registro\(3),
	combout => \i1|registro[4]~feeder_combout\);

-- Location: LCFF_X44_Y24_N17
\i1|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro[4]~feeder_combout\,
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(4));

-- Location: LCFF_X44_Y24_N5
\i1|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|registro\(4),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(5));

-- Location: LCFF_X44_Y24_N9
\i1|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|registro\(5),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(6));

-- Location: LCFF_X44_Y24_N3
\i1|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|registro\(6),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(7));

-- Location: LCFF_X44_Y24_N31
\i1|registro[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|registro\(7),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(8));

-- Location: LCFF_X44_Y24_N15
\i1|registro[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|registro\(8),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(9));

-- Location: LCFF_X44_Y24_N7
\i1|registro[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|registro\(9),
	aclr => \ALT_INV_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \i1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(10));

-- Location: LCCOMB_X45_Y24_N30
\i3|error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|error~0_combout\ = (\i1|Equal0~0_combout\ & ((\i1|registro\(10)) # (!\i1|registro\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|registro\(10),
	datac => \i1|Equal0~0_combout\,
	datad => \i1|registro\(0),
	combout => \i3|error~0_combout\);

-- Location: LCCOMB_X45_Y24_N24
\i1|s_p[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[0]~0_combout\ = (\i1|Equal0~0_combout\ & \i1|registro\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|Equal0~0_combout\,
	datad => \i1|registro\(0),
	combout => \i1|s_p[0]~0_combout\);

-- Location: LCCOMB_X45_Y24_N26
\i1|s_p[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[1]~1_combout\ = (\i1|Equal0~0_combout\ & \i1|registro\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|Equal0~0_combout\,
	datad => \i1|registro\(1),
	combout => \i1|s_p[1]~1_combout\);

-- Location: LCCOMB_X44_Y24_N8
\i1|s_p[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[2]~2_combout\ = (\i1|registro\(2) & \i1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|registro\(2),
	datad => \i1|Equal0~0_combout\,
	combout => \i1|s_p[2]~2_combout\);

-- Location: LCCOMB_X44_Y24_N14
\i1|s_p[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[3]~3_combout\ = (\i1|Equal0~0_combout\ & \i1|registro\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Equal0~0_combout\,
	datad => \i1|registro\(3),
	combout => \i1|s_p[3]~3_combout\);

-- Location: LCCOMB_X45_Y24_N0
\i1|s_p[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[4]~4_combout\ = (\i1|Equal0~0_combout\ & \i1|registro\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|Equal0~0_combout\,
	datad => \i1|registro\(4),
	combout => \i1|s_p[4]~4_combout\);

-- Location: LCCOMB_X44_Y24_N4
\i1|s_p[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[5]~5_combout\ = (\i1|registro\(5) & \i1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|registro\(5),
	datad => \i1|Equal0~0_combout\,
	combout => \i1|s_p[5]~5_combout\);

-- Location: LCCOMB_X45_Y24_N18
\i1|s_p[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[6]~6_combout\ = (\i1|Equal0~0_combout\ & \i1|registro\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|Equal0~0_combout\,
	datad => \i1|registro\(6),
	combout => \i1|s_p[6]~6_combout\);

-- Location: LCCOMB_X44_Y24_N2
\i1|s_p[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[7]~7_combout\ = (\i1|registro\(7) & \i1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|registro\(7),
	datad => \i1|Equal0~0_combout\,
	combout => \i1|s_p[7]~7_combout\);

-- Location: LCCOMB_X44_Y24_N30
\i1|s_p[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[8]~8_combout\ = (\i1|registro\(8) & \i1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|registro\(8),
	datad => \i1|Equal0~0_combout\,
	combout => \i1|s_p[8]~8_combout\);

-- Location: LCCOMB_X45_Y24_N16
\i1|s_p[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[9]~9_combout\ = (\i1|Equal0~0_combout\ & \i1|registro\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|Equal0~0_combout\,
	datad => \i1|registro\(9),
	combout => \i1|s_p[9]~9_combout\);

-- Location: LCCOMB_X45_Y24_N2
\i1|s_p[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|s_p[10]~10_combout\ = (\i1|registro\(10) & \i1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|registro\(10),
	datac => \i1|Equal0~0_combout\,
	combout => \i1|s_p[10]~10_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\paridad_out~I\ : cycloneii_io
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
	datain => \i2|contador~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_paridad_out);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\framing~I\ : cycloneii_io
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
	datain => \i3|error~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_framing);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[0]~I\ : cycloneii_io
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
	datain => \i1|s_p[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(0));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[1]~I\ : cycloneii_io
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
	datain => \i1|s_p[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(1));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[2]~I\ : cycloneii_io
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
	datain => \i1|s_p[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(2));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[3]~I\ : cycloneii_io
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
	datain => \i1|s_p[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(3));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[4]~I\ : cycloneii_io
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
	datain => \i1|s_p[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(4));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[5]~I\ : cycloneii_io
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
	datain => \i1|s_p[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(5));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[6]~I\ : cycloneii_io
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
	datain => \i1|s_p[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(6));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[7]~I\ : cycloneii_io
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
	datain => \i1|s_p[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(7));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[8]~I\ : cycloneii_io
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
	datain => \i1|s_p[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(8));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[9]~I\ : cycloneii_io
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
	datain => \i1|s_p[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(9));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[10]~I\ : cycloneii_io
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
	datain => \i1|s_p[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(10));
END structure;


