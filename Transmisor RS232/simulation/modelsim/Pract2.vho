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

-- DATE "02/05/2019 12:43:59"

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
	datos : IN std_logic_vector(7 DOWNTO 0);
	boton : IN std_logic;
	output : OUT std_logic
	);
END RS232;

-- Design Ports Information
-- output	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_datos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_boton : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|Add0~18_combout\ : std_logic;
SIGNAL \i1|bit_paridad~regout\ : std_logic;
SIGNAL \i1|bit_paridad~0_combout\ : std_logic;
SIGNAL \i1|bit_paridad~1_combout\ : std_logic;
SIGNAL \i1|bit_paridad~2_combout\ : std_logic;
SIGNAL \i5|estado_act.Stop~regout\ : std_logic;
SIGNAL \i5|Selector4~1_combout\ : std_logic;
SIGNAL \i2|contador[9]~2_combout\ : std_logic;
SIGNAL \i4|registro~4_combout\ : std_logic;
SIGNAL \i4|registro~5_combout\ : std_logic;
SIGNAL \i4|registro~6_combout\ : std_logic;
SIGNAL \i4|registro~7_combout\ : std_logic;
SIGNAL \i4|registro~8_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \boton~combout\ : std_logic;
SIGNAL \i6|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \i6|estado_act.Esp0~regout\ : std_logic;
SIGNAL \i6|Selector1~0_combout\ : std_logic;
SIGNAL \i6|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i5|estado_act.Inicio~0_combout\ : std_logic;
SIGNAL \i5|estado_act.Inicio~regout\ : std_logic;
SIGNAL \i2|Add0~13\ : std_logic;
SIGNAL \i2|Add0~14_combout\ : std_logic;
SIGNAL \i2|contador[7]~6_combout\ : std_logic;
SIGNAL \i5|rst~0_combout\ : std_logic;
SIGNAL \i2|Add0~15\ : std_logic;
SIGNAL \i2|Add0~17\ : std_logic;
SIGNAL \i2|Add0~19\ : std_logic;
SIGNAL \i2|Add0~20_combout\ : std_logic;
SIGNAL \i2|contador[10]~3_combout\ : std_logic;
SIGNAL \i2|Add0~21\ : std_logic;
SIGNAL \i2|Add0~22_combout\ : std_logic;
SIGNAL \i2|contador[11]~1_combout\ : std_logic;
SIGNAL \i2|Add0~16_combout\ : std_logic;
SIGNAL \i2|contador[8]~4_combout\ : std_logic;
SIGNAL \i2|co~0_combout\ : std_logic;
SIGNAL \i2|contador[11]~0_combout\ : std_logic;
SIGNAL \i2|Add0~0_combout\ : std_logic;
SIGNAL \i2|contador[0]~12_combout\ : std_logic;
SIGNAL \i2|Add0~1\ : std_logic;
SIGNAL \i2|Add0~2_combout\ : std_logic;
SIGNAL \i2|contador[1]~11_combout\ : std_logic;
SIGNAL \i2|Add0~3\ : std_logic;
SIGNAL \i2|Add0~4_combout\ : std_logic;
SIGNAL \i2|contador[2]~10_combout\ : std_logic;
SIGNAL \i2|Add0~5\ : std_logic;
SIGNAL \i2|Add0~7\ : std_logic;
SIGNAL \i2|Add0~9\ : std_logic;
SIGNAL \i2|Add0~10_combout\ : std_logic;
SIGNAL \i2|contador[5]~5_combout\ : std_logic;
SIGNAL \i2|Add0~11\ : std_logic;
SIGNAL \i2|Add0~12_combout\ : std_logic;
SIGNAL \i2|contador[6]~7_combout\ : std_logic;
SIGNAL \i2|Add0~8_combout\ : std_logic;
SIGNAL \i2|contador[4]~8_combout\ : std_logic;
SIGNAL \i2|co~1_combout\ : std_logic;
SIGNAL \i2|Add0~6_combout\ : std_logic;
SIGNAL \i2|contador[3]~9_combout\ : std_logic;
SIGNAL \i2|co~2_combout\ : std_logic;
SIGNAL \i2|co~3_combout\ : std_logic;
SIGNAL \i4|contador[0]~3_combout\ : std_logic;
SIGNAL \i4|contador[1]~5_combout\ : std_logic;
SIGNAL \i4|contador[2]~0_combout\ : std_logic;
SIGNAL \i4|contador[2]~1_combout\ : std_logic;
SIGNAL \i4|contador[2]~4_combout\ : std_logic;
SIGNAL \i4|contador[3]~2_combout\ : std_logic;
SIGNAL \i4|final~0_combout\ : std_logic;
SIGNAL \i5|Selector1~3_combout\ : std_logic;
SIGNAL \i5|Selector1~2_combout\ : std_logic;
SIGNAL \i5|estado_act.Start~regout\ : std_logic;
SIGNAL \i5|Selector2~3_combout\ : std_logic;
SIGNAL \i5|Selector2~2_combout\ : std_logic;
SIGNAL \i5|estado_act.Registro~regout\ : std_logic;
SIGNAL \i5|Selector3~2_combout\ : std_logic;
SIGNAL \i5|Selector3~4_combout\ : std_logic;
SIGNAL \i5|Selector3~3_combout\ : std_logic;
SIGNAL \i5|estado_act.Paridad~regout\ : std_logic;
SIGNAL \i4|registro~3_combout\ : std_logic;
SIGNAL \i4|registro[3]~1_combout\ : std_logic;
SIGNAL \i4|registro~2_combout\ : std_logic;
SIGNAL \i4|registro~0_combout\ : std_logic;
SIGNAL \i3|Mux0~0_combout\ : std_logic;
SIGNAL \i3|Mux0~1_combout\ : std_logic;
SIGNAL \i2|contador\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \i4|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i4|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datos~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_datos <= datos;
ww_boton <= boton;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;

