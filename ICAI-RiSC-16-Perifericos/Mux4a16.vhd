library ieee;
use ieee.std_logic_1164.all;

entity Mux4a16 is
port(
	e1,e2,e3,e4: in std_logic_vector (15 downto 0);
	s: 	out std_logic_vector (15 downto 0);
	control: 	in std_logic_vector (1 downto 0));
end Mux4a16;

architecture behavioral of Mux4a16 is 
	signal ceros: std_logic_vector (15 downto 0);
begin
ceros <= (others=>'0');
with control select 
s<=
	e1 when "00",
	e2 when "01",
	e3 when "10",
	e4 when "11",
	ceros when others;
	
end behavioral;