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
-- Generated on "02/11/2019 16:41:13"
                                                            
-- Vhdl Test Bench template for design  :  ControlReg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ControlReg_vhd_tst IS
END ControlReg_vhd_tst;
ARCHITECTURE ControlReg_arch OF ControlReg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL boton : STD_LOGIC;
SIGNAL clk : STD_LOGIC:='0';
SIGNAL enable : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL fin : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
COMPONENT ControlReg
	PORT (
	boton : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	enable : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	fin : OUT STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ControlReg
	PORT MAP (
-- list connections between master ports and signals
	boton => boton,
	clk => clk,
	enable => enable,
	fin => fin,
	reset_n => reset_n
	);
	clk <=not clk after 10 ns;
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
	wait for 1 ns;
	reset_n <= '1';
	wait for 10 ns;
	
	for i in 0 to 7 loop
		boton <= '1';
		wait for 20 ns;
		boton <= '0';
		wait for 30 ns;
	end loop;
	
END PROCESS always;                                          
END ControlReg_arch;
