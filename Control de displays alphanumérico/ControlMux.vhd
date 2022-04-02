library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ControlMux is
port(
	clk	:in std_logic;
	reset_n	:in std_logic;
	fin		:in std_logic;
	co			:in std_logic;
	boton		:in std_logic;
	sel		:out std_logic_vector (3 downto 0);
	en_cnt	:out std_logic;
	rst		:out std_logic);
end ControlMux;

architecture behavioral of ControlMux is
type t_estados is (Inicio, Mult, Final);
signal estado_act, estado_sig : t_estados;
signal contador: unsigned (3 downto 0);
signal fin2: std_logic;
begin --behavioral

process (clk, reset_n, estado_sig)
begin --process
if reset_n='0' then
estado_act<= Inicio;
elsif clk'event and clk='1' then
estado_act<= estado_sig;
end if;
end process;

process (estado_act, fin, fin2, boton)
begin --process
estado_sig<=estado_act;
case estado_act is 
when Inicio=>
	if fin='1' then
	estado_sig<= Mult;
	end if;
when Mult=>
	if fin2='1' then 
	estado_sig<= Final;
	end if;
when Final=>
	if boton='1' then 
	estado_sig<= Inicio;
	end if;
when others=>
	estado_sig<= Inicio;
end case;
end process;

process (clk, reset_n, co)
begin -- process
	if reset_n='0' then 
	contador<= (others=>'0');
	elsif clk' event and clk='1' then 
	if co='1' then 
	contador<= contador+1;
	elsif co='1' and contador=8 then 
	contador<= (others=>'0');
	end if;
	end if;
end process;

fin2<='1' when contador= 8 else
'0';

en_cnt<= '1' when estado_act=Mult or estado_act=Final else
	'0';
sel<=	 	"0001" when contador=1 else
			"0010" when contador=2 else
			"0011" when contador=3 else
			"0100" when contador=4 else
			"0101" when contador=5 else
			"0110" when contador=6 else
			"0111" when contador=7 else
			"1000" when contador=8 else
			"0000"; 
rst<= '0' when (estado_act= Final and boton='1') or reset_n='0' else
	'1';

end behavioral;
