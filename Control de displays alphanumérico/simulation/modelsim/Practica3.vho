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

-- DATE "02/15/2019 23:01:58"

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

ENTITY 	Top IS
    PORT (
	clk : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0);
	reset_n : IN std_logic;
	boton : IN std_logic;
	datos : OUT std_logic_vector(16 DOWNTO 0);
	bits : OUT std_logic_vector(7 DOWNTO 0)
	);
END Top;

-- Design Ports Information
-- datos[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[4]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[5]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[7]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[8]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[9]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[10]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[11]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[12]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[13]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[14]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[15]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- datos[16]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bits[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bits[1]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bits[2]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bits[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bits[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bits[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bits[6]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bits[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Top IS
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
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_datos : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_bits : std_logic_vector(7 DOWNTO 0);
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i1|Add0~10_combout\ : std_logic;
SIGNAL \i1|Add0~24_combout\ : std_logic;
SIGNAL \i1|Add0~26_combout\ : std_logic;
SIGNAL \i1|co~1_combout\ : std_logic;
SIGNAL \i14|rst~0_combout\ : std_logic;
SIGNAL \i1|contador[12]~3_combout\ : std_logic;
SIGNAL \i1|contador[5]~11_combout\ : std_logic;
SIGNAL \i4|output[0]~feeder_combout\ : std_logic;
SIGNAL \i5|output[0]~feeder_combout\ : std_logic;
SIGNAL \i8|output[0]~feeder_combout\ : std_logic;
SIGNAL \i4|output[1]~feeder_combout\ : std_logic;
SIGNAL \i5|output[1]~feeder_combout\ : std_logic;
SIGNAL \i4|output[5]~feeder_combout\ : std_logic;
SIGNAL \i5|output[5]~feeder_combout\ : std_logic;
SIGNAL \i4|output[6]~feeder_combout\ : std_logic;
SIGNAL \i5|output[6]~feeder_combout\ : std_logic;
SIGNAL \i8|output[7]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \boton~combout\ : std_logic;
SIGNAL \i10|estado_act.Esp0~0_combout\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \i10|estado_act.Esp0~regout\ : std_logic;
SIGNAL \i10|Selector1~0_combout\ : std_logic;
SIGNAL \i10|estado_act.Pulso~regout\ : std_logic;
SIGNAL \i12|contador[1]~1_combout\ : std_logic;
SIGNAL \i14|Selector0~3_combout\ : std_logic;
SIGNAL \i14|Selector1~2_combout\ : std_logic;
SIGNAL \i14|estado_act.Mult~regout\ : std_logic;
SIGNAL \i14|Selector0~2_combout\ : std_logic;
SIGNAL \i14|Selector2~2_combout\ : std_logic;
SIGNAL \i14|estado_act.Final~regout\ : std_logic;
SIGNAL \i14|rst~1_combout\ : std_logic;
SIGNAL \i12|contador[2]~0_combout\ : std_logic;
SIGNAL \i12|contador[0]~2_combout\ : std_logic;
SIGNAL \i12|Equal8~0_combout\ : std_logic;
SIGNAL \i14|Selector0~4_combout\ : std_logic;
SIGNAL \i14|estado_act.Inicio~regout\ : std_logic;
SIGNAL \i1|Add0~1\ : std_logic;
SIGNAL \i1|Add0~3\ : std_logic;
SIGNAL \i1|Add0~4_combout\ : std_logic;
SIGNAL \i1|contador[2]~13_combout\ : std_logic;
SIGNAL \i1|Add0~0_combout\ : std_logic;
SIGNAL \i1|contador[0]~15_combout\ : std_logic;
SIGNAL \i1|Add0~2_combout\ : std_logic;
SIGNAL \i1|contador[1]~14_combout\ : std_logic;
SIGNAL \i1|co~3_combout\ : std_logic;
SIGNAL \i1|Add0~5\ : std_logic;
SIGNAL \i1|Add0~6_combout\ : std_logic;
SIGNAL \i1|contador[3]~12_combout\ : std_logic;
SIGNAL \i1|Add0~7\ : std_logic;
SIGNAL \i1|Add0~8_combout\ : std_logic;
SIGNAL \i1|contador[4]~9_combout\ : std_logic;
SIGNAL \i1|Add0~9\ : std_logic;
SIGNAL \i1|Add0~11\ : std_logic;
SIGNAL \i1|Add0~12_combout\ : std_logic;
SIGNAL \i1|contador[6]~8_combout\ : std_logic;
SIGNAL \i1|Add0~13\ : std_logic;
SIGNAL \i1|Add0~15\ : std_logic;
SIGNAL \i1|Add0~16_combout\ : std_logic;
SIGNAL \i1|contador[8]~5_combout\ : std_logic;
SIGNAL \i1|Add0~17\ : std_logic;
SIGNAL \i1|Add0~18_combout\ : std_logic;
SIGNAL \i1|contador[9]~4_combout\ : std_logic;
SIGNAL \i1|Add0~19\ : std_logic;
SIGNAL \i1|Add0~20_combout\ : std_logic;
SIGNAL \i1|contador[10]~7_combout\ : std_logic;
SIGNAL \i1|Add0~21\ : std_logic;
SIGNAL \i1|Add0~22_combout\ : std_logic;
SIGNAL \i1|contador[11]~6_combout\ : std_logic;
SIGNAL \i1|Add0~23\ : std_logic;
SIGNAL \i1|Add0~25\ : std_logic;
SIGNAL \i1|Add0~27\ : std_logic;
SIGNAL \i1|Add0~28_combout\ : std_logic;
SIGNAL \i1|contador[14]~1_combout\ : std_logic;
SIGNAL \i1|Add0~29\ : std_logic;
SIGNAL \i1|Add0~30_combout\ : std_logic;
SIGNAL \i1|contador[15]~0_combout\ : std_logic;
SIGNAL \i1|contador[13]~2_combout\ : std_logic;
SIGNAL \i1|co~0_combout\ : std_logic;
SIGNAL \i1|Add0~14_combout\ : std_logic;
SIGNAL \i1|contador[7]~10_combout\ : std_logic;
SIGNAL \i1|co~2_combout\ : std_logic;
SIGNAL \i1|co~4_combout\ : std_logic;
SIGNAL \i14|contador[0]~4_combout\ : std_logic;
SIGNAL \i14|contador[1]~3_combout\ : std_logic;
SIGNAL \i14|contador[2]~0_combout\ : std_logic;
SIGNAL \i14|contador[2]~2_combout\ : std_logic;
SIGNAL \i15|Equal0~0_combout\ : std_logic;
SIGNAL \i12|contador[3]~3_combout\ : std_logic;
SIGNAL \i12|contador[3]~4_combout\ : std_logic;
SIGNAL \i12|enable[7]~0_combout\ : std_logic;
SIGNAL \i14|contador[3]~1_combout\ : std_logic;
SIGNAL \i13|Mux3~0_combout\ : std_logic;
SIGNAL \i12|enable[1]~1_combout\ : std_logic;
SIGNAL \i13|Mux3~1_combout\ : std_logic;
SIGNAL \i12|Equal7~0_combout\ : std_logic;
SIGNAL \i14|sel[1]~0_combout\ : std_logic;
SIGNAL \i12|enable[5]~6_combout\ : std_logic;
SIGNAL \i14|sel[0]~1_combout\ : std_logic;
SIGNAL \i12|enable[4]~5_combout\ : std_logic;
SIGNAL \i13|Mux7~0_combout\ : std_logic;
SIGNAL \i13|Mux7~1_combout\ : std_logic;
SIGNAL \i13|Mux7~2_combout\ : std_logic;
SIGNAL \i13|Mux7~3_combout\ : std_logic;
SIGNAL \i13|Mux7~4_combout\ : std_logic;
SIGNAL \i12|enable[6]~3_combout\ : std_logic;
SIGNAL \i13|Mux6~0_combout\ : std_logic;
SIGNAL \i13|Mux6~1_combout\ : std_logic;
SIGNAL \i13|Mux6~2_combout\ : std_logic;
SIGNAL \i13|Mux6~3_combout\ : std_logic;
SIGNAL \i13|Mux6~4_combout\ : std_logic;
SIGNAL \i13|Mux3~2_combout\ : std_logic;
SIGNAL \i12|enable[3]~4_combout\ : std_logic;
SIGNAL \i13|Mux5~0_combout\ : std_logic;
SIGNAL \i13|Mux5~1_combout\ : std_logic;
SIGNAL \i13|Mux5~2_combout\ : std_logic;
SIGNAL \i13|Mux5~3_combout\ : std_logic;
SIGNAL \i13|Mux5~4_combout\ : std_logic;
SIGNAL \i8|output[3]~feeder_combout\ : std_logic;
SIGNAL \i13|Mux4~0_combout\ : std_logic;
SIGNAL \i13|Mux4~1_combout\ : std_logic;
SIGNAL \i13|Mux4~2_combout\ : std_logic;
SIGNAL \i13|Mux4~3_combout\ : std_logic;
SIGNAL \i13|Mux4~4_combout\ : std_logic;
SIGNAL \i13|Mux3~3_combout\ : std_logic;
SIGNAL \i13|Mux3~4_combout\ : std_logic;
SIGNAL \i13|Mux3~5_combout\ : std_logic;
SIGNAL \i13|Mux3~6_combout\ : std_logic;
SIGNAL \i13|Mux3~7_combout\ : std_logic;
SIGNAL \i13|Mux2~0_combout\ : std_logic;
SIGNAL \i13|Mux2~1_combout\ : std_logic;
SIGNAL \i13|Mux2~2_combout\ : std_logic;
SIGNAL \i13|Mux2~3_combout\ : std_logic;
SIGNAL \i13|Mux2~4_combout\ : std_logic;
SIGNAL \i13|Mux1~0_combout\ : std_logic;
SIGNAL \i13|Mux1~1_combout\ : std_logic;
SIGNAL \i13|Mux1~2_combout\ : std_logic;
SIGNAL \i13|Mux1~3_combout\ : std_logic;
SIGNAL \i13|Mux1~4_combout\ : std_logic;
SIGNAL \i4|output[7]~feeder_combout\ : std_logic;
SIGNAL \i12|enable[2]~2_combout\ : std_logic;
SIGNAL \i5|output[7]~feeder_combout\ : std_logic;
SIGNAL \i13|Mux0~0_combout\ : std_logic;
SIGNAL \i13|Mux0~1_combout\ : std_logic;
SIGNAL \i13|Mux0~2_combout\ : std_logic;
SIGNAL \i13|Mux0~3_combout\ : std_logic;
SIGNAL \i13|Mux0~4_combout\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \i11|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \i15|Equal1~0_combout\ : std_logic;
SIGNAL \i15|Equal2~0_combout\ : std_logic;
SIGNAL \i15|Equal3~0_combout\ : std_logic;
SIGNAL \i15|Equal4~0_combout\ : std_logic;
SIGNAL \i15|Equal5~0_combout\ : std_logic;
SIGNAL \i15|Equal6~0_combout\ : std_logic;
SIGNAL \i15|Equal7~0_combout\ : std_logic;
SIGNAL \i14|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i4|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i5|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i12|contador\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i8|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i3|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i9|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i1|contador\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i6|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i7|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;
SIGNAL \i15|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \i15|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \i15|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \i15|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \i15|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \i15|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \i15|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \i15|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_input <= input;
ww_reset_n <= reset_n;
ww_boton <= boton;
datos <= ww_datos;
bits <= ww_bits;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i13|Mux0~4_combout\ & \i13|Mux1~4_combout\ & \i13|Mux2~4_combout\ & \i13|Mux3~7_combout\ & \i13|Mux4~4_combout\ & \i13|Mux5~4_combout\ & \i13|Mux6~4_combout\ & \i13|Mux7~4_combout\);

\i11|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\i11|memoria_rtl_0|auto_generated|ram_block1a1\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\i11|memoria_rtl_0|auto_generated|ram_block1a2\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\i11|memoria_rtl_0|auto_generated|ram_block1a3\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\i11|memoria_rtl_0|auto_generated|ram_block1a4\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\i11|memoria_rtl_0|auto_generated|ram_block1a5\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\i11|memoria_rtl_0|auto_generated|ram_block1a6\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\i11|memoria_rtl_0|auto_generated|ram_block1a7\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\i11|memoria_rtl_0|auto_generated|ram_block1a8\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\i11|memoria_rtl_0|auto_generated|ram_block1a9\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\i11|memoria_rtl_0|auto_generated|ram_block1a10\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\i11|memoria_rtl_0|auto_generated|ram_block1a11\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\i11|memoria_rtl_0|auto_generated|ram_block1a12\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\i11|memoria_rtl_0|auto_generated|ram_block1a13\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\i11|memoria_rtl_0|auto_generated|ram_block1a14\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\i11|memoria_rtl_0|auto_generated|ram_block1a15\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\i11|memoria_rtl_0|auto_generated|ram_block1a16\ <= \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;
\i15|ALT_INV_Equal7~0_combout\ <= NOT \i15|Equal7~0_combout\;
\i15|ALT_INV_Equal6~0_combout\ <= NOT \i15|Equal6~0_combout\;
\i15|ALT_INV_Equal5~0_combout\ <= NOT \i15|Equal5~0_combout\;
\i15|ALT_INV_Equal4~0_combout\ <= NOT \i15|Equal4~0_combout\;
\i15|ALT_INV_Equal3~0_combout\ <= NOT \i15|Equal3~0_combout\;
\i15|ALT_INV_Equal2~0_combout\ <= NOT \i15|Equal2~0_combout\;
\i15|ALT_INV_Equal1~0_combout\ <= NOT \i15|Equal1~0_combout\;
\i15|ALT_INV_Equal0~0_combout\ <= NOT \i15|Equal0~0_combout\;

-- Location: LCCOMB_X39_Y23_N10
\i1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~10_combout\ = (\i1|contador\(5) & (!\i1|Add0~9\)) # (!\i1|contador\(5) & ((\i1|Add0~9\) # (GND)))
-- \i1|Add0~11\ = CARRY((!\i1|Add0~9\) # (!\i1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(5),
	datad => VCC,
	cin => \i1|Add0~9\,
	combout => \i1|Add0~10_combout\,
	cout => \i1|Add0~11\);

-- Location: LCCOMB_X39_Y23_N24
\i1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~24_combout\ = (\i1|contador\(12) & (\i1|Add0~23\ $ (GND))) # (!\i1|contador\(12) & (!\i1|Add0~23\ & VCC))
-- \i1|Add0~25\ = CARRY((\i1|contador\(12) & !\i1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(12),
	datad => VCC,
	cin => \i1|Add0~23\,
	combout => \i1|Add0~24_combout\,
	cout => \i1|Add0~25\);

-- Location: LCCOMB_X39_Y23_N26
\i1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~26_combout\ = (\i1|contador\(13) & (!\i1|Add0~25\)) # (!\i1|contador\(13) & ((\i1|Add0~25\) # (GND)))
-- \i1|Add0~27\ = CARRY((!\i1|Add0~25\) # (!\i1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(13),
	datad => VCC,
	cin => \i1|Add0~25\,
	combout => \i1|Add0~26_combout\,
	cout => \i1|Add0~27\);

-- Location: LCFF_X43_Y24_N1
\i4|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|output[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|output\(0));

-- Location: LCFF_X37_Y24_N29
\i8|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i8|output[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i8|output\(0));

-- Location: LCFF_X43_Y24_N3
\i5|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|output[0]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|output\(0));

-- Location: LCFF_X43_Y24_N9
\i4|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|output[1]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|output\(1));

-- Location: LCFF_X43_Y24_N23
\i5|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|output[1]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|output\(1));

-- Location: LCFF_X37_Y24_N17
\i7|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i7|output\(1));

-- Location: LCFF_X43_Y24_N5
\i4|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|output\(2));

-- Location: LCFF_X37_Y24_N19
\i8|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i8|output\(2));