-- Location: LCCOMB_X47_Y11_N20
\i2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~18_combout\ = (\i2|contador\(9) & (!\i2|Add0~17\)) # (!\i2|contador\(9) & ((\i2|Add0~17\) # (GND)))
-- \i2|Add0~19\ = CARRY((!\i2|Add0~17\) # (!\i2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(9),
	datad => VCC,
	cin => \i2|Add0~17\,
	combout => \i2|Add0~18_combout\,
	cout => \i2|Add0~19\);

-- Location: LCFF_X44_Y11_N29
\i4|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|registro~8_combout\,
	sdata => \datos~combout\(7),
	aclr => \i5|rst~0_combout\,
	sload => \i5|estado_act.Start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|registro\(7));

-- Location: LCFF_X45_Y11_N13
\i1|bit_paridad\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|bit_paridad~2_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|bit_paridad~regout\);

-- Location: LCCOMB_X44_Y11_N12
\i1|bit_paridad~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|bit_paridad~0_combout\ = \datos~combout\(1) $ (\datos~combout\(0) $ (\datos~combout\(3) $ (\datos~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos~combout\(1),
	datab => \datos~combout\(0),
	datac => \datos~combout\(3),
	datad => \datos~combout\(2),
	combout => \i1|bit_paridad~0_combout\);

-- Location: LCCOMB_X44_Y11_N18
\i1|bit_paridad~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|bit_paridad~1_combout\ = \datos~combout\(5) $ (\datos~combout\(7) $ (\datos~combout\(6) $ (\datos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos~combout\(5),
	datab => \datos~combout\(7),
	datac => \datos~combout\(6),
	datad => \datos~combout\(4),
	combout => \i1|bit_paridad~1_combout\);

-- Location: LCCOMB_X45_Y11_N12
\i1|bit_paridad~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|bit_paridad~2_combout\ = (\i6|estado_act.Pulso~regout\ & (\i1|bit_paridad~0_combout\ $ ((\i1|bit_paridad~1_combout\)))) # (!\i6|estado_act.Pulso~regout\ & (((\i1|bit_paridad~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|bit_paridad~0_combout\,
	datab => \i1|bit_paridad~1_combout\,
	datac => \i1|bit_paridad~regout\,
	datad => \i6|estado_act.Pulso~regout\,
	combout => \i1|bit_paridad~2_combout\);

-- Location: LCFF_X45_Y11_N17
\i5|estado_act.Stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|Selector4~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|estado_act.Stop~regout\);

-- Location: LCFF_X46_Y11_N11
\i2|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[9]~2_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(9));

-- Location: LCCOMB_X45_Y11_N16
\i5|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Selector4~1_combout\ = (\i6|estado_act.Pulso~regout\ & (\i5|estado_act.Paridad~regout\ & ((\i2|co~3_combout\)))) # (!\i6|estado_act.Pulso~regout\ & ((\i5|estado_act.Stop~regout\) # ((\i5|estado_act.Paridad~regout\ & \i2|co~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i6|estado_act.Pulso~regout\,
	datab => \i5|estado_act.Paridad~regout\,
	datac => \i5|estado_act.Stop~regout\,
	datad => \i2|co~3_combout\,
	combout => \i5|Selector4~1_combout\);

