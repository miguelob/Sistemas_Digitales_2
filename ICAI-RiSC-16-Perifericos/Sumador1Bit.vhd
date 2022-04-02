--sumador 1 bit con salida de acarreo.

library ieee;
use ieee.std_logic_1164.all;

entity Sumador1Bit is
	port(
			a_i,b_i : in std_logic;
			c_i		: std_logic;
			s_i		: out std_logic;
			c_i_mas_1 : out std_logic);
			
end Sumador1Bit;

architecture behavioral of Sumador1Bit is

begin --behavioral

	s_i		<= c_i xor (a_i xor b_i);
	c_i_mas_1 	<= (a_i and b_i)or((a_i xor b_i)and c_i);
	
end behavioral;