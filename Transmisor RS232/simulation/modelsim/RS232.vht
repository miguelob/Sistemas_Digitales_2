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
-- Generated on "01/29/2019 18:51:03"
                                                            
-- Vhdl Test Bench template for design  :  RS232
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;  
use ieee.numeric_std.all;                              

ENTITY RS232_vhd_tst IS
END RS232_vhd_tst;
ARCHITECTURE RS232_arch OF RS232_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL boton : STD_LOGIC;
SIGNAL clk : STD_LOGIC:='0';
SIGNAL datos : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL output : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
COMPONENT RS232
	PORT (
	boton : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	datos : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	output : OUT STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RS232
	PORT MAP (
-- list connections between master ports and signals
	boton => boton,
	clk => clk,
	datos => datos,
	output => output,
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
		reset_n <= '0';
		wait for 20 ns;
		reset_n <= '1';
		wait for 20 ns;
		
   for i in 0 to 255 loop
		datos <= std_logic_vector(to_unsigned(i,8));
		boton <= '1';
		wait for 100 ns;
		reset_n <= '1';
		wait for 100 ns;
		boton <= '0';
		wait for 100 ns;
		boton <= '1';
		wait for 100 ns;
		wait for  1 ms;
	end loop;
		assert false
			report "Fin de la simulacion"
			severity failure;
		
END PROCESS always;                                          
END RS232_arch;
