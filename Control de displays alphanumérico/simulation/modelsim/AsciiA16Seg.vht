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
-- Generated on "02/11/2019 17:27:56"
                                                            
-- Vhdl Test Bench template for design  :  AsciiA16Seg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AsciiA16Seg_vhd_tst IS
END AsciiA16Seg_vhd_tst;
ARCHITECTURE AsciiA16Seg_arch OF AsciiA16Seg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC :='0';
SIGNAL e : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(16 DOWNTO 0);
COMPONENT AsciiA16Seg
	PORT (
	clk : IN STD_LOGIC;
	e : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	s : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : AsciiA16Seg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	e => e,
	s => s
	);
	clk<= not clk after 10 ns;
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
   



  e<="10010100";
	wait for 40 ns;
	e<="00100010";
	wait for 40 ns;
	assert false
	report "Fin simulacion"
	severity failure;

	-- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END AsciiA16Seg_arch;
