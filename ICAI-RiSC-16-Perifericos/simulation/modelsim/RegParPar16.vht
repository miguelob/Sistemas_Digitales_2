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
-- Generated on "03/20/2019 20:07:44"
                                                            
-- Vhdl Test Bench template for design  :  RegParPar16
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegParPar16_vhd_tst IS
END RegParPar16_vhd_tst;
ARCHITECTURE RegParPar16_arch OF RegParPar16_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC:='0';
SIGNAL enable : STD_LOGIC;
SIGNAL entrada : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
SIGNAL salida : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT RegParPar16
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	entrada : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset_n : IN STD_LOGIC;
	salida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RegParPar16
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	entrada => entrada,
	reset_n => reset_n,
	salida => salida
	);
	clk <= not clk after 10 ns;
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
    reset_n <= '0';
	entrada <= "0000000000000000";
	enable <= '0';
	wait for 20 ns;
	reset_n <= '1';
	entrada <= "0000000000000001";
	wait for 40 ns;
	enable <= '1';
	wait for 40 ns;
	enable <= '0';
	wait for 40 ns;
	
	assert false
		report "Fin de la simulacion"
		severity failure;
END PROCESS always;                                          
END RegParPar16_arch;
