library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlReg is 
port(
	clk	:in std_logic;
	reset_n	:in std_logic;
	boton		:in std_logic;
	enable	:out std_logic_vector (7 downto 0);
	fin		:out std_logic);
end ControlReg;

architecture behavioral of ControlReg is
signal contador: 	unsigned (3 downto 0);

begin --behavioral

process (clk, reset_n, boton)
begin -- process
	if reset_n='0' then 
	contador<= (others=>'0');
	elsif clk' event and clk='1' then 
	if boton='1' then 
	contador<= contador+1;
	elsif boton='1' and contador=8 then 
	contador<= (others=>'0');
	end if;
	end if;
end process;

enable<= "00000001" when contador=0 else
			"00000010" when contador=1 else
			"00000100" when contador=2 else
			"00001000" when contador=3 else
			"00010000" when contador=4 else
			"00100000" when contador=5	else
			"01000000" when contador=6 else
			"10000000" when contador=7 else
			"00000000";
fin<= '1' when contador=8 else
	'0';
	end behavioral;