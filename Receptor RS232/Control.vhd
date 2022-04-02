library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Control is 
port(
clk			: in std_logic;
reset_n		: in std_logic;
temp_c		:in std_logic;
temp_m		:in std_logic;
datos 		:in std_logic;
error		:out std_logic;
en_r		:out std_logic;
en_cnt_c	:out std_logic;
en_cnt_m 	:out std_logic;
fin			:in std_logic;
s_p			:in std_logic_vector (10 downto 0));
end Control;

architecture behavioral of Control is 
type t_estados is (Inicio, Start, Registro, Final);
 signal estado_act, estado_sig: t_estados;
 
 
 
 begin --behavioral
 
 process (clk, reset_n, estado_sig)
 begin --process
 if reset_n= '0' then 
 estado_act<= Inicio;
 elsif clk'event and clk='1' then 
 estado_act<= estado_sig;
 end if;
 end process;
 
 process (estado_act, datos, temp_m, fin)
 begin --process
 estado_sig<= estado_act;
 case estado_act is 
 when Inicio=>
 if datos='0' then
 estado_sig<= Start;
 end if;
 when Start=>
 if temp_m='1'and datos = '0' then 
 estado_sig<= Registro;
 end if;
 when Registro=>
 if fin= '1' then 
 estado_sig<= Final;
 end if;
 when Final=>
 if datos='0' then 
 estado_sig<= Start;
 end if;
 when others =>
 estado_sig<= Inicio;
 end case;
 end process;
 
 en_cnt_m<= '1' when estado_act = Start else 
 '0';
 
 en_cnt_c<= '1' when estado_act = Registro else
 '0';
 
 en_r <= temp_c;
 
 
 error<= '1' when (s_p(0)='0' or s_p(10)='1') and fin='1' else
			'0';
 
end  behavioral;