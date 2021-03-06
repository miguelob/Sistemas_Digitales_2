library ieee;
use ieee.std_logic_1164.all;

entity Mux2a16 is
port(
	e1,e2: in std_logic_vector (15 downto 0);
	s: 	out std_logic_vector (15 downto 0);
	control: 	in std_logic);
end Mux2a16;

architecture behavioral of Mux2a16 is 
	signal ceros: std_logic_vector (15 downto 0);
begin
ceros <= (others=>'0');
with control select 
s<=
	e1 when '0',
	e2 when '1',
	ceros when others;
	
end behavioral;