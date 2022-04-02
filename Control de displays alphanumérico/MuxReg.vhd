library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MuxReg is
port(
	e0, e1, e2, e3, e4, e5, e6, e7:	in std_logic_vector (7 downto 0);
	sel	:in std_logic_vector (3 downto 0);
	s	:out std_logic_vector (7 downto 0));
end MuxReg;

architecture behavioral of MuxReg is

begin --behavioral
with sel select
s<=
	e0 when "0001",
	e1 when "0010",
	e2 when "0011",
	e3 when "0100",
	e4 when "0101",
	e5 when "0110",
	e6 when "0111",
	e7 when "1000",
	"00000000" when others;
end behavioral;
