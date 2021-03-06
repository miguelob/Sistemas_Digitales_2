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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/04/2019 08:23:07"
                                                            
-- Vhdl Test Bench template for design  :  RegParSer
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegParSer_vhd_tst IS
END RegParSer_vhd_tst;
ARCHITECTURE RegParSer_arch OF RegParSer_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL load : STD_LOGIC;
SIGNAL clk : STD_LOGIC:='0';
SIGNAL e_p : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL final : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL s_s : STD_LOGIC;
COMPONENT RegParSer
	PORT (
	load : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	e_p : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	enable : IN STD_LOGIC;
	final : OUT STD_LOGIC;
	reset_n : IN STD_LOGIC;
	s_s : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RegParSer
	PORT MAP (
-- list connections between master ports and signals
	load => load,
	clk => clk,
	e_p => e_p,
	enable => enable,
	final => final,
	reset_n => reset_n,
	s_s => s_s
	);
	clk <= not clk after 10 ns;
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
	procedure ActEnable(
	signal enable :out std_logic) is
	begin
		for i in 0 to 7 loop
			enable <= '1';
			wait for 20 ns;
			enable <= '0';
			wait for 100 ns;
		end loop;
	end procedure ActEnable;
BEGIN                                                         
		load<='0';
			reset_n<= '0';
	enable <= '0';
	wait for 100 ns;
	reset_n <= '1';
	load <='1';
	e_p <= "10101010";
	wait for 10 ns;
	load <= '0';
	wait for 10 ns;
	wait for 100 ns;

	ActEnable(enable);
	
	assert false
		report "Fin de la simulacion"
		severity failure;
END PROCESS always;                                          
END RegParSer_arch;
