library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Demux is
port(
		--e:in std_logic;
		sel:	in std_logic_vector (3 downto 0);
		s0, s1, s2, s3, s4, s5,  s6, s7: out std_logic);
end Demux;

architecture behavioral of Demux is 
begin --behavioral
s0<= '0' when sel="1000" else
	'1';
s1<= '0' when sel="0111" else
	'1';
s2<= '0' when sel="0110" else
	'1';
s3<= '0' when sel="0101" else
	'1';
s4<= '0' when sel="0100" else
	'1';
s5<= '0' when sel="0011" else
	'1';
s6<= '0' when sel="0010" else
	'1';
s7<= '0' when sel="0001" else
	'1';
end behavioral;