-- Location: LCCOMB_X46_Y11_N10
\i2|contador[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[9]~2_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~18_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(9)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(9),
	datad => \i2|Add0~18_combout\,
	combout => \i2|contador[9]~2_combout\);

-- Location: LCFF_X45_Y11_N23
\i4|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i4|registro~4_combout\,
	aclr => \i5|rst~0_combout\,
	sload => VCC,
	ena => \i4|registro[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|registro\(3));

-- Location: LCFF_X45_Y11_N7
\i4|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i4|registro~5_combout\,
	aclr => \i5|rst~0_combout\,
	sload => VCC,
	ena => \i4|registro[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|registro\(4));

-- Location: LCCOMB_X44_Y11_N20
\i4|registro~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro~4_combout\ = (\i5|estado_act.Start~regout\ & (\datos~combout\(3))) # (!\i5|estado_act.Start~regout\ & ((\i4|registro\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datos~combout\(3),
	datac => \i5|estado_act.Start~regout\,
	datad => \i4|registro\(4),
	combout => \i4|registro~4_combout\);

-- Location: LCFF_X45_Y11_N11
\i4|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i4|registro~6_combout\,
	aclr => \i5|rst~0_combout\,
	sload => VCC,
	ena => \i4|registro[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|registro\(5));

-- Location: LCCOMB_X44_Y11_N6
\i4|registro~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro~5_combout\ = (\i5|estado_act.Start~regout\ & ((\datos~combout\(4)))) # (!\i5|estado_act.Start~regout\ & (\i4|registro\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|registro\(5),
	datac => \i5|estado_act.Start~regout\,
	datad => \datos~combout\(4),
	combout => \i4|registro~5_combout\);

-- Location: LCFF_X45_Y11_N9
\i4|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i4|registro~7_combout\,
	aclr => \i5|rst~0_combout\,
	sload => VCC,
	ena => \i4|registro[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|registro\(6));

-- Location: LCCOMB_X44_Y11_N4
\i4|registro~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro~6_combout\ = (\i5|estado_act.Start~regout\ & (\datos~combout\(5))) # (!\i5|estado_act.Start~regout\ & ((\i4|registro\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos~combout\(5),
	datab => \i4|registro\(6),
	datac => \i5|estado_act.Start~regout\,
	combout => \i4|registro~6_combout\);

-- Location: LCCOMB_X44_Y11_N10
\i4|registro~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro~7_combout\ = (\i5|estado_act.Start~regout\ & (\datos~combout\(6))) # (!\i5|estado_act.Start~regout\ & ((\i4|registro\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datos~combout\(6),
	datac => \i5|estado_act.Start~regout\,
	datad => \i4|registro\(7),
	combout => \i4|registro~7_combout\);

-- Location: LCCOMB_X44_Y11_N28
\i4|registro~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro~8_combout\ = (\i4|registro\(7) & ((!\i2|co~3_combout\) # (!\i5|estado_act.Registro~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i5|estado_act.Registro~regout\,
	datac => \i4|registro\(7),
	datad => \i2|co~3_combout\,
	combout => \i4|registro~8_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos[1]~I\ : cycloneii_io
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
	padio => ww_datos(1),
	combout => \datos~combout\(1));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos[3]~I\ : cycloneii_io
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
	padio => ww_datos(3),
	combout => \datos~combout\(3));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos[4]~I\ : cycloneii_io
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
	padio => ww_datos(4),
	combout => \datos~combout\(4));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos[5]~I\ : cycloneii_io
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
	padio => ww_datos(5),
	combout => \datos~combout\(5));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos[6]~I\ : cycloneii_io
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
	padio => ww_datos(6),
	combout => \datos~combout\(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos[7]~I\ : cycloneii_io
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
	padio => ww_datos(7),
	combout => \datos~combout\(7));

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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\boton~I\ : cycloneii_io
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
	padio => ww_boton,
	combout => \boton~combout\);

-- Location: LCCOMB_X44_Y11_N24
\i6|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i6|estado_act.Esp0~0_combout\ = !\boton~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~combout\,
	combout => \i6|estado_act.Esp0~0_combout\);

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

-- Location: LCFF_X44_Y11_N25
\i6|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i6|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|estado_act.Esp0~regout\);

-- Location: LCCOMB_X44_Y11_N30
\i6|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i6|Selector1~0_combout\ = (!\i6|estado_act.Esp0~regout\ & !\boton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i6|estado_act.Esp0~regout\,
	datad => \boton~combout\,
	combout => \i6|Selector1~0_combout\);

-- Location: LCFF_X45_Y11_N19
\i6|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i6|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|estado_act.Pulso~regout\);

