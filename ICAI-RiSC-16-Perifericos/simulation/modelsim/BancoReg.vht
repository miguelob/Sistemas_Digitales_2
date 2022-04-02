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
-- Generated on "03/20/2019 18:49:56"
                                                            
-- Vhdl Test Bench template for design  :  BancoReg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BancoReg_vhd_tst IS
END BancoReg_vhd_tst;
ARCHITECTURE BancoReg_arch OF BancoReg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC:='0';
SIGNAL DatoEsc : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DirA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL DirB : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL DirEsc : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL en_banco : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
COMPONENT BancoReg
	PORT (
	A : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	DatoEsc : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DirA : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	DirB : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	DirEsc : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	en_banco : IN STD_LOGIC;
	reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BancoReg
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	clk => clk,
	DatoEsc => DatoEsc,
	DirA => DirA,
	DirB => DirB,
	DirEsc => DirEsc,
	en_banco => en_banco,
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
	en_banco <= '0';
	DirEsc <= "000";
	DatoEsc <= "0000000000000000";
	wait for 20 ns;
	DirA <= "000";
	DirB <= "000";
	reset_n <= '1';
	wait for 20 ns;
	en_banco <= '1';
	DirEsc <= "000";
	DatoEsc <= "0000000000000000";
	wait for 20 ns;
	en_banco <= '1';
	DirEsc <= "001";
	DatoEsc <= "0000000000000001";
	wait for 20 ns;
	en_banco <= '1';
	DirEsc <= "010";
	DatoEsc <= "0000000000000010";
	wait for 40 ns;
	en_banco <= '1';
	DirEsc <= "011";
	DatoEsc <= "0000000000000011";
	wait for 40 ns;
	en_banco <= '0';
	DirA <= "001";
	DirB <= "001";
	wait for 40 ns;
	DirA <= "010";
	DirB <= "010";
	wait for 40 ns;
	DirA <= "011";
	DirB <= "011";
	wait for 40 ns;
	
	assert false
		report "Fin de la simulacion"
		severity failure;
	
	
END PROCESS always;                                          
END BancoReg_arch;
