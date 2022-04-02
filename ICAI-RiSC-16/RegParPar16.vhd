library ieee;
use ieee.std_logic_1164.all;

entity RegParPar16 is
port(
	entrada	:	in std_logic_vector(15 downto 0);
	salida	:	out std_logic_vector(15 downto 0);
	clk		:	in  std_logic;
	reset_n	:	in	std_logic;
	enable	:	in	std_logic);
end RegParPar16;

architecture behavioral	of RegParPar16 is
signal registro : std_logic_vector(15 downto 0);
begin
	process(clk,enable,entrada,reset_n)
	begin
		if reset_n = '0' then
			registro <= (others => '0');
		elsif clk' event and clk = '1' then
			if enable = '1' then 
				registro <= entrada;
			end if;
		end if;
	end process;
	salida <= registro;
end behavioral;