-- Location: LCFF_X43_Y24_N13
\i4|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|output\(3));

-- Location: LCFF_X43_Y24_N11
\i5|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|output\(3));

-- Location: LCFF_X43_Y24_N17
\i4|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|output\(4));

-- Location: LCFF_X43_Y24_N15
\i5|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|output\(4));

-- Location: LCFF_X37_Y24_N3
\i8|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i8|output\(4));

-- Location: LCFF_X43_Y24_N29
\i4|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|output[5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|output\(5));

-- Location: LCFF_X43_Y24_N7
\i5|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|output[5]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|output\(5));

-- Location: LCFF_X37_Y24_N7
\i7|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i7|output\(5));

-- Location: LCFF_X43_Y24_N21
\i4|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|output[6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|output\(6));

-- Location: LCFF_X43_Y24_N19
\i5|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|output[6]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|output\(6));

-- Location: LCFF_X37_Y24_N25
\i8|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i8|output\(6));

-- Location: LCFF_X37_Y24_N31
\i8|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i8|output[7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i8|output\(7));

-- Location: LCFF_X38_Y23_N3
\i1|contador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[12]~3_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(12));

-- Location: LCCOMB_X37_Y23_N12
\i1|co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|co~1_combout\ = (!\i1|contador\(11) & (\i1|contador\(8) & (!\i1|contador\(10) & \i1|contador\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(11),
	datab => \i1|contador\(8),
	datac => \i1|contador\(10),
	datad => \i1|contador\(9),
	combout => \i1|co~1_combout\);

-- Location: LCFF_X38_Y23_N21
\i1|contador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[5]~11_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(5));

-- Location: LCCOMB_X40_Y23_N6
\i14|rst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|rst~0_combout\ = (\i14|estado_act.Final~regout\ & \i10|estado_act.Pulso~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|estado_act.Final~regout\,
	datad => \i10|estado_act.Pulso~regout\,
	combout => \i14|rst~0_combout\);

-- Location: LCCOMB_X38_Y23_N2
\i1|contador[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[12]~3_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~24_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(12),
	datad => \i1|Add0~24_combout\,
	combout => \i1|contador[12]~3_combout\);

-- Location: LCCOMB_X38_Y23_N20
\i1|contador[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[5]~11_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~10_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(5),
	datad => \i1|Add0~10_combout\,
	combout => \i1|contador[5]~11_combout\);

-- Location: LCCOMB_X43_Y24_N0
\i4|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|output[0]~feeder_combout\ = \input~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(0),
	combout => \i4|output[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N2
\i5|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|output[0]~feeder_combout\ = \input~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(0),
	combout => \i5|output[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N28
\i8|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i8|output[0]~feeder_combout\ = \input~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(0),
	combout => \i8|output[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N8
\i4|output[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|output[1]~feeder_combout\ = \input~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(1),
	combout => \i4|output[1]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N22
\i5|output[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|output[1]~feeder_combout\ = \input~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(1),
	combout => \i5|output[1]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N28
\i4|output[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|output[5]~feeder_combout\ = \input~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(5),
	combout => \i4|output[5]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N6
\i5|output[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|output[5]~feeder_combout\ = \input~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(5),
	combout => \i5|output[5]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N20
\i4|output[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|output[6]~feeder_combout\ = \input~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(6),
	combout => \i4|output[6]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N18
\i5|output[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|output[6]~feeder_combout\ = \input~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(6),
	combout => \i5|output[6]~feeder_combout\);

-- Location: LCCOMB_X37_Y24_N30
\i8|output[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i8|output[7]~feeder_combout\ = \input~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(7),
	combout => \i8|output[7]~feeder_combout\);

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

-- Location: LCCOMB_X37_Y23_N26
\i10|estado_act.Esp0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i10|estado_act.Esp0~0_combout\ = !\boton~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~combout\,
	combout => \i10|estado_act.Esp0~0_combout\);

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

-- Location: LCFF_X37_Y23_N27
\i10|estado_act.Esp0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i10|estado_act.Esp0~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i10|estado_act.Esp0~regout\);

-- Location: LCCOMB_X38_Y23_N6
\i10|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i10|Selector1~0_combout\ = (!\i10|estado_act.Esp0~regout\ & !\boton~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i10|estado_act.Esp0~regout\,
	datad => \boton~combout\,
	combout => \i10|Selector1~0_combout\);

-- Location: LCFF_X38_Y23_N7
\i10|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i10|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i10|estado_act.Pulso~regout\);

-- Location: LCCOMB_X37_Y23_N2
\i12|contador[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|contador[1]~1_combout\ = \i12|contador\(1) $ (((\i12|contador\(0) & \i10|estado_act.Pulso~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datac => \i12|contador\(1),
	datad => \i10|estado_act.Pulso~regout\,
	combout => \i12|contador[1]~1_combout\);

-- Location: LCCOMB_X40_Y23_N10
\i14|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|Selector0~3_combout\ = (\i12|Equal8~0_combout\ & (\i14|estado_act.Inicio~regout\ & ((!\i14|estado_act.Mult~regout\) # (!\i15|Equal0~0_combout\)))) # (!\i12|Equal8~0_combout\ & (((!\i14|estado_act.Mult~regout\) # (!\i15|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|Equal8~0_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i15|Equal0~0_combout\,
	datad => \i14|estado_act.Mult~regout\,
	combout => \i14|Selector0~3_combout\);

-- Location: LCCOMB_X40_Y23_N26
\i14|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|Selector1~2_combout\ = (!\i14|rst~0_combout\ & ((\i14|estado_act.Mult~regout\ & ((\i14|Selector0~3_combout\) # (!\i15|Equal0~0_combout\))) # (!\i14|estado_act.Mult~regout\ & ((!\i14|Selector0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|rst~0_combout\,
	datab => \i15|Equal0~0_combout\,
	datac => \i14|estado_act.Mult~regout\,
	datad => \i14|Selector0~3_combout\,
	combout => \i14|Selector1~2_combout\);

-- Location: LCFF_X40_Y23_N27
\i14|estado_act.Mult\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i14|Selector1~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i14|estado_act.Mult~regout\);

-- Location: LCCOMB_X40_Y23_N8
\i14|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|Selector0~2_combout\ = (\i15|Equal0~0_combout\ & \i14|estado_act.Mult~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i15|Equal0~0_combout\,
	datad => \i14|estado_act.Mult~regout\,
	combout => \i14|Selector0~2_combout\);

-- Location: LCCOMB_X38_Y23_N12
\i14|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|Selector2~2_combout\ = (\i14|estado_act.Final~regout\ & (!\i10|estado_act.Pulso~regout\ & ((\i14|Selector0~2_combout\) # (\i14|Selector0~3_combout\)))) # (!\i14|estado_act.Final~regout\ & (((\i14|Selector0~2_combout\ & !\i14|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i10|estado_act.Pulso~regout\,
	datab => \i14|Selector0~2_combout\,
	datac => \i14|estado_act.Final~regout\,
	datad => \i14|Selector0~3_combout\,
	combout => \i14|Selector2~2_combout\);

-- Location: LCFF_X38_Y23_N13
\i14|estado_act.Final\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i14|Selector2~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i14|estado_act.Final~regout\);

-- Location: LCCOMB_X38_Y23_N8
\i14|rst~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|rst~1_combout\ = ((\i10|estado_act.Pulso~regout\ & \i14|estado_act.Final~regout\)) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i10|estado_act.Pulso~regout\,
	datab => \reset_n~combout\,
	datad => \i14|estado_act.Final~regout\,
	combout => \i14|rst~1_combout\);

-- Location: LCFF_X37_Y23_N3
\i12|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i12|contador[1]~1_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i12|contador\(1));

-- Location: LCCOMB_X37_Y23_N8
\i12|contador[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|contador[2]~0_combout\ = \i12|contador\(2) $ (((\i12|contador\(0) & (\i12|contador\(1) & \i10|estado_act.Pulso~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datab => \i12|contador\(1),
	datac => \i12|contador\(2),
	datad => \i10|estado_act.Pulso~regout\,
	combout => \i12|contador[2]~0_combout\);

-- Location: LCFF_X37_Y23_N9
\i12|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i12|contador[2]~0_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i12|contador\(2));

-- Location: LCCOMB_X37_Y23_N24
\i12|contador[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|contador[0]~2_combout\ = \i12|contador\(0) $ (\i10|estado_act.Pulso~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i12|contador\(0),
	datad => \i10|estado_act.Pulso~regout\,
	combout => \i12|contador[0]~2_combout\);

-- Location: LCFF_X37_Y23_N25
\i12|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i12|contador[0]~2_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i12|contador\(0));

-- Location: LCCOMB_X37_Y23_N20
\i12|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|Equal8~0_combout\ = (\i12|contador\(3) & (!\i12|contador\(2) & (!\i12|contador\(0) & !\i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(3),
	datab => \i12|contador\(2),
	datac => \i12|contador\(0),
	datad => \i12|contador\(1),
	combout => \i12|Equal8~0_combout\);

-- Location: LCCOMB_X40_Y23_N0
\i14|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|Selector0~4_combout\ = (\i14|estado_act.Final~regout\ & (!\i10|estado_act.Pulso~regout\ & ((\i12|Equal8~0_combout\) # (\i14|estado_act.Inicio~regout\)))) # (!\i14|estado_act.Final~regout\ & ((\i12|Equal8~0_combout\) # 
-- ((\i14|estado_act.Inicio~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|estado_act.Final~regout\,
	datab => \i12|Equal8~0_combout\,
	datac => \i14|estado_act.Inicio~regout\,
	datad => \i10|estado_act.Pulso~regout\,
	combout => \i14|Selector0~4_combout\);

-- Location: LCFF_X40_Y23_N1
\i14|estado_act.Inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i14|Selector0~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i14|estado_act.Inicio~regout\);

-- Location: LCCOMB_X39_Y23_N0
\i1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~0_combout\ = \i1|contador\(0) $ (VCC)
-- \i1|Add0~1\ = CARRY(\i1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(0),
	datad => VCC,
	combout => \i1|Add0~0_combout\,
	cout => \i1|Add0~1\);

-- Location: LCCOMB_X39_Y23_N2
\i1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~2_combout\ = (\i1|contador\(1) & (!\i1|Add0~1\)) # (!\i1|contador\(1) & ((\i1|Add0~1\) # (GND)))
-- \i1|Add0~3\ = CARRY((!\i1|Add0~1\) # (!\i1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(1),
	datad => VCC,
	cin => \i1|Add0~1\,
	combout => \i1|Add0~2_combout\,
	cout => \i1|Add0~3\);

-- Location: LCCOMB_X39_Y23_N4
\i1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~4_combout\ = (\i1|contador\(2) & (\i1|Add0~3\ $ (GND))) # (!\i1|contador\(2) & (!\i1|Add0~3\ & VCC))
-- \i1|Add0~5\ = CARRY((\i1|contador\(2) & !\i1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(2),
	datad => VCC,
	cin => \i1|Add0~3\,
	combout => \i1|Add0~4_combout\,
	cout => \i1|Add0~5\);

-- Location: LCCOMB_X38_Y23_N10
\i1|contador[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[2]~13_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~4_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(2),
	datad => \i1|Add0~4_combout\,
	combout => \i1|contador[2]~13_combout\);

-- Location: LCFF_X38_Y23_N11
\i1|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[2]~13_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(2));

-- Location: LCCOMB_X38_Y23_N30
\i1|contador[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[0]~15_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~0_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(0),
	datad => \i1|Add0~0_combout\,
	combout => \i1|contador[0]~15_combout\);

-- Location: LCFF_X38_Y23_N31
\i1|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[0]~15_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(0));

-- Location: LCCOMB_X37_Y23_N30
\i1|contador[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[1]~14_combout\ = (\i14|estado_act.Inicio~regout\ & (((!\i1|co~4_combout\ & \i1|Add0~2_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (\i1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(1),
	datab => \i1|co~4_combout\,
	datac => \i14|estado_act.Inicio~regout\,
	datad => \i1|Add0~2_combout\,
	combout => \i1|contador[1]~14_combout\);

-- Location: LCFF_X38_Y23_N9
\i1|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|contador[1]~14_combout\,
	aclr => \i14|rst~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(1));

-- Location: LCCOMB_X37_Y23_N4
\i1|co~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|co~3_combout\ = (!\i1|contador\(3) & (!\i1|contador\(2) & (!\i1|contador\(0) & !\i1|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(3),
	datab => \i1|contador\(2),
	datac => \i1|contador\(0),
	datad => \i1|contador\(1),
	combout => \i1|co~3_combout\);

-- Location: LCCOMB_X39_Y23_N6
\i1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~6_combout\ = (\i1|contador\(3) & (!\i1|Add0~5\)) # (!\i1|contador\(3) & ((\i1|Add0~5\) # (GND)))
-- \i1|Add0~7\ = CARRY((!\i1|Add0~5\) # (!\i1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(3),
	datad => VCC,
	cin => \i1|Add0~5\,
	combout => \i1|Add0~6_combout\,
	cout => \i1|Add0~7\);

-- Location: LCCOMB_X37_Y23_N18
\i1|contador[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[3]~12_combout\ = (\i14|estado_act.Inicio~regout\ & (\i1|Add0~6_combout\ & ((!\i1|co~4_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|estado_act.Inicio~regout\,
	datab => \i1|Add0~6_combout\,
	datac => \i1|contador\(3),
	datad => \i1|co~4_combout\,
	combout => \i1|contador[3]~12_combout\);

-- Location: LCFF_X37_Y23_N19
\i1|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[3]~12_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(3));

-- Location: LCCOMB_X39_Y23_N8
\i1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~8_combout\ = (\i1|contador\(4) & (\i1|Add0~7\ $ (GND))) # (!\i1|contador\(4) & (!\i1|Add0~7\ & VCC))
-- \i1|Add0~9\ = CARRY((\i1|contador\(4) & !\i1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(4),
	datad => VCC,
	cin => \i1|Add0~7\,
	combout => \i1|Add0~8_combout\,
	cout => \i1|Add0~9\);

-- Location: LCCOMB_X40_Y23_N16
\i1|contador[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[4]~9_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~8_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|estado_act.Inicio~regout\,
	datab => \i1|co~4_combout\,
	datac => \i1|contador\(4),
	datad => \i1|Add0~8_combout\,
	combout => \i1|contador[4]~9_combout\);

-- Location: LCFF_X38_Y23_N5
\i1|contador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i1|contador[4]~9_combout\,
	aclr => \i14|rst~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(4));

-- Location: LCCOMB_X39_Y23_N12
\i1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~12_combout\ = (\i1|contador\(6) & (\i1|Add0~11\ $ (GND))) # (!\i1|contador\(6) & (!\i1|Add0~11\ & VCC))
-- \i1|Add0~13\ = CARRY((\i1|contador\(6) & !\i1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(6),
	datad => VCC,
	cin => \i1|Add0~11\,
	combout => \i1|Add0~12_combout\,
	cout => \i1|Add0~13\);

-- Location: LCCOMB_X38_Y23_N18
\i1|contador[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[6]~8_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~12_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(6),
	datad => \i1|Add0~12_combout\,
	combout => \i1|contador[6]~8_combout\);

-- Location: LCFF_X38_Y23_N19
\i1|contador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[6]~8_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(6));

-- Location: LCCOMB_X39_Y23_N14
\i1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~14_combout\ = (\i1|contador\(7) & (!\i1|Add0~13\)) # (!\i1|contador\(7) & ((\i1|Add0~13\) # (GND)))
-- \i1|Add0~15\ = CARRY((!\i1|Add0~13\) # (!\i1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(7),
	datad => VCC,
	cin => \i1|Add0~13\,
	combout => \i1|Add0~14_combout\,
	cout => \i1|Add0~15\);

-- Location: LCCOMB_X39_Y23_N16
\i1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~16_combout\ = (\i1|contador\(8) & (\i1|Add0~15\ $ (GND))) # (!\i1|contador\(8) & (!\i1|Add0~15\ & VCC))
-- \i1|Add0~17\ = CARRY((\i1|contador\(8) & !\i1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(8),
	datad => VCC,
	cin => \i1|Add0~15\,
	combout => \i1|Add0~16_combout\,
	cout => \i1|Add0~17\);

-- Location: LCCOMB_X37_Y23_N14
\i1|contador[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[8]~5_combout\ = (\i14|estado_act.Inicio~regout\ & (\i1|Add0~16_combout\ & ((!\i1|co~4_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|estado_act.Inicio~regout\,
	datab => \i1|Add0~16_combout\,
	datac => \i1|contador\(8),
	datad => \i1|co~4_combout\,
	combout => \i1|contador[8]~5_combout\);

-- Location: LCFF_X37_Y23_N15
\i1|contador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[8]~5_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(8));

-- Location: LCCOMB_X39_Y23_N18
\i1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~18_combout\ = (\i1|contador\(9) & (!\i1|Add0~17\)) # (!\i1|contador\(9) & ((\i1|Add0~17\) # (GND)))
-- \i1|Add0~19\ = CARRY((!\i1|Add0~17\) # (!\i1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(9),
	datad => VCC,
	cin => \i1|Add0~17\,
	combout => \i1|Add0~18_combout\,
	cout => \i1|Add0~19\);

-- Location: LCCOMB_X38_Y23_N24
\i1|contador[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[9]~4_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~18_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(9),
	datad => \i1|Add0~18_combout\,
	combout => \i1|contador[9]~4_combout\);

-- Location: LCFF_X38_Y23_N25
\i1|contador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[9]~4_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(9));

-- Location: LCCOMB_X39_Y23_N20
\i1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~20_combout\ = (\i1|contador\(10) & (\i1|Add0~19\ $ (GND))) # (!\i1|contador\(10) & (!\i1|Add0~19\ & VCC))
-- \i1|Add0~21\ = CARRY((\i1|contador\(10) & !\i1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(10),
	datad => VCC,
	cin => \i1|Add0~19\,
	combout => \i1|Add0~20_combout\,
	cout => \i1|Add0~21\);

-- Location: LCCOMB_X38_Y23_N0
\i1|contador[10]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[10]~7_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~20_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(10),
	datad => \i1|Add0~20_combout\,
	combout => \i1|contador[10]~7_combout\);

-- Location: LCFF_X38_Y23_N1
\i1|contador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[10]~7_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(10));

-- Location: LCCOMB_X39_Y23_N22
\i1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~22_combout\ = (\i1|contador\(11) & (!\i1|Add0~21\)) # (!\i1|contador\(11) & ((\i1|Add0~21\) # (GND)))
-- \i1|Add0~23\ = CARRY((!\i1|Add0~21\) # (!\i1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(11),
	datad => VCC,
	cin => \i1|Add0~21\,
	combout => \i1|Add0~22_combout\,
	cout => \i1|Add0~23\);

-- Location: LCCOMB_X38_Y23_N26
\i1|contador[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[11]~6_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~22_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(11),
	datad => \i1|Add0~22_combout\,
	combout => \i1|contador[11]~6_combout\);

-- Location: LCFF_X38_Y23_N27
\i1|contador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[11]~6_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(11));

-- Location: LCCOMB_X39_Y23_N28
\i1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~28_combout\ = (\i1|contador\(14) & (\i1|Add0~27\ $ (GND))) # (!\i1|contador\(14) & (!\i1|Add0~27\ & VCC))
-- \i1|Add0~29\ = CARRY((\i1|contador\(14) & !\i1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i1|contador\(14),
	datad => VCC,
	cin => \i1|Add0~27\,
	combout => \i1|Add0~28_combout\,
	cout => \i1|Add0~29\);

-- Location: LCCOMB_X38_Y23_N22
\i1|contador[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[14]~1_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~28_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(14),
	datad => \i1|Add0~28_combout\,
	combout => \i1|contador[14]~1_combout\);

-- Location: LCFF_X38_Y23_N23
\i1|contador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[14]~1_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(14));

-- Location: LCCOMB_X39_Y23_N30
\i1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Add0~30_combout\ = \i1|contador\(15) $ (\i1|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(15),
	cin => \i1|Add0~29\,
	combout => \i1|Add0~30_combout\);

-- Location: LCCOMB_X38_Y23_N16
\i1|contador[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[15]~0_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~30_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(15),
	datad => \i1|Add0~30_combout\,
	combout => \i1|contador[15]~0_combout\);

-- Location: LCFF_X38_Y23_N17
\i1|contador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[15]~0_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(15));

-- Location: LCCOMB_X38_Y23_N28
\i1|contador[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[13]~2_combout\ = (\i14|estado_act.Inicio~regout\ & (\i1|Add0~26_combout\ & ((!\i1|co~4_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|Add0~26_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(13),
	datad => \i1|co~4_combout\,
	combout => \i1|contador[13]~2_combout\);

-- Location: LCFF_X38_Y23_N29
\i1|contador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[13]~2_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(13));

-- Location: LCCOMB_X37_Y23_N16
\i1|co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|co~0_combout\ = (!\i1|contador\(12) & (\i1|contador\(14) & (\i1|contador\(15) & !\i1|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(12),
	datab => \i1|contador\(14),
	datac => \i1|contador\(15),
	datad => \i1|contador\(13),
	combout => \i1|co~0_combout\);

-- Location: LCCOMB_X38_Y23_N14
\i1|contador[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|contador[7]~10_combout\ = (\i14|estado_act.Inicio~regout\ & (!\i1|co~4_combout\ & ((\i1|Add0~14_combout\)))) # (!\i14|estado_act.Inicio~regout\ & (((\i1|contador\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i1|contador\(7),
	datad => \i1|Add0~14_combout\,
	combout => \i1|contador[7]~10_combout\);

-- Location: LCFF_X38_Y23_N15
\i1|contador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|contador[7]~10_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|contador\(7));

-- Location: LCCOMB_X38_Y23_N4
\i1|co~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|co~2_combout\ = (!\i1|contador\(5) & (!\i1|contador\(7) & (\i1|contador\(4) & \i1|contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|contador\(5),
	datab => \i1|contador\(7),
	datac => \i1|contador\(4),
	datad => \i1|contador\(6),
	combout => \i1|co~2_combout\);

-- Location: LCCOMB_X37_Y23_N10
\i1|co~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|co~4_combout\ = (\i1|co~1_combout\ & (\i1|co~3_combout\ & (\i1|co~0_combout\ & \i1|co~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~1_combout\,
	datab => \i1|co~3_combout\,
	datac => \i1|co~0_combout\,
	datad => \i1|co~2_combout\,
	combout => \i1|co~4_combout\);

-- Location: LCCOMB_X39_Y24_N14
\i14|contador[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|contador[0]~4_combout\ = \i14|contador\(0) $ (((\i14|estado_act.Inicio~regout\ & \i1|co~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i14|contador\(0),
	datad => \i1|co~4_combout\,
	combout => \i14|contador[0]~4_combout\);

-- Location: LCFF_X39_Y24_N15
\i14|contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i14|contador[0]~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i14|contador\(0));

-- Location: LCCOMB_X38_Y24_N30
\i14|contador[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|contador[1]~3_combout\ = \i14|contador\(1) $ (((\i1|co~4_combout\ & (\i14|contador\(0) & \i14|estado_act.Inicio~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|co~4_combout\,
	datab => \i14|contador\(0),
	datac => \i14|contador\(1),
	datad => \i14|estado_act.Inicio~regout\,
	combout => \i14|contador[1]~3_combout\);

-- Location: LCFF_X39_Y24_N9
\i14|contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \i14|contador[1]~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i14|contador\(1));

-- Location: LCCOMB_X39_Y24_N30
\i14|contador[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|contador[2]~0_combout\ = (\i14|contador\(1) & (\i14|estado_act.Inicio~regout\ & (\i14|contador\(0) & \i1|co~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(1),
	datab => \i14|estado_act.Inicio~regout\,
	datac => \i14|contador\(0),
	datad => \i1|co~4_combout\,
	combout => \i14|contador[2]~0_combout\);

-- Location: LCCOMB_X39_Y24_N22
\i14|contador[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|contador[2]~2_combout\ = \i14|contador\(2) $ (\i14|contador[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i14|contador\(2),
	datad => \i14|contador[2]~0_combout\,
	combout => \i14|contador[2]~2_combout\);

-- Location: LCFF_X39_Y24_N23
\i14|contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i14|contador[2]~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i14|contador\(2));

-- Location: LCCOMB_X39_Y26_N8
\i15|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i15|Equal0~0_combout\ = (\i14|contador\(3) & (!\i14|contador\(1) & (!\i14|contador\(0) & !\i14|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i15|Equal0~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[0]~I\ : cycloneii_io
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
	padio => ww_input(0),
	combout => \input~combout\(0));

-- Location: LCCOMB_X37_Y23_N0
\i12|contador[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|contador[3]~3_combout\ = (\i10|estado_act.Pulso~regout\ & (\i12|contador\(2) & (\i12|contador\(0) & \i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i10|estado_act.Pulso~regout\,
	datab => \i12|contador\(2),
	datac => \i12|contador\(0),
	datad => \i12|contador\(1),
	combout => \i12|contador[3]~3_combout\);

-- Location: LCCOMB_X37_Y23_N22
\i12|contador[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|contador[3]~4_combout\ = \i12|contador\(3) $ (\i12|contador[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i12|contador\(3),
	datad => \i12|contador[3]~3_combout\,
	combout => \i12|contador[3]~4_combout\);

-- Location: LCFF_X37_Y23_N23
\i12|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i12|contador[3]~4_combout\,
	aclr => \i14|rst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i12|contador\(3));

-- Location: LCCOMB_X37_Y24_N20
\i12|enable[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|enable[7]~0_combout\ = (\i12|contador\(0) & (\i12|contador\(2) & (!\i12|contador\(3) & \i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datab => \i12|contador\(2),
	datac => \i12|contador\(3),
	datad => \i12|contador\(1),
	combout => \i12|enable[7]~0_combout\);

-- Location: LCFF_X40_Y24_N17
\i9|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i9|output\(0));

-- Location: LCCOMB_X39_Y24_N4
\i14|contador[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|contador[3]~1_combout\ = \i14|contador\(3) $ (((\i14|contador\(2) & \i14|contador[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i14|contador\(2),
	datac => \i14|contador\(3),
	datad => \i14|contador[2]~0_combout\,
	combout => \i14|contador[3]~1_combout\);

-- Location: LCFF_X39_Y24_N5
\i14|contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i14|contador[3]~1_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i14|contador\(3));

-- Location: LCCOMB_X39_Y24_N8
\i13|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux3~0_combout\ = (!\i14|contador\(3) & (\i14|contador\(1) & !\i14|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i14|contador\(3),
	datac => \i14|contador\(1),
	datad => \i14|contador\(2),
	combout => \i13|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y23_N28
\i12|enable[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|enable[1]~1_combout\ = (\i12|contador\(0) & (!\i12|contador\(2) & (!\i12|contador\(3) & !\i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datab => \i12|contador\(2),
	datac => \i12|contador\(3),
	datad => \i12|contador\(1),
	combout => \i12|enable[1]~1_combout\);

-- Location: LCFF_X40_Y24_N15
\i3|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|output\(0));

-- Location: LCCOMB_X39_Y24_N26
\i13|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux3~1_combout\ = (!\i14|contador\(3) & ((\i14|contador\(2)) # ((!\i14|contador\(1) & \i14|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i13|Mux3~1_combout\);

-- Location: LCCOMB_X37_Y24_N14
\i12|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|Equal7~0_combout\ = (!\i12|contador\(0) & (!\i12|contador\(2) & (!\i12|contador\(3) & !\i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datab => \i12|contador\(2),
	datac => \i12|contador\(3),
	datad => \i12|contador\(1),
	combout => \i12|Equal7~0_combout\);

-- Location: LCFF_X39_Y24_N29
\i2|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|output\(0));

-- Location: LCCOMB_X38_Y24_N0
\i14|sel[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|sel[1]~0_combout\ = (\i14|contador\(1) & !\i14|contador\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i14|contador\(1),
	datad => \i14|contador\(3),
	combout => \i14|sel[1]~0_combout\);

-- Location: LCCOMB_X37_Y24_N10
\i12|enable[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|enable[5]~6_combout\ = (\i12|contador\(0) & (\i12|contador\(2) & (!\i12|contador\(3) & !\i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datab => \i12|contador\(2),
	datac => \i12|contador\(3),
	datad => \i12|contador\(1),
	combout => \i12|enable[5]~6_combout\);

-- Location: LCFF_X38_Y24_N15
\i7|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i7|output\(0));

-- Location: LCCOMB_X38_Y24_N18
\i14|sel[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i14|sel[0]~1_combout\ = (\i14|contador\(3)) # (!\i14|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i14|contador\(0),
	datad => \i14|contador\(3),
	combout => \i14|sel[0]~1_combout\);

-- Location: LCCOMB_X37_Y24_N0
\i12|enable[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|enable[4]~5_combout\ = (!\i12|contador\(0) & (\i12|contador\(2) & (!\i12|contador\(3) & !\i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datab => \i12|contador\(2),
	datac => \i12|contador\(3),
	datad => \i12|contador\(1),
	combout => \i12|enable[4]~5_combout\);

-- Location: LCFF_X38_Y24_N21
\i6|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(0),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|output\(0));

-- Location: LCCOMB_X38_Y24_N20
\i13|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux7~0_combout\ = (\i14|sel[0]~1_combout\ & ((\i5|output\(0)) # ((\i14|sel[1]~0_combout\)))) # (!\i14|sel[0]~1_combout\ & (((\i6|output\(0) & !\i14|sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|output\(0),
	datab => \i14|sel[0]~1_combout\,
	datac => \i6|output\(0),
	datad => \i14|sel[1]~0_combout\,
	combout => \i13|Mux7~0_combout\);

-- Location: LCCOMB_X38_Y24_N14
\i13|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux7~1_combout\ = (\i14|sel[1]~0_combout\ & ((\i13|Mux7~0_combout\ & ((\i7|output\(0)))) # (!\i13|Mux7~0_combout\ & (\i8|output\(0))))) # (!\i14|sel[1]~0_combout\ & (((\i13|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i8|output\(0),
	datab => \i14|sel[1]~0_combout\,
	datac => \i7|output\(0),
	datad => \i13|Mux7~0_combout\,
	combout => \i13|Mux7~1_combout\);

-- Location: LCCOMB_X39_Y24_N28
\i13|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux7~2_combout\ = (\i13|Mux3~2_combout\ & (((\i13|Mux7~1_combout\)) # (!\i13|Mux3~1_combout\))) # (!\i13|Mux3~2_combout\ & (\i13|Mux3~1_combout\ & (\i2|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~2_combout\,
	datab => \i13|Mux3~1_combout\,
	datac => \i2|output\(0),
	datad => \i13|Mux7~1_combout\,
	combout => \i13|Mux7~2_combout\);

-- Location: LCCOMB_X40_Y24_N14
\i13|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux7~3_combout\ = (\i13|Mux3~0_combout\ & ((\i13|Mux7~2_combout\ & (\i4|output\(0))) # (!\i13|Mux7~2_combout\ & ((\i3|output\(0)))))) # (!\i13|Mux3~0_combout\ & (((\i13|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|output\(0),
	datab => \i13|Mux3~0_combout\,
	datac => \i3|output\(0),
	datad => \i13|Mux7~2_combout\,
	combout => \i13|Mux7~3_combout\);

-- Location: LCCOMB_X40_Y24_N16
\i13|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux7~4_combout\ = (\i15|Equal0~0_combout\ & (\i9|output\(0))) # (!\i15|Equal0~0_combout\ & ((\i13|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i15|Equal0~0_combout\,
	datac => \i9|output\(0),
	datad => \i13|Mux7~3_combout\,
	combout => \i13|Mux7~4_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[1]~I\ : cycloneii_io
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
	padio => ww_input(1),
	combout => \input~combout\(1));

-- Location: LCFF_X40_Y24_N25
\i9|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i9|output\(1));

-- Location: LCFF_X40_Y24_N23
\i3|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|output\(1));

-- Location: LCFF_X39_Y24_N19
\i2|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|output\(1));

-- Location: LCCOMB_X37_Y24_N4
\i12|enable[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|enable[6]~3_combout\ = (!\i12|contador\(0) & (\i12|contador\(2) & (!\i12|contador\(3) & \i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datab => \i12|contador\(2),
	datac => \i12|contador\(3),
	datad => \i12|contador\(1),
	combout => \i12|enable[6]~3_combout\);

-- Location: LCFF_X37_Y24_N23
\i8|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i8|output\(1));

-- Location: LCFF_X38_Y24_N5
\i6|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(1),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|output\(1));

-- Location: LCCOMB_X38_Y24_N4
\i13|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux6~0_combout\ = (\i14|sel[0]~1_combout\ & ((\i5|output\(1)) # ((\i14|sel[1]~0_combout\)))) # (!\i14|sel[0]~1_combout\ & (((\i6|output\(1) & !\i14|sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|output\(1),
	datab => \i14|sel[0]~1_combout\,
	datac => \i6|output\(1),
	datad => \i14|sel[1]~0_combout\,
	combout => \i13|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y24_N22
\i13|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux6~1_combout\ = (\i14|sel[1]~0_combout\ & ((\i13|Mux6~0_combout\ & (\i7|output\(1))) # (!\i13|Mux6~0_combout\ & ((\i8|output\(1)))))) # (!\i14|sel[1]~0_combout\ & (((\i13|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i7|output\(1),
	datab => \i14|sel[1]~0_combout\,
	datac => \i8|output\(1),
	datad => \i13|Mux6~0_combout\,
	combout => \i13|Mux6~1_combout\);

-- Location: LCCOMB_X39_Y24_N18
\i13|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux6~2_combout\ = (\i13|Mux3~2_combout\ & (((\i13|Mux6~1_combout\)) # (!\i13|Mux3~1_combout\))) # (!\i13|Mux3~2_combout\ & (\i13|Mux3~1_combout\ & (\i2|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~2_combout\,
	datab => \i13|Mux3~1_combout\,
	datac => \i2|output\(1),
	datad => \i13|Mux6~1_combout\,
	combout => \i13|Mux6~2_combout\);

-- Location: LCCOMB_X40_Y24_N22
\i13|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux6~3_combout\ = (\i13|Mux3~0_combout\ & ((\i13|Mux6~2_combout\ & (\i4|output\(1))) # (!\i13|Mux6~2_combout\ & ((\i3|output\(1)))))) # (!\i13|Mux3~0_combout\ & (((\i13|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|output\(1),
	datab => \i13|Mux3~0_combout\,
	datac => \i3|output\(1),
	datad => \i13|Mux6~2_combout\,
	combout => \i13|Mux6~3_combout\);

-- Location: LCCOMB_X40_Y24_N24
\i13|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux6~4_combout\ = (\i15|Equal0~0_combout\ & (\i9|output\(1))) # (!\i15|Equal0~0_combout\ & ((\i13|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i15|Equal0~0_combout\,
	datac => \i9|output\(1),
	datad => \i13|Mux6~3_combout\,
	combout => \i13|Mux6~4_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[2]~I\ : cycloneii_io
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
	padio => ww_input(2),
	combout => \input~combout\(2));

-- Location: LCFF_X40_Y24_N5
\i9|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i9|output\(2));

-- Location: LCFF_X40_Y24_N11
\i3|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|output\(2));

-- Location: LCCOMB_X39_Y24_N20
\i13|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux3~2_combout\ = (!\i14|contador\(3) & ((\i14|contador\(2)) # ((\i14|contador\(1) & \i14|contador\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i13|Mux3~2_combout\);

-- Location: LCFF_X42_Y24_N9
\i2|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|output\(2));

-- Location: LCCOMB_X37_Y24_N26
\i12|enable[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|enable[3]~4_combout\ = (\i12|contador\(0) & (!\i12|contador\(2) & (!\i12|contador\(3) & \i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(0),
	datab => \i12|contador\(2),
	datac => \i12|contador\(3),
	datad => \i12|contador\(1),
	combout => \i12|enable[3]~4_combout\);

-- Location: LCFF_X43_Y24_N31
\i5|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|output\(2));

-- Location: LCFF_X42_Y24_N3
\i7|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i7|output\(2));

-- Location: LCFF_X38_Y24_N23
\i6|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(2),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|output\(2));

-- Location: LCCOMB_X38_Y24_N22
\i13|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux5~0_combout\ = (\i14|sel[1]~0_combout\ & ((\i8|output\(2)) # ((\i14|sel[0]~1_combout\)))) # (!\i14|sel[1]~0_combout\ & (((\i6|output\(2) & !\i14|sel[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i8|output\(2),
	datab => \i14|sel[1]~0_combout\,
	datac => \i6|output\(2),
	datad => \i14|sel[0]~1_combout\,
	combout => \i13|Mux5~0_combout\);

-- Location: LCCOMB_X42_Y24_N2
\i13|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux5~1_combout\ = (\i14|sel[0]~1_combout\ & ((\i13|Mux5~0_combout\ & ((\i7|output\(2)))) # (!\i13|Mux5~0_combout\ & (\i5|output\(2))))) # (!\i14|sel[0]~1_combout\ & (((\i13|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|sel[0]~1_combout\,
	datab => \i5|output\(2),
	datac => \i7|output\(2),
	datad => \i13|Mux5~0_combout\,
	combout => \i13|Mux5~1_combout\);

-- Location: LCCOMB_X42_Y24_N8
\i13|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux5~2_combout\ = (\i13|Mux3~1_combout\ & ((\i13|Mux3~2_combout\ & ((\i13|Mux5~1_combout\))) # (!\i13|Mux3~2_combout\ & (\i2|output\(2))))) # (!\i13|Mux3~1_combout\ & (\i13|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~1_combout\,
	datab => \i13|Mux3~2_combout\,
	datac => \i2|output\(2),
	datad => \i13|Mux5~1_combout\,
	combout => \i13|Mux5~2_combout\);

-- Location: LCCOMB_X40_Y24_N10
\i13|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux5~3_combout\ = (\i13|Mux3~0_combout\ & ((\i13|Mux5~2_combout\ & (\i4|output\(2))) # (!\i13|Mux5~2_combout\ & ((\i3|output\(2)))))) # (!\i13|Mux3~0_combout\ & (((\i13|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|output\(2),
	datab => \i13|Mux3~0_combout\,
	datac => \i3|output\(2),
	datad => \i13|Mux5~2_combout\,
	combout => \i13|Mux5~3_combout\);

-- Location: LCCOMB_X40_Y24_N4
\i13|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux5~4_combout\ = (\i15|Equal0~0_combout\ & (\i9|output\(2))) # (!\i15|Equal0~0_combout\ & ((\i13|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i15|Equal0~0_combout\,
	datac => \i9|output\(2),
	datad => \i13|Mux5~3_combout\,
	combout => \i13|Mux5~4_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[3]~I\ : cycloneii_io
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
	padio => ww_input(3),
	combout => \input~combout\(3));

-- Location: LCFF_X40_Y24_N13
\i9|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i9|output\(3));

-- Location: LCFF_X40_Y24_N7
\i3|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|output\(3));

-- Location: LCFF_X39_Y24_N25
\i2|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|output\(3));

-- Location: LCCOMB_X37_Y24_N12
\i8|output[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i8|output[3]~feeder_combout\ = \input~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(3),
	combout => \i8|output[3]~feeder_combout\);

-- Location: LCFF_X37_Y24_N13
\i8|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i8|output[3]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i8|output\(3));

-- Location: LCFF_X38_Y24_N27
\i7|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i7|output\(3));

-- Location: LCFF_X38_Y24_N13
\i6|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(3),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|output\(3));

-- Location: LCCOMB_X38_Y24_N12
\i13|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux4~0_combout\ = (\i14|sel[1]~0_combout\ & (((\i14|sel[0]~1_combout\)))) # (!\i14|sel[1]~0_combout\ & ((\i14|sel[0]~1_combout\ & (\i5|output\(3))) # (!\i14|sel[0]~1_combout\ & ((\i6|output\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|output\(3),
	datab => \i14|sel[1]~0_combout\,
	datac => \i6|output\(3),
	datad => \i14|sel[0]~1_combout\,
	combout => \i13|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y24_N26
\i13|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux4~1_combout\ = (\i14|sel[1]~0_combout\ & ((\i13|Mux4~0_combout\ & ((\i7|output\(3)))) # (!\i13|Mux4~0_combout\ & (\i8|output\(3))))) # (!\i14|sel[1]~0_combout\ & (((\i13|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|sel[1]~0_combout\,
	datab => \i8|output\(3),
	datac => \i7|output\(3),
	datad => \i13|Mux4~0_combout\,
	combout => \i13|Mux4~1_combout\);

-- Location: LCCOMB_X39_Y24_N24
\i13|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux4~2_combout\ = (\i13|Mux3~2_combout\ & (((\i13|Mux4~1_combout\)) # (!\i13|Mux3~1_combout\))) # (!\i13|Mux3~2_combout\ & (\i13|Mux3~1_combout\ & (\i2|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~2_combout\,
	datab => \i13|Mux3~1_combout\,
	datac => \i2|output\(3),
	datad => \i13|Mux4~1_combout\,
	combout => \i13|Mux4~2_combout\);

-- Location: LCCOMB_X40_Y24_N6
\i13|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux4~3_combout\ = (\i13|Mux3~0_combout\ & ((\i13|Mux4~2_combout\ & (\i4|output\(3))) # (!\i13|Mux4~2_combout\ & ((\i3|output\(3)))))) # (!\i13|Mux3~0_combout\ & (((\i13|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|output\(3),
	datab => \i13|Mux3~0_combout\,
	datac => \i3|output\(3),
	datad => \i13|Mux4~2_combout\,
	combout => \i13|Mux4~3_combout\);

-- Location: LCCOMB_X40_Y24_N12
\i13|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux4~4_combout\ = (\i15|Equal0~0_combout\ & (\i9|output\(3))) # (!\i15|Equal0~0_combout\ & ((\i13|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i15|Equal0~0_combout\,
	datac => \i9|output\(3),
	datad => \i13|Mux4~3_combout\,
	combout => \i13|Mux4~4_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[4]~I\ : cycloneii_io
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
	padio => ww_input(4),
	combout => \input~combout\(4));

-- Location: LCFF_X40_Y24_N9
\i9|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i9|output\(4));

-- Location: LCFF_X40_Y24_N19
\i3|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|output\(4));

-- Location: LCFF_X39_Y24_N11
\i2|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|output\(4));

-- Location: LCFF_X38_Y24_N11
\i7|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i7|output\(4));

-- Location: LCFF_X38_Y24_N29
\i6|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(4),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|output\(4));

-- Location: LCCOMB_X38_Y24_N28
\i13|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux3~3_combout\ = (\i14|sel[0]~1_combout\ & (((\i14|sel[1]~0_combout\)))) # (!\i14|sel[0]~1_combout\ & ((\i14|sel[1]~0_combout\ & (\i8|output\(4))) # (!\i14|sel[1]~0_combout\ & ((\i6|output\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i8|output\(4),
	datab => \i14|sel[0]~1_combout\,
	datac => \i6|output\(4),
	datad => \i14|sel[1]~0_combout\,
	combout => \i13|Mux3~3_combout\);

-- Location: LCCOMB_X38_Y24_N10
\i13|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux3~4_combout\ = (\i14|sel[0]~1_combout\ & ((\i13|Mux3~3_combout\ & ((\i7|output\(4)))) # (!\i13|Mux3~3_combout\ & (\i5|output\(4))))) # (!\i14|sel[0]~1_combout\ & (((\i13|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|output\(4),
	datab => \i14|sel[0]~1_combout\,
	datac => \i7|output\(4),
	datad => \i13|Mux3~3_combout\,
	combout => \i13|Mux3~4_combout\);

-- Location: LCCOMB_X39_Y24_N10
\i13|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux3~5_combout\ = (\i13|Mux3~2_combout\ & (((\i13|Mux3~4_combout\)) # (!\i13|Mux3~1_combout\))) # (!\i13|Mux3~2_combout\ & (\i13|Mux3~1_combout\ & (\i2|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~2_combout\,
	datab => \i13|Mux3~1_combout\,
	datac => \i2|output\(4),
	datad => \i13|Mux3~4_combout\,
	combout => \i13|Mux3~5_combout\);

-- Location: LCCOMB_X40_Y24_N18
\i13|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux3~6_combout\ = (\i13|Mux3~0_combout\ & ((\i13|Mux3~5_combout\ & (\i4|output\(4))) # (!\i13|Mux3~5_combout\ & ((\i3|output\(4)))))) # (!\i13|Mux3~0_combout\ & (((\i13|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|output\(4),
	datab => \i13|Mux3~0_combout\,
	datac => \i3|output\(4),
	datad => \i13|Mux3~5_combout\,
	combout => \i13|Mux3~6_combout\);

-- Location: LCCOMB_X40_Y24_N8
\i13|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux3~7_combout\ = (\i15|Equal0~0_combout\ & (\i9|output\(4))) # (!\i15|Equal0~0_combout\ & ((\i13|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i15|Equal0~0_combout\,
	datac => \i9|output\(4),
	datad => \i13|Mux3~6_combout\,
	combout => \i13|Mux3~7_combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[5]~I\ : cycloneii_io
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
	padio => ww_input(5),
	combout => \input~combout\(5));

-- Location: LCFF_X40_Y24_N1
\i9|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i9|output\(5));

-- Location: LCFF_X40_Y24_N31
\i3|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|output\(5));

-- Location: LCFF_X39_Y24_N17
\i2|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|output\(5));

-- Location: LCFF_X37_Y24_N9
\i8|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i8|output\(5));

-- Location: LCFF_X38_Y24_N25
\i6|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(5),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|output\(5));

-- Location: LCCOMB_X38_Y24_N24
\i13|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux2~0_combout\ = (\i14|sel[1]~0_combout\ & (((\i14|sel[0]~1_combout\)))) # (!\i14|sel[1]~0_combout\ & ((\i14|sel[0]~1_combout\ & (\i5|output\(5))) # (!\i14|sel[0]~1_combout\ & ((\i6|output\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|output\(5),
	datab => \i14|sel[1]~0_combout\,
	datac => \i6|output\(5),
	datad => \i14|sel[0]~1_combout\,
	combout => \i13|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y24_N8
\i13|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux2~1_combout\ = (\i14|sel[1]~0_combout\ & ((\i13|Mux2~0_combout\ & (\i7|output\(5))) # (!\i13|Mux2~0_combout\ & ((\i8|output\(5)))))) # (!\i14|sel[1]~0_combout\ & (((\i13|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i7|output\(5),
	datab => \i14|sel[1]~0_combout\,
	datac => \i8|output\(5),
	datad => \i13|Mux2~0_combout\,
	combout => \i13|Mux2~1_combout\);

-- Location: LCCOMB_X39_Y24_N16
\i13|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux2~2_combout\ = (\i13|Mux3~2_combout\ & (((\i13|Mux2~1_combout\)) # (!\i13|Mux3~1_combout\))) # (!\i13|Mux3~2_combout\ & (\i13|Mux3~1_combout\ & (\i2|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~2_combout\,
	datab => \i13|Mux3~1_combout\,
	datac => \i2|output\(5),
	datad => \i13|Mux2~1_combout\,
	combout => \i13|Mux2~2_combout\);

-- Location: LCCOMB_X40_Y24_N30
\i13|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux2~3_combout\ = (\i13|Mux3~0_combout\ & ((\i13|Mux2~2_combout\ & (\i4|output\(5))) # (!\i13|Mux2~2_combout\ & ((\i3|output\(5)))))) # (!\i13|Mux3~0_combout\ & (((\i13|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|output\(5),
	datab => \i13|Mux3~0_combout\,
	datac => \i3|output\(5),
	datad => \i13|Mux2~2_combout\,
	combout => \i13|Mux2~3_combout\);

-- Location: LCCOMB_X40_Y24_N0
\i13|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux2~4_combout\ = (\i15|Equal0~0_combout\ & (\i9|output\(5))) # (!\i15|Equal0~0_combout\ & ((\i13|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i15|Equal0~0_combout\,
	datac => \i9|output\(5),
	datad => \i13|Mux2~3_combout\,
	combout => \i13|Mux2~4_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[6]~I\ : cycloneii_io
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
	padio => ww_input(6),
	combout => \input~combout\(6));

-- Location: LCFF_X40_Y24_N29
\i9|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i9|output\(6));

-- Location: LCFF_X40_Y24_N27
\i3|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|output\(6));

-- Location: LCFF_X39_Y24_N3
\i2|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|output\(6));

-- Location: LCFF_X38_Y24_N9
\i7|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i7|output\(6));

-- Location: LCFF_X38_Y24_N3
\i6|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(6),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|output\(6));

-- Location: LCCOMB_X38_Y24_N2
\i13|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux1~0_combout\ = (\i14|sel[1]~0_combout\ & ((\i8|output\(6)) # ((\i14|sel[0]~1_combout\)))) # (!\i14|sel[1]~0_combout\ & (((\i6|output\(6) & !\i14|sel[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i8|output\(6),
	datab => \i14|sel[1]~0_combout\,
	datac => \i6|output\(6),
	datad => \i14|sel[0]~1_combout\,
	combout => \i13|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y24_N8
\i13|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux1~1_combout\ = (\i14|sel[0]~1_combout\ & ((\i13|Mux1~0_combout\ & ((\i7|output\(6)))) # (!\i13|Mux1~0_combout\ & (\i5|output\(6))))) # (!\i14|sel[0]~1_combout\ & (((\i13|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|output\(6),
	datab => \i14|sel[0]~1_combout\,
	datac => \i7|output\(6),
	datad => \i13|Mux1~0_combout\,
	combout => \i13|Mux1~1_combout\);

-- Location: LCCOMB_X39_Y24_N2
\i13|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux1~2_combout\ = (\i13|Mux3~2_combout\ & (((\i13|Mux1~1_combout\)) # (!\i13|Mux3~1_combout\))) # (!\i13|Mux3~2_combout\ & (\i13|Mux3~1_combout\ & (\i2|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~2_combout\,
	datab => \i13|Mux3~1_combout\,
	datac => \i2|output\(6),
	datad => \i13|Mux1~1_combout\,
	combout => \i13|Mux1~2_combout\);

-- Location: LCCOMB_X40_Y24_N26
\i13|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux1~3_combout\ = (\i13|Mux3~0_combout\ & ((\i13|Mux1~2_combout\ & (\i4|output\(6))) # (!\i13|Mux1~2_combout\ & ((\i3|output\(6)))))) # (!\i13|Mux3~0_combout\ & (((\i13|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|output\(6),
	datab => \i13|Mux3~0_combout\,
	datac => \i3|output\(6),
	datad => \i13|Mux1~2_combout\,
	combout => \i13|Mux1~3_combout\);

-- Location: LCCOMB_X40_Y24_N28
\i13|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux1~4_combout\ = (\i15|Equal0~0_combout\ & (\i9|output\(6))) # (!\i15|Equal0~0_combout\ & ((\i13|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i15|Equal0~0_combout\,
	datac => \i9|output\(6),
	datad => \i13|Mux1~3_combout\,
	combout => \i13|Mux1~4_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input[7]~I\ : cycloneii_io
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
	padio => ww_input(7),
	combout => \input~combout\(7));

-- Location: LCFF_X40_Y24_N21
\i9|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(7),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i9|output\(7));

-- Location: LCCOMB_X43_Y24_N24
\i4|output[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|output[7]~feeder_combout\ = \input~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(7),
	combout => \i4|output[7]~feeder_combout\);

-- Location: LCCOMB_X37_Y23_N6
\i12|enable[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i12|enable[2]~2_combout\ = (!\i12|contador\(3) & (!\i12|contador\(2) & (!\i12|contador\(0) & \i12|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i12|contador\(3),
	datab => \i12|contador\(2),
	datac => \i12|contador\(0),
	datad => \i12|contador\(1),
	combout => \i12|enable[2]~2_combout\);

-- Location: LCFF_X43_Y24_N25
\i4|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|output[7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|output\(7));

-- Location: LCFF_X40_Y24_N3
\i3|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(7),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i3|output\(7));

-- Location: LCFF_X39_Y24_N13
\i2|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(7),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|output\(7));

-- Location: LCFF_X38_Y24_N17
\i7|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(7),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i7|output\(7));

-- Location: LCFF_X38_Y24_N7
\i6|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \input~combout\(7),
	aclr => \ALT_INV_reset_n~combout\,
	sload => VCC,
	ena => \i12|enable[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i6|output\(7));

-- Location: LCCOMB_X43_Y24_N26
\i5|output[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|output[7]~feeder_combout\ = \input~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input~combout\(7),
	combout => \i5|output[7]~feeder_combout\);

-- Location: LCFF_X43_Y24_N27
\i5|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|output[7]~feeder_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	ena => \i12|enable[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|output\(7));

-- Location: LCCOMB_X38_Y24_N6
\i13|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux0~0_combout\ = (\i14|sel[1]~0_combout\ & (\i14|sel[0]~1_combout\)) # (!\i14|sel[1]~0_combout\ & ((\i14|sel[0]~1_combout\ & ((\i5|output\(7)))) # (!\i14|sel[0]~1_combout\ & (\i6|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|sel[1]~0_combout\,
	datab => \i14|sel[0]~1_combout\,
	datac => \i6|output\(7),
	datad => \i5|output\(7),
	combout => \i13|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y24_N16
\i13|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux0~1_combout\ = (\i14|sel[1]~0_combout\ & ((\i13|Mux0~0_combout\ & ((\i7|output\(7)))) # (!\i13|Mux0~0_combout\ & (\i8|output\(7))))) # (!\i14|sel[1]~0_combout\ & (((\i13|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i8|output\(7),
	datab => \i14|sel[1]~0_combout\,
	datac => \i7|output\(7),
	datad => \i13|Mux0~0_combout\,
	combout => \i13|Mux0~1_combout\);

-- Location: LCCOMB_X39_Y24_N12
\i13|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux0~2_combout\ = (\i13|Mux3~2_combout\ & (((\i13|Mux0~1_combout\)) # (!\i13|Mux3~1_combout\))) # (!\i13|Mux3~2_combout\ & (\i13|Mux3~1_combout\ & (\i2|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~2_combout\,
	datab => \i13|Mux3~1_combout\,
	datac => \i2|output\(7),
	datad => \i13|Mux0~1_combout\,
	combout => \i13|Mux0~2_combout\);

-- Location: LCCOMB_X40_Y24_N2
\i13|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux0~3_combout\ = (\i13|Mux3~0_combout\ & ((\i13|Mux0~2_combout\ & (\i4|output\(7))) # (!\i13|Mux0~2_combout\ & ((\i3|output\(7)))))) # (!\i13|Mux3~0_combout\ & (((\i13|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i13|Mux3~0_combout\,
	datab => \i4|output\(7),
	datac => \i3|output\(7),
	datad => \i13|Mux0~2_combout\,
	combout => \i13|Mux0~3_combout\);

-- Location: LCCOMB_X40_Y24_N20
\i13|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i13|Mux0~4_combout\ = (\i15|Equal0~0_combout\ & (\i9|output\(7))) # (!\i15|Equal0~0_combout\ & ((\i13|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i15|Equal0~0_combout\,
	datac => \i9|output\(7),
	datad => \i13|Mux0~3_combout\,
	combout => \i13|Mux0~4_combout\);

-- Location: M4K_X41_Y24
\i11|memoria_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D0211500600484502018029001",
	mem_init0 => X"54120A01010181000AA85050100A0515068206050102848541088006C032200010060A8545202A8380C0C8A060103828381401000C00000521110011048446611084540154330A01910FC018088DD11718CBFC21C622FF0019C40CE801E0003291F00331106622DF106180B3C05F888CF007E2A3CC45DE60E0148049030440052004200223E445FE22F0004F88B74446222FC1077088C081FE44002200004004400040055007F80208005000404764A65DDBAAA035510200C002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFE0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Practica3.ram0_AsciiA16Seg_c28836d7.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "AsciiA16Seg:i11|altsyncram:memoria_rtl_0|altsyncram_n771:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 17,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 17,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 17,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \i11|memoria_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X39_Y26_N10
\i15|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i15|Equal1~0_combout\ = (!\i14|contador\(3) & (\i14|contador\(1) & (\i14|contador\(0) & \i14|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i15|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y26_N24
\i15|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i15|Equal2~0_combout\ = (!\i14|contador\(3) & (\i14|contador\(1) & (!\i14|contador\(0) & \i14|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i15|Equal2~0_combout\);

-- Location: LCCOMB_X39_Y26_N18
\i15|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i15|Equal3~0_combout\ = (!\i14|contador\(3) & (!\i14|contador\(1) & (\i14|contador\(0) & \i14|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i15|Equal3~0_combout\);

-- Location: LCCOMB_X39_Y26_N4
\i15|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i15|Equal4~0_combout\ = (!\i14|contador\(3) & (!\i14|contador\(1) & (!\i14|contador\(0) & \i14|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i15|Equal4~0_combout\);

-- Location: LCCOMB_X39_Y26_N26
\i15|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i15|Equal5~0_combout\ = (!\i14|contador\(3) & (\i14|contador\(1) & (\i14|contador\(0) & !\i14|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i15|Equal5~0_combout\);

-- Location: LCCOMB_X39_Y26_N0
\i15|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i15|Equal6~0_combout\ = (!\i14|contador\(3) & (\i14|contador\(1) & (!\i14|contador\(0) & !\i14|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i15|Equal6~0_combout\);

-- Location: LCCOMB_X39_Y26_N2
\i15|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i15|Equal7~0_combout\ = (!\i14|contador\(3) & (!\i14|contador\(1) & (\i14|contador\(0) & !\i14|contador\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i14|contador\(3),
	datab => \i14|contador\(1),
	datac => \i14|contador\(0),
	datad => \i14|contador\(2),
	combout => \i15|Equal7~0_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(0));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(1));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(2));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(3));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(4));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(5));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(6));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(7));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[8]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(8));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[9]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(9));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[10]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(10));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[11]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(11));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[12]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(12));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[13]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(13));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[14]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(14));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[15]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(15));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\datos[16]~I\ : cycloneii_io
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
	datain => \i11|memoria_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_datos(16));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bits[0]~I\ : cycloneii_io
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
	datain => \i15|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bits(0));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bits[1]~I\ : cycloneii_io
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
	datain => \i15|ALT_INV_Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bits(1));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bits[2]~I\ : cycloneii_io
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
	datain => \i15|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bits(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bits[3]~I\ : cycloneii_io
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
	datain => \i15|ALT_INV_Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bits(3));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bits[4]~I\ : cycloneii_io
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
	datain => \i15|ALT_INV_Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bits(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bits[5]~I\ : cycloneii_io
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
	datain => \i15|ALT_INV_Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bits(5));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bits[6]~I\ : cycloneii_io
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
	datain => \i15|ALT_INV_Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bits(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bits[7]~I\ : cycloneii_io
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
	datain => \i15|ALT_INV_Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bits(7));
END structure;


