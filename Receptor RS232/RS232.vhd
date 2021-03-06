library ieee;
use ieee.std_logic_1164.all;

entity RS232 is
	port(
		clk			:	in	std_logic;
		reset_n		:	in	std_logic;
		datos		:	in	std_logic;
		paridad_out	:	out	std_logic;
		framing		:	out	std_logic;
		salida		:	out	std_logic_vector(10 downto 0));
end RS232;

architecture structural of RS232 is
--señales internas
 signal en_r_i	:	std_logic;
 signal	fin_i	:	std_logic;
 signal en_cnt_c_i	:	std_logic;
 signal	en_cnt_m_i	:	std_logic;
 signal s_p_i	:	std_logic_vector(10 downto 0);
 signal temp_c_i	:	std_logic;
 signal temp_m_i	:	std_logic;
	--componentes 
	component Paridad
		port(
			clk		:	in std_logic;
			reset_n	:  in std_logic;
			led		:	out std_logic;
			enable	:	in	std_logic;
			datos	:	in	std_logic);
	end component;
	
	component RegSerPar
		port(
			clk		:	in	std_logic;
			reset_n	:	in std_logic;
			enable	:	in	std_logic;
			e_s		:	in	std_logic;
			s_p		:	out	std_logic_vector(10 downto 0);
			s_stop	: out std_logic);
	end component;
	
	component Control
		port(
			clk			: in std_logic;
			reset_n		: in std_logic;
			temp_c		:in std_logic;
			temp_m		:in std_logic;
			datos 		:in std_logic;
			error		:out std_logic;
			en_r		:out std_logic;
			en_cnt_c	:out std_logic;
			en_cnt_m 	:out std_logic;
			fin			:in std_logic;
			s_p			:in std_logic_vector (10 downto 0));
	end component;
	
	component TemporizadorM
		port(
			clk		: in std_logic;
			reset_n	: in std_logic;
			en_cnt 	: in std_logic;
			co		:  out std_logic);
	end component;
	
	component TemporizadorC
		port(
			clk		: in std_logic;
			reset_n	: in std_logic;
			en_cnt 	: in std_logic;
			co		:  out std_logic);
	end component;
	
begin --behavioral
	--Instancio todos los componentes
	i1	:	RegSerPar
		port map(
			clk		=>	clk,
			reset_n	=> reset_n,
			enable	=> en_r_i,
			e_s		=> datos,
			s_p		=> s_p_i,
			s_stop	=> fin_i);
			
	i2	:	Paridad
		port map(
			clk		=> clk,
			reset_n	=> reset_n,
			led		=> paridad_out,
			enable	=> en_r_i,
			datos	=> datos);
			
	i3	:	Control
		port map(
			clk			=> clk,
			reset_n		=> reset_n,
			temp_c		=> temp_c_i,
			temp_m		=> temp_m_i,
			datos 		=> datos,
			error		=> framing,
			en_r		=> en_r_i,
			en_cnt_c	=> en_cnt_c_i,
			en_cnt_m 	=> en_cnt_m_i,
			fin			=> fin_i,
			s_p			=> s_p_i);
		
	i4	:	TemporizadorM
		port map(
			clk		=> clk,
			reset_n	=> reset_n,
			en_cnt 	=> en_cnt_m_i,
			co		=> temp_m_i);
	
	i5	:	TemporizadorC
		port map(
			clk		=> clk,
			reset_n	=> reset_n,
			en_cnt 	=> en_cnt_c_i,
			co		=> temp_c_i);

	salida <= s_p_i;
		
end structural;
			