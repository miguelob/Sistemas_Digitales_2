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
-- Generated on "02/11/2019 17:04:18"
                                                            
-- Vhdl Test Bench template for design  :  Top
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;                                

ENTITY Top_vhd_tst IS
END Top_vhd_tst;
ARCHITECTURE Top_arch OF Top_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bits : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL boton : STD_LOGIC;
SIGNAL clk : STD_LOGIC:='0';
SIGNAL datos : STD_LOGIC_VECTOR(16 DOWNTO 0);
SIGNAL input : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
COMPONENT Top
	PORT (
	bits : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	boton : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	datos : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
	input : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Top
	PORT MAP (
-- list connections between master ports and signals
	bits => bits,
	boton => boton,
	clk => clk,
	datos => datos,
	input => input,
	reset_n => reset_n
	);
	clk<=not clk after 10 ns;
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
		wait for 20 ns;
	reset_n <= '1';
	wait for 10 ns;
	for j in 0 to 2 loop
		for i in 0 to 7 loop
			input <=std_logic_vector(to_unsigned(i,8));
			wait for 10 ns;
			boton <= '1';
			wait for 20 ns;
			boton <= '0';
			wait for 30 ns;
		end loop;
		wait for 15 ms;
	end loop;
	assert false;
		report "Fin de la simulacion"
		severity failure;
	
END PROCESS always;                                          
END Top_arch;
