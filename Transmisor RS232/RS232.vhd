library ieee;
use ieee.std_logic_1164.all;

entity RS232 is
	port(
		clk		:	in	std_logic;
		reset_n	:	in	std_logic;
		datos		:	in	std_logic_vector(7 downto 0);
		boton		:	in	std_logic;
		output	:	out	std_logic);
end RS232;

architecture structural of RS232 is
	signal bit_paridad_i	:	std_logic;
	signal en_cnt_i	:	std_logic;
	signal co_i		:	std_logic;
	signal registro_i	:	std_logic;
	signal multip_i	:std_logic_vector(1 downto 0);
	signal carga_i	:	std_logic;
	signal enable_i	:	std_logic;
	signal final_i	:	std_logic;
	signal boton_i	:	std_logic;
	signal rst_i : std_logic;
	
	component DetectorFlanco
		port(
			e			:	in std_logic;
			reset_n	:	in	std_logic;
			clk		:	in std_logic;
			s			:	out	std_logic);
	end component;
	
	component Paridad
		port(
			reg				    : in std_logic_vector(7 downto 0);
			boton			:	in	std_logic;
			reset_n		:	in std_logic;
			clk			:	in std_logic;
			bit_paridad			  : out std_logic);
	end component;
	
	component TemporizadorC
		port(
			clk	: in std_logic;
			reset_n	: in std_logic;
			en_cnt 	: in std_logic;
			co			:  out std_logic);
	end component;
	
	component Mux
		port(
			paridad	:	in std_logic;
			registro	:	in	std_logic;
			start		:	in	std_logic;
			stop		:	in	std_logic;
			control	:	in	std_logic_vector(1 downto 0);
			salida	:	out	std_logic);
	end component;
	
	component RegParSer
		port(
			clk		:	in	std_logic;
			reset_n	:	in	std_logic;
			load		:	in	std_logic;
			enable	:	in	std_logic;
			final		:	out	std_logic;
			e_p		:	in	std_logic_vector(7 downto 0);
			s_s		:	out	std_logic);
	end component;
	
	component Control
		port(
			clk		:	in 	std_logic;
			boton		:	in		std_logic;
			reset_n	:	in		std_logic;
			fin		:	in		std_logic;
			en_cnt	:	out	std_logic;
			carga		:	out	std_logic;
			en_reg	:	out	std_logic;
			co_cnt	:	in		std_logic;
			multip	:	out	std_logic_vector(1 downto 0);
			rst 		: out std_logic);
	end component;

begin
	
	i1	:	Paridad
		port map(
			reg		=> datos,
			boton		=> boton_i,
			reset_n	=> rst_i,
			clk		=> clk,
			bit_paridad	=> bit_paridad_i);
			
	i2	:	TemporizadorC
		port map(
			clk	=> clk,
			reset_n	=> rst_i,
			en_cnt 	=> en_cnt_i,
			co			=> co_i);
			
	i3	:	Mux
		port map(
			paridad	=> bit_paridad_i,
			registro	=> registro_i,
			start		=> '0',
			stop		=> '1',
			control	=> multip_i,
			salida	=> output);
		
	i4	:	RegParSer
		port map(
			clk		=> clk,
			reset_n	=> rst_i,
			load		=> carga_i,
			enable	=> enable_i,
			final		=> final_i,
			e_p		=> datos,
			s_s		=> registro_i);
			
	i5	:	Control
		port map(
			clk		=> clk,
			boton		=> boton_i,
			reset_n	=> reset_n,
			fin		=> final_i,
			en_cnt	=> en_cnt_i,
			carga		=> carga_i,
			en_reg	=> enable_i,
			co_cnt	=> co_i,
			multip	=> multip_i,
			rst		=> rst_i);
		
	i6	:	DetectorFlanco
		port map(
			e			=> boton,
			reset_n	=> reset_n,
			clk		=> clk,
			s			=> boton_i);
			
	
end structural;