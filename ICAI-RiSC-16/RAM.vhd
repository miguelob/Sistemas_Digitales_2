library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is
port(
	clk	: in std_logic;
	addr	:	in std_logic_vector (15 downto 0);
	din	:	in std_logic_vector (15 downto 0);
	dout	: out std_logic_vector (15 downto 0);
	wr		:	in std_logic;
	rd		:	in std_logic);
end RAM;

architecture behavioral of RAM is
	signal addr_i :	std_logic_vector(5 downto 0);
	type mem_t is array(63 downto 0) of std_logic_vector (15 downto 0);
	signal ram_block: mem_t;
begin
addr_i <= addr(5 downto 0);
process (clk)
	begin
		if (clk'event and clk='1') then
			if (wr='1') then
				ram_block(to_integer(unsigned(addr_i))) <=din; --cada posicion tiene 16
			elsif rd = '1' then
				dout <= ram_block(to_integer(unsigned(addr_i))); --cada dato coge lo de la posicion
			end if;
		end if;
	end process;
end behavioral;
	