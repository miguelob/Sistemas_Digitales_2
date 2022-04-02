library ieee;
use ieee.std_logic_1164.all;

entity Mux is
port (
	paridad	:	in std_logic;
	registro	:	in	std_logic;
	start		:	in	std_logic;
	stop		:	in	std_logic;
	control	:	in	std_logic_vector(1 downto 0);
	salida	:	out	std_logic);
end Mux;
architecture behavioral of Mux is
begin
	with control select
	 salida <=
		start when "00",
		registro when "01",
		paridad	when "10",
		stop 	when "11",
		'1'	when others;
		
end behavioral;