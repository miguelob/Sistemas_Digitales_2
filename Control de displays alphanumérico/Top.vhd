library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Top is
port(
	clk	: in std_logic;
	input:	in std_logic_vector (7 downto 0);
	reset_n	:in std_logic;
	boton:	in std_logic;
	datos:	out std_logic_vector (16 downto 0);
	bits:		out std_logic_vector (7 downto 0));
end Top;
	
architecture behavioral of Top is 

component TemporizadorC  
port(
clk	: in std_logic;
reset_n	: in std_logic;
en_cnt 	: in std_logic;
co			:  out std_logic);
end component;

component RegParPar
	port(
		clk		:	in	std_logic;
		reset_n	:	in	std_logic;
		input		:	in	std_logic_vector(7 downto 0);
		enable	:	in	std_logic;
		output	:	out	std_logic_vector(7 downto 0));
end component;

component DetectorFlanco 
	port(
	e			:	in std_logic;
	reset_n	:	in	std_logic;
	clk		:	in std_logic;
	s			:	out	std_logic);
end component;

component AsciiA16Seg 
  port (
    clk : in  std_logic;
    e   : in  std_logic_vector(7 downto 0);    -- Entrada en ASCII
    s   : out std_logic_vector(16 downto 0));  -- Salida (16 segmentos)
                                               -- el bit 0 es el segmento A
end component;


component ControlReg
port(
	clk	:in std_logic;
	reset_n	:in std_logic;
	boton		:in std_logic;
	enable	:out std_logic_vector (7 downto 0);
	fin		:out std_logic);
end component;

component MuxReg
port(
	e0, e1, e2, e3, e4, e5, e6, e7:	in std_logic_vector (7 downto 0);
	sel	:in std_logic_vector (3 downto 0);
	s	:out std_logic_vector (7 downto 0));
end component;

component ControlMux 
port(
	clk	:in std_logic;
	reset_n	:in std_logic;
	fin		:in std_logic;
	co			:in std_logic;
	boton		:in std_logic;
	sel		:out std_logic_vector (3 downto 0);
	en_cnt	:out std_logic;
	rst 		:out std_logic);
end component;

component Demux 
port(
		--e:in std_logic;
		sel:	in std_logic_vector (3 downto 0);
		s0, s1, s2, s3, s4, s5,  s6, s7: out std_logic);
end component;

signal en_cnt_i : std_logic;
signal co_i:  std_logic;
signal enable_i: std_logic_vector (7 downto 0);
signal output_i:  std_logic_vector (63 downto 0);
signal boton_i		: std_logic;
signal reg_i	:	std_logic_vector(7 downto 0);
signal fin_i	:	std_logic;
signal sel_i	:	std_logic_vector(3 downto 0);
signal rst_i	: std_logic;
begin --behavioral

i1: TemporizadorC  
port map(
clk	=> clk,
reset_n	=> rst_i,
en_cnt 	=> en_cnt_i,
co			=> co_i);

i2: RegParPar
	port map(
		clk		=>clk,
		reset_n	=> reset_n,
		input		=> input,
		enable	=> enable_i(0),
		output	=> output_i (7 downto 0));

i3: RegParPar
	port map(
		clk		=>clk,
		reset_n	=> reset_n,
		input		=> input,
		enable	=> enable_i(1),
		output	=> output_i (15 downto 8));

i4: RegParPar
	port map(
		clk		=>clk,
		reset_n	=> reset_n,
		input		=> input,
		enable	=> enable_i(2),
		output	=> output_i (23 downto 16));

i5: RegParPar
	port map(
		clk		=>clk,
		reset_n	=> reset_n,
		input		=> input,
		enable	=> enable_i(3),
		output	=> output_i (31 downto 24));
		
i6: RegParPar
	port map(
		clk		=>clk,
		reset_n	=> reset_n,
		input		=> input,
		enable	=> enable_i(4),
		output	=> output_i (39 downto 32));

i7: RegParPar
	port map(
		clk		=>clk,
		reset_n	=> reset_n,
		input		=> input,
		enable	=> enable_i(5),
		output	=> output_i (47 downto 40));

i8: RegParPar
	port map(
		clk		=>clk,
		reset_n	=> reset_n,
		input		=> input,
		enable	=> enable_i(6),
		output	=> output_i (55 downto 48));

i9: RegParPar
	port map(
		clk		=>clk,
		reset_n	=> reset_n,
		input		=> input,
		enable	=> enable_i(7),
		output	=> output_i (63 downto 56));


i10	: DetectorFlanco 
	port map(
	e			=> boton,
	reset_n	=> reset_n,
	clk		=> clk,
	s			=> boton_i);

i11	: AsciiA16Seg 
  port map(
    clk => clk,
    e   => reg_i,    -- Entrada en ASCII
    s  => datos);  -- Salida (16 segmentos)


i12	: ControlReg
port map(
	clk	=> clk,
	reset_n	=> rst_i,
	boton		=> boton_i,
	enable	 => enable_i,
	fin		 => fin_i);
	
i13	: MuxReg
port map(
	e0 => output_i(7 downto 0),
	e1 => output_i(15 downto 8), 
	e2 => output_i(23 downto 16), 
	e3 => output_i(31 downto 24), 
	e4 => output_i(39 downto 32), 
	e5 => output_i(47 downto 40), 
	e6 => output_i(55 downto 48), 
	e7 => output_i(63 downto 56),
	sel => sel_i,
	s	=>reg_i);

i14	:	ControlMux 
port map(
	clk	=> clk,
	reset_n	=> reset_n,
	fin		=> fin_i,
	co			=> co_i,
	boton		=> boton_i,
	sel		=> sel_i,
	en_cnt	=> en_cnt_i,
	rst		=> rst_i);

i15	: Demux 
port map(
		sel => sel_i,
		s0 => bits(0),
		s1 => bits(1),
		s2 => bits(2),
		s3 => bits(3),
		s4 => bits(4),
		s5 => bits(5),
		s6 => bits(6),
		s7 => bits(7));

end behavioral;