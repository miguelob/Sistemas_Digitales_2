-- Sumador con acarreo en serie para nÃƒÂºmeros de 5 bits

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SumadorRestador is
generic(
	g_data_w : integer :=5);
	port(
			a,b			: in	std_logic_vector(g_data_w-1 downto 0);
			s_r 			: in 	std_logic;
			s				: out	std_logic_vector(g_data_w-1 downto 0);
			co			: out	std_logic;
			ov			:	out std_logic);
end SumadorRestador;

architecture structural of SumadorRestador is
signal intermedia :	std_logic_vector(g_data_w-1 downto 0);
	
begin --structural
	intermedia <= std_logic_vector(to_unsigned(unsigned(a)+unsigned(b),g_data_w)) when s_r = '0' else
		std_logic_vector(to_signed(signed(a)+signed(b),g_data_w));
		
	co <= '1' when unsigned(intermedia)>31 OR signed(intermedia)<-32 else
			'0';
	ov <= '1' when unsigned(intermedia)>31 OR signed(intermedia)<-32 else
			'0';
	s <= intermedia;
end structural;
					