   library ieee;
use ieee.std_logic_1164.all;

entity Control is
	port(
		clk		:	in 	std_logic;
		boton		:	in		std_logic;
		reset_n	:	in		std_logic;
		fin		:	in		std_logic;
		en_cnt	:	out	std_logic;
		carga		:	out	std_logic;
		en_reg	:	out	std_logic;
		co_cnt	:	in		std_logic;
		multip	:	out	std_logic_vector(1 downto 0);
		rst		: out		std_logic);
end Control;

architecture behavioral of Control is
type t_estados is (Inicio,Start,Registro,Paridad,Stop);
signal estado_act,estado_sig	:	t_estados;

begin
	process(clk,reset_n,estado_sig)
	begin
		if reset_n = '0' then 
			estado_act <= Inicio;
		elsif clk' event and clk = '1' then
			estado_act <= estado_sig;
		end if;
	end process;
	
	process(estado_act,fin,co_cnt,boton)
	begin
		estado_sig <= estado_act;
		case estado_act is
			when Inicio =>
				if boton = '1' then
					estado_sig <= Start;
				end if;
			when Start =>
				if co_cnt = '1' then
					estado_sig <= Registro;
				end if;
			when Registro =>
				if fin = '1' then
					estado_sig <= Paridad;
				end if;
			when Paridad =>
				if co_cnt = '1' then
					estado_sig <= Stop;
				end if;
			when Stop =>
				if boton = '1' then
					estado_sig <= Start;
				end if;
			when others =>
				estado_sig <= Inicio;
		end case;
	end process;
	
	en_cnt <= '1' when estado_act = Start or estado_act = registro or estado_act = Paridad or estado_act = Stop else
				'0';
	carga <= '1' when estado_act = Start else
				'0';
	en_reg <= co_cnt when estado_act = Registro else
				'0';
	multip<= "00" when estado_act=Start else 
				"01" when estado_act=Registro else
				"10" when estado_act=Paridad else
				"11";
rst<= '0' when (estado_act=Stop and boton='0') or reset_n='0'
else '1';
end behavioral;	