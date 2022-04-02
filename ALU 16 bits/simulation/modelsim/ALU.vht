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
-- Generated on "03/05/2019 17:43:09"
                                                            
-- Vhdl Test Bench template for design  :  ALU
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;                               

ENTITY ALU_vhd_tst IS
END ALU_vhd_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL co : STD_LOGIC;
SIGNAL op_alu : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ov : STD_LOGIC;
SIGNAL res : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL z : STD_LOGIC;
COMPONENT ALU
	PORT (
	a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	co : OUT STD_LOGIC;
	op_alu : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ov : OUT STD_LOGIC;
	res : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	co => co,
	op_alu => op_alu,
	ov => ov,
	res => res,
	z => z
	);
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
   for i in 0 to 8 loop
	op_alu <= std_logic_vector(to_unsigned(i,4));
	for j in 0 to 31 loop
		a <= std_logic_vector(to_unsigned(j,5));
		for k in 0 to 31 loop
			b<=std_logic_vector(to_unsigned(k,5));
			wait for 10 ps;
			if op_alu = "0000" then
				assert res = std_logic_vector(to_unsigned(j+k,5))
					report "Fallo en la suma"
					severity failure;
				if res = "00000" then
					assert z = '1'
						report "Fallo en la salida z (suma)"
						severity failure;
				end if;					
			end if;
			if op_alu = "0001" then
				assert res = std_logic_vector(to_signed(j-k,5))
					report "Fallo en la resta"
					severity failure;
				if res = "00000" then
					assert z = '1'
						report "Fallo en la salida z (resta)"
						severity failure;
				end if;	
			end if;
			if op_alu = "0010" then
				assert res = std_logic_vector(to_signed(j*k,5))
					report "Fallo en la multiplicacion con signo"
					severity failure;
				assert co = '0'
					report "Fallo en la salica co (multiplicacion con signo)"
					severity failure;
				if res = "00000" then
					assert z = '1'
						report "Fallo en la salida z (multiplicacion con signo)"
						severity failure;
				end if;
				if signed(res)<-32 OR signed(res)>31 then
					assert ov = '1' 
						report "Fallo en la salida ov (multiplicacion con signo)"
						severity failure;
				end if;
			end if;
			if op_alu = "0011" then
				assert res = std_logic_vector(to_unsigned(j*k,5))
					report "Fallo en la multiplicacion sin signo"
					severity failure;
				assert co = '0'
					report "Fallo en la salica co (multiplicacion sin signo)"
					severity failure;
				if res = "00000" then
					assert z = '1'
						report "Fallo en la salida z (multiplicacion sin signo)"
						severity failure;
				end if;
				if unsigned(res)<0 OR unsigned(res)>31 then
					assert ov = '1' 
						report "Fallo en la salida ov (multiplicacion sin signo)"
						severity failure;
				end if;
			end if;
			if op_alu = "0100" then
					assert res = (a nand b)
						report "Fallo en la NAND"
						severity failure;
					assert ov = '0'
						report "Fallo en la salida ov (nand)"
						severity failure;
					assert co = '0'
						report "Fallo en la salida co (nand)"
						severity failure;
					if res = "00000" then
						assert z = '1'
							report "Fallo en la salida z (nand)"
							severity failure;
					else 
						assert z = '0'
							report "Fallo en la salida z (nand)"
							severity failure;
					end if;
			end if;
			if op_alu = "0101" then
					assert res = (a(3 downto 0) & '0')
						report "Fallo en el desplazamiento a la izda"
						severity failure;
					assert co = '0'
						report "Fallo en la salida co (desp izda)"
						severity failure;
					assert ov = '0'
						report "fallo en la salida ov (desp izda)"
						severity failure;
					if res = "00000" then
						assert z = '1'
							report "Fallo en la salida z (desp izda)"
							severity failure;
					else
						assert z = '0'
							report "Fallo en la salida z (desp izda)"
							severity failure;
					end if;
			end if;
			if op_alu = "0110" then
					assert res = (a(4) & a(4 downto 1))
						report "Fallo en el desplazamiento aritmetico a la derecha"
						severity failure;
					assert co = '0'
						report "Fallo en la salida co (desp derecha arit)"
						severity failure;
					assert ov = '0'
						report "fallo en la salida ov (desp derecha arit)"
						severity failure;
					if res = "00000" then
						assert z = '1'
							report "Fallo en la salida z (desp derecha arit)"
							severity failure;
					else
						assert z = '0'
							report "Fallo en la salida z (desp derecha arit)"
							severity failure;
					end if;
			end if;
			if op_alu = "0111" then
					assert res = ('0' & a(4 downto 1))
						report "Fallo en el desplazamiento logico a la derecha"
						severity failure;
					assert co = '0'
						report "Fallo en la salida co (desp derecha logic)"
						severity failure;
					assert ov = '0'
						report "fallo en la salida ov (desp derecha logic)"
						severity failure;
					if res = "00000" then
						assert z = '1'
							report "Fallo en la salida z (desp derecha logic)"
							severity failure;
					else
						assert z = '0'
							report "Fallo en la salida z (desp derecha logic)"
							severity failure;
					end if;
			end if;
			if op_alu = "1000" then
				if a < b then
					assert res = std_logic_vector(to_unsigned(1,5))
						report "Fallo en a<b"
						severity failure;
					assert z = '0'
						report "Fallo en la salida z (a<b)"
						severity failure;
				else
					assert res = "00000"
						report "Fallo en la a<b"
						severity failure;
					assert z = '1'
						report "Fallo en la salida z (a<b)"
						severity failure;
				end if;
				assert co = '0'
					report "Fallo en la salida co (a<b)"
					severity failure;
				assert ov = '0'
					report "Fallo en la salida ov (a<b)"
					severity failure;
			end if;
		end loop;
	end loop;
end loop;

assert false
	report "Fin de la simulacion"
	severity failure;
	
END PROCESS always;                                          
END ALU_arch;
