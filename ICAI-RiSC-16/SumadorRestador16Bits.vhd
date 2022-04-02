-- Sumador con acarreo en serie para nÃƒÂºmeros de 5 bits

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SumadorRestador16Bits is
generic(
	g_data_w : integer :=16);
	port(
			a,b			: in	std_logic_vector(g_data_w-1 downto 0);
			s_r 			: in 	std_logic;
			s				: out	std_logic_vector(g_data_w-1 downto 0);
			co			: out	std_logic;
			ov			:	out std_logic);
end SumadorRestador16Bits;

architecture structural of SumadorRestador16Bits is
	signal c	: std_logic_vector(g_data_w downto 0);
	signal b_i : std_logic_vector(g_data_w-1 downto 0);
	signal s_r_i	:	std_logic_vector(g_data_w-1 downto 0);
	
	component Sumador1Bit
		port(
				a_i,b_i			: in	std_logic;
				c_i				: in	std_logic;
				s_i				: out	std_logic;
				c_i_mas_1		: out	std_logic);
				
	end component;
begin --structural

	s_r_i <= (others=>s_r);
	c(0)	<=	s_r;			--Acarreo incial = 0;
	b_i	<=	b xor s_r_i;
	co <= c(g_data_w) xor c(g_data_w-1);
	ov <= c(g_data_w) xor c(g_data_w-1);
				

	GenSum	:	for i in 0 to g_data_w-1 generate
		i_Sumador1Bit : Sumador1Bit
			port map(
						a_i		=>	a(i),
						b_i		=>	b_i(i),
						c_i		=>	c(i),
						s_i		=>	s(i),
						c_i_mas_1	=>	c(i+1));
		end generate GenSum;
end structural;
					