-- Location: LCCOMB_X45_Y11_N22
\i5|estado_act.Inicio~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|estado_act.Inicio~0_combout\ = (\i5|estado_act.Inicio~regout\) # (\i6|estado_act.Pulso~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i5|estado_act.Inicio~regout\,
	datad => \i6|estado_act.Pulso~regout\,
	combout => \i5|estado_act.Inicio~0_combout\);

-- Location: LCFF_X46_Y11_N25
\i5|estado_act.Inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i5|estado_act.Inicio~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|estado_act.Inicio~regout\);

-- Location: LCCOMB_X47_Y11_N14
\i2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~12_combout\ = (\i2|contador\(6) & (\i2|Add0~11\ $ (GND))) # (!\i2|contador\(6) & (!\i2|Add0~11\ & VCC))
-- \i2|Add0~13\ = CARRY((\i2|contador\(6) & !\i2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(6),
	datad => VCC,
	cin => \i2|Add0~11\,
	combout => \i2|Add0~12_combout\,
	cout => \i2|Add0~13\);

-- Location: LCCOMB_X47_Y11_N16
\i2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~14_combout\ = (\i2|contador\(7) & (!\i2|Add0~13\)) # (!\i2|contador\(7) & ((\i2|Add0~13\) # (GND)))
-- \i2|Add0~15\ = CARRY((!\i2|Add0~13\) # (!\i2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contador\(7),
	datad => VCC,
	cin => \i2|Add0~13\,
	combout => \i2|Add0~14_combout\,
	cout => \i2|Add0~15\);

-- Location: LCCOMB_X46_Y11_N12
\i2|contador[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[7]~6_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~14_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(7)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(7),
	datad => \i2|Add0~14_combout\,
	combout => \i2|contador[7]~6_combout\);

-- Location: LCCOMB_X45_Y11_N30
\i5|rst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|rst~0_combout\ = ((\i5|estado_act.Stop~regout\ & !\i6|estado_act.Pulso~regout\)) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Stop~regout\,
	datab => \reset_n~combout\,
	datad => \i6|estado_act.Pulso~regout\,
	combout => \i5|rst~0_combout\);

-- Location: LCFF_X46_Y11_N13
\i2|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[7]~6_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(7));

-- Location: LCCOMB_X47_Y11_N18
\i2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~16_combout\ = (\i2|contador\(8) & (\i2|Add0~15\ $ (GND))) # (!\i2|contador\(8) & (!\i2|Add0~15\ & VCC))
-- \i2|Add0~17\ = CARRY((\i2|contador\(8) & !\i2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(8),
	datad => VCC,
	cin => \i2|Add0~15\,
	combout => \i2|Add0~16_combout\,
	cout => \i2|Add0~17\);

-- Location: LCCOMB_X47_Y11_N22
\i2|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~20_combout\ = (\i2|contador\(10) & (\i2|Add0~19\ $ (GND))) # (!\i2|contador\(10) & (!\i2|Add0~19\ & VCC))
-- \i2|Add0~21\ = CARRY((\i2|contador\(10) & !\i2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(10),
	datad => VCC,
	cin => \i2|Add0~19\,
	combout => \i2|Add0~20_combout\,
	cout => \i2|Add0~21\);

-- Location: LCCOMB_X46_Y11_N0
\i2|contador[10]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[10]~3_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~20_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(10)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(10),
	datad => \i2|Add0~20_combout\,
	combout => \i2|contador[10]~3_combout\);

-- Location: LCFF_X46_Y11_N1
\i2|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[10]~3_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(10));

-- Location: LCCOMB_X47_Y11_N24
\i2|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~22_combout\ = \i2|Add0~21\ $ (\i2|contador\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2|contador\(11),
	cin => \i2|Add0~21\,
	combout => \i2|Add0~22_combout\);

-- Location: LCCOMB_X46_Y11_N16
\i2|contador[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[11]~1_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~22_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(11)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(11),
	datad => \i2|Add0~22_combout\,
	combout => \i2|contador[11]~1_combout\);

-- Location: LCFF_X46_Y11_N17
\i2|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[11]~1_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(11));

-- Location: LCCOMB_X46_Y11_N30
\i2|contador[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[8]~4_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~16_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(8)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(8),
	datad => \i2|Add0~16_combout\,
	combout => \i2|contador[8]~4_combout\);

-- Location: LCFF_X46_Y11_N31
\i2|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[8]~4_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(8));

