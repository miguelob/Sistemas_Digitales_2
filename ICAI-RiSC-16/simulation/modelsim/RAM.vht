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
-- Generated on "03/30/2019 13:33:48"
                                                            
-- Vhdl Test Bench template for design  :  RAM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_vhd_tst IS
END RAM_vhd_tst;
ARCHITECTURE RAM_arch OF RAM_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC:='0';
SIGNAL din : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dout : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rd : STD_LOGIC;
SIGNAL wr : STD_LOGIC;
COMPONENT RAM
	PORT (
	addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rd : IN STD_LOGIC;
	wr : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	din => din,
	dout => dout,
	rd => rd,
	wr => wr
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
    addr <= "0000000000000000";
	wr <= '0';
	rd <= '0';
	din <= "0000000000000001";
	wait for 20 ns;
	wr <= '1';
	wait for 20 ns;
	wr <= '0';
	wait for 20 ns;
	rd <= '1';
	wait for 10 ns;
	rd <= '0';
	wait for 40 ns;
	
	assert false
		report "Fin de la simulacion"
		severity failure;
END PROCESS always;                                          
END RAM_arch;
