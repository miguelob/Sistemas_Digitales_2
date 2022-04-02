library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;  

entity Paridad is
	port(
		reg				    : in std_logic_vector(7 downto 0);
		boton			:	in	std_logic;
		reset_n		:	in	std_logic;
		clk			:	in std_logic;
		bit_paridad			  : out std_logic);
end Paridad;

architecture behavioural of Paridad is
begin
	process(clk,reset_n,boton)
	begin	
		if reset_n = '0' then
			bit_paridad <= '0';
		elsif clk' event and clk = '1' and boton = '1' then
			bit_paridad <= (reg(7) xor reg(6) xor reg(5) xor reg(4) xor reg(3) xor reg(2) xor reg(1) xor reg(0));
		end if;
	end process;
end behavioural;