-- Location: LCCOMB_X46_Y11_N20
\i2|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|co~0_combout\ = (\i2|contador\(9) & (!\i2|contador\(10) & (\i2|contador\(11) & !\i2|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(9),
	datab => \i2|contador\(10),
	datac => \i2|contador\(11),
	datad => \i2|contador\(8),
	combout => \i2|co~0_combout\);

-- Location: LCCOMB_X47_Y11_N30
\i2|contador[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[11]~0_combout\ = ((\i2|co~2_combout\ & (\i2|co~1_combout\ & \i2|co~0_combout\))) # (!\i5|estado_act.Inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|co~2_combout\,
	datab => \i2|co~1_combout\,
	datac => \i5|estado_act.Inicio~regout\,
	datad => \i2|co~0_combout\,
	combout => \i2|contador[11]~0_combout\);

-- Location: LCCOMB_X47_Y11_N2
\i2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~0_combout\ = \i2|contador\(0) $ (VCC)
-- \i2|Add0~1\ = CARRY(\i2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2|contador\(0),
	datad => VCC,
	combout => \i2|Add0~0_combout\,
	cout => \i2|Add0~1\);

-- Location: LCCOMB_X46_Y11_N28
\i2|contador[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[0]~12_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~0_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(0)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(0),
	datad => \i2|Add0~0_combout\,
	combout => \i2|contador[0]~12_combout\);

-- Location: LCFF_X46_Y11_N29
\i2|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[0]~12_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(0));

-- Location: LCCOMB_X47_Y11_N4
\i2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~2_combout\ = (\i2|contador\(1) & (!\i2|Add0~1\)) # (!\i2|contador\(1) & ((\i2|Add0~1\) # (GND)))
-- \i2|Add0~3\ = CARRY((!\i2|Add0~1\) # (!\i2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contador\(1),
	datad => VCC,
	cin => \i2|Add0~1\,
	combout => \i2|Add0~2_combout\,
	cout => \i2|Add0~3\);

-- Location: LCCOMB_X46_Y11_N6
\i2|contador[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[1]~11_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~2_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(1)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(1),
	datad => \i2|Add0~2_combout\,
	combout => \i2|contador[1]~11_combout\);

-- Location: LCFF_X46_Y11_N7
\i2|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[1]~11_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(1));

-- Location: LCCOMB_X47_Y11_N6
\i2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~4_combout\ = (\i2|contador\(2) & (\i2|Add0~3\ $ (GND))) # (!\i2|contador\(2) & (!\i2|Add0~3\ & VCC))
-- \i2|Add0~5\ = CARRY((\i2|contador\(2) & !\i2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contador\(2),
	datad => VCC,
	cin => \i2|Add0~3\,
	combout => \i2|Add0~4_combout\,
	cout => \i2|Add0~5\);

-- Location: LCCOMB_X46_Y11_N4
\i2|contador[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[2]~10_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~4_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(2)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(2),
	datad => \i2|Add0~4_combout\,
	combout => \i2|contador[2]~10_combout\);

-- Location: LCFF_X46_Y11_N5
\i2|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[2]~10_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(2));

-- Location: LCCOMB_X47_Y11_N8
\i2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~6_combout\ = (\i2|contador\(3) & (!\i2|Add0~5\)) # (!\i2|contador\(3) & ((\i2|Add0~5\) # (GND)))
-- \i2|Add0~7\ = CARRY((!\i2|Add0~5\) # (!\i2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(3),
	datad => VCC,
	cin => \i2|Add0~5\,
	combout => \i2|Add0~6_combout\,
	cout => \i2|Add0~7\);

