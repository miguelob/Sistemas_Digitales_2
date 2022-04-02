library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Multi16Con is
generic(
	g_data_w : integer :=5);
port(
		a,b		:	in 	std_logic_vector(g_data_w-1 downto 0);
		p			:	out 	std_logic_vector(g_data_w-1 downto 0);
		ov			:	out	std_logic;
		co			:	out	std_logic);
end Multi16Con;

architecture behavioral of Multi16Con is
signal p_i	:	std_logic_vector(2*g_data_w-1 downto 0);
signal signo : std_logic_vector(g_data_w-1 downto 0);
begin --behavioral

	signo <= (others => p_i(g_data_w-1));
	p_i <=	std_logic_vector(signed(a)*signed(b));
	p <= p_i(g_data_w-1 downto 0);
	ov	<= '0' when p_i(2*g_data_w-1 downto g_data_w) =	signo else
					'1';
	co <= '0';
end behavioral;