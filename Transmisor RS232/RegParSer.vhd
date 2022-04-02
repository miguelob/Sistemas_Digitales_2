library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegParSer is
	port(
		clk		:	in	std_logic;
		reset_n	:	in	std_logic;
		load		:	in	std_logic;
		enable	:	in	std_logic;
		final		:	out	std_logic;
		e_p		:	in	std_logic_vector(7 downto 0);
		s_s		:	out	std_logic);
end RegParSer;

architecture behavioral of RegParSer is
	signal registro	:	std_logic_vector(7 downto 0);
	signal contador	:	unsigned(3 downto 0);
begin 
	
	process(clk,reset_n,registro,load,e_p,enable)
	begin
		if reset_n = '0' then
			registro <= (others => '0');
			contador <= "0000";
		elsif clk' event and clk = '1' then
			if load = '1' then
				registro <= e_p;
			elsif enable = '1' then
				registro(7) <= '0';
				registro(6 downto 0) <= registro(7 downto 1);
				contador <= contador + 1;
			end if;
		end if;
	end process;
	
	s_s <= registro(0);
	final <= '1' when contador = 8 and enable='1' else
			'0';
end behavioral;