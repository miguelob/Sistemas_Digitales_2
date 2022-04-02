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

ENTITY Risk_vhd_tst IS
END Risk_vhd_tst;
ARCHITECTURE Risk_arch OF Risk_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC:='0';
SIGNAL reset_n : STD_LOGIC;
COMPONENT Risk
	PORT (
	clk : IN STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Risk
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset_n => reset_n
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
	wait for 20 ns;
	reset_n<= '1';
	wait for 20 ns;
	
	wait for 1 ms;
	
	assert false
		report "Fin de simulacion"
		severity failure;
	
END PROCESS always;                                          
END Risk_arch;
