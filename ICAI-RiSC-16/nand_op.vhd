library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nand_op is
generic(
	g_data_w : integer :=16);
	port(
	a,b	:	in std_logic_vector(g_data_w-1 downto 0);
	res	:	out std_logic_vector(g_data_w-1 downto 0);
	ov		:	out	std_logic;
	co		:	out	std_logic);
end nand_op;

architecture behavioral of nand_op is
begin
res <= a nand b;
ov <= '0';
co <= '0';
end behavioral; 