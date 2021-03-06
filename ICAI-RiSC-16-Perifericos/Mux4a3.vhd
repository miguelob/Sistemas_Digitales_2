library ieee;
use ieee.std_logic_1164.all;

entity Mux4a3 is
port(
	e1,e2,e3,e4: in std_logic_vector (2 downto 0);
	s: out std_logic_vector (2 downto 0);
	control: in std_logic_vector (1 downto 0));
end Mux4a3;

architecture behavioral of Mux4a3 is

begin
with control select
s<=
	e1 when "00",
	e2 when "01",
	e3 when "10",
	e4 when "11",
	"000" when others;
	
end behavioral;