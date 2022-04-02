library ieee;
use ieee.std_logic_1164.all;

entity RegParPar is
	port(
		clk		:	in	std_logic;
		reset_n	:	in	std_logic;
		input		:	in	std_logic_vector(7 downto 0);
		enable	:	in	std_logic;
		output	:	out	std_logic_vector(7 downto 0));
end RegParPar;

architecture behavioral of RegParPar is
begin
	process(clk,reset_n,enable)
		begin
			if reset_n = '0' then
				output <= (others => '0');
			elsif clk' event and clk = '1' then
				if enable = '1' then
					output <= input;
				end if;
			end if;
	end process;
end behavioral;