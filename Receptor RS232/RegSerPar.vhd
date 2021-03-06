library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegSerPar is
	port(
		clk		:	in	std_logic;
		reset_n	:	in std_logic;
		enable	:	in	std_logic;
		e_s		:	in	std_logic;
		s_p		:	out	std_logic_vector(10 downto 0);
		s_stop	: out std_logic);
end RegSerPar;

architecture behavioral of RegSerPar is
	signal registro	:	std_logic_vector(10 downto 0);
	signal contador 	:  unsigned(3 downto 0);
	signal stop     	: std_logic;
begin
	
	process(clk,reset_n,enable)
	begin
		if reset_n='0' then 
		registro<= (others=>'0');
		elsif clk' event and clk = '1' then
			if enable = '1' and stop = '0' then
				registro(0) <= e_s;
				registro(10 downto 1) <= registro(9 downto 0);
				contador <= contador +1;
			end if;
		end if;
	end process;
	
	stop<= '1' when std_logic_vector(contador)= "1011" else
	'0';
	s_stop <= stop;
	s_p <= registro when stop = '1' else
	"00000000000";
end behavioral;
			