-- Location: LCCOMB_X47_Y11_N10
\i2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~8_combout\ = (\i2|contador\(4) & (\i2|Add0~7\ $ (GND))) # (!\i2|contador\(4) & (!\i2|Add0~7\ & VCC))
-- \i2|Add0~9\ = CARRY((\i2|contador\(4) & !\i2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(4),
	datad => VCC,
	cin => \i2|Add0~7\,
	combout => \i2|Add0~8_combout\,
	cout => \i2|Add0~9\);

-- Location: LCCOMB_X47_Y11_N12
\i2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Add0~10_combout\ = (\i2|contador\(5) & (!\i2|Add0~9\)) # (!\i2|contador\(5) & ((\i2|Add0~9\) # (GND)))
-- \i2|Add0~11\ = CARRY((!\i2|Add0~9\) # (!\i2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2|contador\(5),
	datad => VCC,
	cin => \i2|Add0~9\,
	combout => \i2|Add0~10_combout\,
	cout => \i2|Add0~11\);

-- Location: LCCOMB_X46_Y11_N26
\i2|contador[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[5]~5_combout\ = (\i5|estado_act.Inicio~regout\ & (!\i2|contador[11]~0_combout\ & ((\i2|Add0~10_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(5)) # ((!\i2|contador[11]~0_combout\ & \i2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|contador[11]~0_combout\,
	datac => \i2|contador\(5),
	datad => \i2|Add0~10_combout\,
	combout => \i2|contador[5]~5_combout\);

-- Location: LCFF_X46_Y11_N27
\i2|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[5]~5_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(5));

-- Location: LCCOMB_X46_Y11_N2
\i2|contador[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[6]~7_combout\ = (\i5|estado_act.Inicio~regout\ & (\i2|Add0~12_combout\ & ((!\i2|contador[11]~0_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(6)) # ((\i2|Add0~12_combout\ & !\i2|contador[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|Add0~12_combout\,
	datac => \i2|contador\(6),
	datad => \i2|contador[11]~0_combout\,
	combout => \i2|contador[6]~7_combout\);

-- Location: LCFF_X46_Y11_N3
\i2|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[6]~7_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(6));

-- Location: LCCOMB_X46_Y11_N8
\i2|contador[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[4]~8_combout\ = (\i5|estado_act.Inicio~regout\ & (\i2|Add0~8_combout\ & ((!\i2|contador[11]~0_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(4)) # ((\i2|Add0~8_combout\ & !\i2|contador[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|Add0~8_combout\,
	datac => \i2|contador\(4),
	datad => \i2|contador[11]~0_combout\,
	combout => \i2|contador[4]~8_combout\);

-- Location: LCFF_X46_Y11_N9
\i2|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[4]~8_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(4));

-- Location: LCCOMB_X46_Y11_N22
\i2|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|co~1_combout\ = (!\i2|contador\(7) & (!\i2|contador\(6) & (!\i2|contador\(4) & \i2|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(7),
	datab => \i2|contador\(6),
	datac => \i2|contador\(4),
	datad => \i2|contador\(5),
	combout => \i2|co~1_combout\);

-- Location: LCCOMB_X46_Y11_N14
\i2|contador[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|contador[3]~9_combout\ = (\i5|estado_act.Inicio~regout\ & (\i2|Add0~6_combout\ & ((!\i2|contador[11]~0_combout\)))) # (!\i5|estado_act.Inicio~regout\ & ((\i2|contador\(3)) # ((\i2|Add0~6_combout\ & !\i2|contador[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i2|Add0~6_combout\,
	datac => \i2|contador\(3),
	datad => \i2|contador[11]~0_combout\,
	combout => \i2|contador[3]~9_combout\);

-- Location: LCFF_X46_Y11_N15
\i2|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|contador[3]~9_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|contador\(3));

-- Location: LCCOMB_X46_Y11_N18
\i2|co~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|co~2_combout\ = (!\i2|contador\(0) & (\i2|contador\(2) & (\i2|contador\(3) & !\i2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|contador\(0),
	datab => \i2|contador\(2),
	datac => \i2|contador\(3),
	datad => \i2|contador\(1),
	combout => \i2|co~2_combout\);

-- Location: LCCOMB_X46_Y11_N24
\i2|co~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|co~3_combout\ = (\i2|co~0_combout\ & (\i2|co~1_combout\ & (\i5|estado_act.Inicio~regout\ & \i2|co~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|co~0_combout\,
	datab => \i2|co~1_combout\,
	datac => \i5|estado_act.Inicio~regout\,
	datad => \i2|co~2_combout\,
	combout => \i2|co~3_combout\);

-- Location: LCCOMB_X45_Y11_N14
\i4|contador[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[0]~3_combout\ = \i4|contador\(0) $ (((\i5|estado_act.Registro~regout\ & \i2|co~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Registro~regout\,
	datac => \i4|contador\(0),
	datad => \i2|co~3_combout\,
	combout => \i4|contador[0]~3_combout\);

-- Location: LCFF_X45_Y11_N15
\i4|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[0]~3_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(0));

-- Location: LCCOMB_X45_Y11_N26
\i4|contador[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[1]~5_combout\ = \i4|contador\(1) $ (((\i4|contador\(0) & (\i5|estado_act.Registro~regout\ & \i2|co~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(0),
	datab => \i5|estado_act.Registro~regout\,
	datac => \i4|contador\(1),
	datad => \i2|co~3_combout\,
	combout => \i4|contador[1]~5_combout\);

-- Location: LCFF_X45_Y11_N27
\i4|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[1]~5_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(1));

-- Location: LCCOMB_X44_Y11_N16
\i4|contador[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[2]~0_combout\ = (\i5|estado_act.Inicio~regout\ & (\i5|estado_act.Registro~regout\ & (\i4|contador\(0) & \i4|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Inicio~regout\,
	datab => \i5|estado_act.Registro~regout\,
	datac => \i4|contador\(0),
	datad => \i4|contador\(1),
	combout => \i4|contador[2]~0_combout\);

-- Location: LCCOMB_X45_Y11_N0
\i4|contador[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[2]~1_combout\ = (\i2|co~0_combout\ & (\i2|co~2_combout\ & (\i2|co~1_combout\ & \i4|contador[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|co~0_combout\,
	datab => \i2|co~2_combout\,
	datac => \i2|co~1_combout\,
	datad => \i4|contador[2]~0_combout\,
	combout => \i4|contador[2]~1_combout\);

-- Location: LCCOMB_X45_Y11_N20
\i4|contador[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[2]~4_combout\ = \i4|contador\(2) $ (\i4|contador[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i4|contador\(2),
	datad => \i4|contador[2]~1_combout\,
	combout => \i4|contador[2]~4_combout\);

-- Location: LCFF_X45_Y11_N21
\i4|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[2]~4_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(2));

-- Location: LCCOMB_X45_Y11_N24
\i4|contador[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador[3]~2_combout\ = \i4|contador\(3) $ (((\i4|contador\(2) & \i4|contador[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(2),
	datac => \i4|contador\(3),
	datad => \i4|contador[2]~1_combout\,
	combout => \i4|contador[3]~2_combout\);

-- Location: LCFF_X45_Y11_N25
\i4|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador[3]~2_combout\,
	aclr => \i5|rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador\(3));

-- Location: LCCOMB_X44_Y11_N22
\i4|final~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|final~0_combout\ = (!\i4|contador\(1) & (!\i4|contador\(2) & (!\i4|contador\(0) & \i4|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador\(1),
	datab => \i4|contador\(2),
	datac => \i4|contador\(0),
	datad => \i4|contador\(3),
	combout => \i4|final~0_combout\);

-- Location: LCCOMB_X44_Y11_N2
\i5|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Selector1~3_combout\ = (!\i5|estado_act.Start~regout\ & (!\i5|estado_act.Paridad~regout\ & ((!\i4|final~0_combout\) # (!\i5|estado_act.Registro~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Start~regout\,
	datab => \i5|estado_act.Paridad~regout\,
	datac => \i5|estado_act.Registro~regout\,
	datad => \i4|final~0_combout\,
	combout => \i5|Selector1~3_combout\);

-- Location: LCCOMB_X47_Y11_N28
\i5|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Selector1~2_combout\ = (\i5|Selector3~2_combout\ & ((\i5|Selector1~3_combout\) # ((!\i2|co~3_combout\)))) # (!\i5|Selector3~2_combout\ & (\i5|estado_act.Start~regout\ & ((\i5|Selector1~3_combout\) # (!\i2|co~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|Selector3~2_combout\,
	datab => \i5|Selector1~3_combout\,
	datac => \i5|estado_act.Start~regout\,
	datad => \i2|co~3_combout\,
	combout => \i5|Selector1~2_combout\);

-- Location: LCFF_X47_Y11_N29
\i5|estado_act.Start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|Selector1~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|estado_act.Start~regout\);

-- Location: LCCOMB_X44_Y11_N8
\i5|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Selector2~3_combout\ = (!\i5|estado_act.Paridad~regout\ & ((\i5|estado_act.Start~regout\) # (!\i4|final~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i5|estado_act.Paridad~regout\,
	datac => \i5|estado_act.Start~regout\,
	datad => \i4|final~0_combout\,
	combout => \i5|Selector2~3_combout\);

-- Location: LCCOMB_X44_Y11_N14
\i5|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Selector2~2_combout\ = (\i2|co~3_combout\ & (\i5|Selector2~3_combout\ & ((\i5|estado_act.Start~regout\) # (\i5|estado_act.Registro~regout\)))) # (!\i2|co~3_combout\ & (((\i5|estado_act.Registro~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Start~regout\,
	datab => \i5|Selector2~3_combout\,
	datac => \i5|estado_act.Registro~regout\,
	datad => \i2|co~3_combout\,
	combout => \i5|Selector2~2_combout\);

-- Location: LCFF_X44_Y11_N15
\i5|estado_act.Registro\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|Selector2~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|estado_act.Registro~regout\);

-- Location: LCCOMB_X45_Y11_N8
\i5|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Selector3~2_combout\ = (\i6|estado_act.Pulso~regout\ & ((\i5|estado_act.Stop~regout\) # (!\i5|estado_act.Inicio~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Stop~regout\,
	datab => \i5|estado_act.Inicio~regout\,
	datad => \i6|estado_act.Pulso~regout\,
	combout => \i5|Selector3~2_combout\);

-- Location: LCCOMB_X45_Y11_N10
\i5|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Selector3~4_combout\ = (\i5|estado_act.Paridad~regout\ & (!\i5|Selector3~2_combout\ & !\i2|co~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Paridad~regout\,
	datab => \i5|Selector3~2_combout\,
	datad => \i2|co~3_combout\,
	combout => \i5|Selector3~4_combout\);

-- Location: LCCOMB_X45_Y11_N28
\i5|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Selector3~3_combout\ = (\i5|Selector3~4_combout\) # ((\i4|final~0_combout\ & (\i2|co~3_combout\ & \i5|estado_act.Registro~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|final~0_combout\,
	datab => \i2|co~3_combout\,
	datac => \i5|estado_act.Registro~regout\,
	datad => \i5|Selector3~4_combout\,
	combout => \i5|Selector3~3_combout\);

-- Location: LCFF_X45_Y11_N29
\i5|estado_act.Paridad\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|Selector3~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|estado_act.Paridad~regout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos[0]~I\ : cycloneii_io
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
	padio => ww_datos(0),
	combout => \datos~combout\(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\datos[2]~I\ : cycloneii_io
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
	padio => ww_datos(2),
	combout => \datos~combout\(2));

-- Location: LCCOMB_X44_Y11_N26
\i4|registro~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro~3_combout\ = (\i5|estado_act.Start~regout\ & ((\datos~combout\(2)))) # (!\i5|estado_act.Start~regout\ & (\i4|registro\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|registro\(3),
	datab => \datos~combout\(2),
	datac => \i5|estado_act.Start~regout\,
	combout => \i4|registro~3_combout\);

-- Location: LCCOMB_X45_Y11_N6
\i4|registro[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro[3]~1_combout\ = (\i5|estado_act.Start~regout\) # ((\i5|estado_act.Registro~regout\ & \i2|co~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|estado_act.Registro~regout\,
	datab => \i5|estado_act.Start~regout\,
	datad => \i2|co~3_combout\,
	combout => \i4|registro[3]~1_combout\);

-- Location: LCFF_X45_Y11_N31
\i4|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i4|registro~3_combout\,
	aclr => \i5|rst~0_combout\,
	sload => VCC,
	ena => \i4|registro[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|registro\(2));

-- Location: LCCOMB_X45_Y11_N4
\i4|registro~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro~2_combout\ = (\i5|estado_act.Start~regout\ & (\datos~combout\(1))) # (!\i5|estado_act.Start~regout\ & ((\i4|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos~combout\(1),
	datab => \i4|registro\(2),
	datad => \i5|estado_act.Start~regout\,
	combout => \i4|registro~2_combout\);

-- Location: LCFF_X45_Y11_N5
\i4|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|registro~2_combout\,
	aclr => \i5|rst~0_combout\,
	ena => \i4|registro[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|registro\(1));

-- Location: LCCOMB_X44_Y11_N0
\i4|registro~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|registro~0_combout\ = (\i5|estado_act.Start~regout\ & (\datos~combout\(0))) # (!\i5|estado_act.Start~regout\ & ((\i4|registro\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datos~combout\(0),
	datac => \i5|estado_act.Start~regout\,
	datad => \i4|registro\(1),
	combout => \i4|registro~0_combout\);

-- Location: LCFF_X45_Y11_N3
\i4|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i4|registro~0_combout\,
	aclr => \i5|rst~0_combout\,
	sload => VCC,
	ena => \i4|registro[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|registro\(0));

-- Location: LCCOMB_X45_Y11_N2
\i3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux0~0_combout\ = (\i5|estado_act.Paridad~regout\ & (\i1|bit_paridad~regout\ & ((!\i5|estado_act.Registro~regout\)))) # (!\i5|estado_act.Paridad~regout\ & (((\i4|registro\(0)) # (!\i5|estado_act.Registro~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|bit_paridad~regout\,
	datab => \i5|estado_act.Paridad~regout\,
	datac => \i4|registro\(0),
	datad => \i5|estado_act.Registro~regout\,
	combout => \i3|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y11_N18
\i3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux0~1_combout\ = (\i3|Mux0~0_combout\ & !\i5|estado_act.Start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i3|Mux0~0_combout\,
	datad => \i5|estado_act.Start~regout\,
	combout => \i3|Mux0~1_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output~I\ : cycloneii_io
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
	datain => \i3|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output);
END structure;


