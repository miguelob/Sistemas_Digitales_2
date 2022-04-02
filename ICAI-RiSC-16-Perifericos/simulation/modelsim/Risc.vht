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
-- Generated on "03/25/2019 08:51:17"
                                                            
-- Vhdl Test Bench template for design  :  Risk
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Risc_vhd_tst IS
END Risc_vhd_tst;
ARCHITECTURE Risc_arch OF Risc_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC:='0';
SIGNAL reset_n : STD_LOGIC;
signal switches: std_logic_vector(9 downto 0);
signal 	display : std_logic_vector (15 downto 0);
COMPONENT Risc
	PORT (
	clk : IN STD_LOGIC;
	reset_n : IN STD_LOGIC;
	switches: in std_logic_vector(9 downto 0);
	display : out std_logic_vector (15 downto 0)
	);
END COMPONENT;
BEGIN
	i1 : Risc
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset_n => reset_n,
	switches => switches,
	display => display
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
    reset_n<= '0';
	switches <= "0000000000";
	wait for 5000 ns;
	reset_n<= '1';
	wait for 10000 ns;
	switches <= "0000000001";
	wait for 10000 ns;
	switches <= "0000000011";
	wait for 10000 ns;
	switches <= "0000000100";
	wait for 10000 ns;
	switches <= "0000000101";
	wait for 10000 ns;
	
	assert false
		report "Fin de simulacion"
		severity failure;
	
END PROCESS always;                                          
END Risc_arch;
