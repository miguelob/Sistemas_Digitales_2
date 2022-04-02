library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TemporizadorM is 
port(
clk	: in std_logic;
reset_n	: in std_logic;
en_cnt 	: in std_logic;
co			:  out std_logic);
end TemporizadorM;

architecture behavioral of TemporizadorM is 
signal contador: unsigned (10 downto 0);

begin --behavioral

process (clk, reset_n, en_cnt)
begin --process
if reset_n ='0' then 
contador<= (others=>'0');
elsif clk' event and clk= '1' then
if en_cnt ='1' and contador = 1302 then
contador<= (others=>'0');
elsif en_cnt='1' then 
contador<= contador +1;
end if;
end if;
end process;

co<= '1' when contador= 1302 and en_cnt='1' else 
'0';
 
end behavioral;
