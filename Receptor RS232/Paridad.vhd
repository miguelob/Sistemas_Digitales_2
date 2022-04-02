library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Paridad is
	port(
		clk		:	in std_logic;
		reset_n	:  in std_logic;
		led		:	out std_logic;
		enable	:	in	std_logic;
		datos		: in std_logic);
end Paridad;

architecture behavioral of Paridad is
	signal contador : std_logic;
	signal stop		: unsigned(3 downto 0);
	signal comprobar	: std_logic;
begin
	process(enable,datos,clk,stop,reset_n)
	begin
		if reset_n= '0' then 
			contador <= '0';
			stop <= (others => '0');
		elsif clk' event and clk = '1' then
			if enable = '1' and comprobar = '0' then
				contador <= contador xor datos;
				stop <= stop + 1;
			end if;
		end if;
	end process;
	
	comprobar <= '1' when (stop < 10) else
				'0';
	led <= '0' when contador = '0' else
			'1';
end behavioral;
