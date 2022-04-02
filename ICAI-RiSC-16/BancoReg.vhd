library ieee;
use ieee.std_logic_1164.all;

entity BancoReg is
port(
	clk		: in std_logic;
	reset_n	:	in std_logic;
	DirA 		:	in std_logic_vector(2 downto 0);
	DirB		:	in	std_logic_vector(2 downto 0);
	DirEsc	:	in	std_logic_vector(2 downto 0);
	DatoEsc	:	in	std_logic_vector(15 downto 0);
	en_banco	:	in	std_logic;
	A			:	out	std_logic_vector(15 downto 0);
	B			:	out	std_logic_vector(15 downto 0));
end BancoReg;

architecture structural of BancoReg is
	signal R0,R1,R2,R3,R4,R5,R6,R7	:	std_logic_vector(15 downto 0);
	signal R1I,R2I,R3I,R4I,R5I,R6I,R7I	:	std_logic_vector(15 downto 0);
	signal en : std_logic_vector (7 downto 0);


	
	component RegParPar16
	port(
	entrada	:	in std_logic_vector(15 downto 0);
	salida	:	out std_logic_vector(15 downto 0);
	clk		:	in  std_logic;
	reset_n	:	in	std_logic;
	enable	:	in	std_logic);
	end component;
	
begin
	
	Registro_r0 : RegParPar16
	port map(
	entrada	=> (others => '0'),
	salida	=> R0,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en(7));
	
	Registro_r1 : RegParPar16
	port map(
	entrada	=> R1I,
	salida	=> R1,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en(6));
	
	Registro_r2 : RegParPar16
	port map(
	entrada	=> R2I,
	salida	=> R2,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en(5));
	
	Registro_r3 : RegParPar16
	port map(
	entrada	=> R3I,
	salida	=> R3,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en(4));
	
	Registro_r4 : RegParPar16
	port map(
	entrada	=> R4I,
	salida	=> R4,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en(3));
	
	Registro_r5 : RegParPar16
	port map(
	entrada	=> R5I,
	salida	=> R5,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en(2));
	
	Registro_r6 : RegParPar16
	port map(
	entrada	=> R6I,
	salida	=> R6,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en(1));
	
	Registro_r7 : RegParPar16
	port map(
	entrada	=> R7I,
	salida	=> R7,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en(0));
	
	
	--multiplexores
	with dirEsc select
	en<=
		en_banco&"0000000" when "000",
		'0'&en_banco&"000000" when "001",
		"00"&en_banco&"00000" when "010",
		"000"&en_banco&"0000" when "011",
		"0000"&en_banco&"000" when "100",
		"00000"&en_banco&"00" when "101",
		"000000"&en_banco&'0' when "110",
		"0000000"&en_banco when "111",
		"00000000" when others;
		
		with dirA select
	A<=
		R0  when "000",
		R1 when "001",
		R2 when "010",
		R3 when "011",
		R4 when "100",
		R5 when "101",
		R6 when "110",
		R7 when "111",
		"0000000000000000" when others;
	
	with dirB select
	B<=
		R0  when "000",
		R1 when "001",
		R2 when "010",
		R3 when "011",
		R4 when "100",
		R5 when "101",
		R6 when "110",
		R7 when "111",
		"0000000000000000" when others;
	
		R7I<= datoEsc when dirEsc= "111" else
		(others=>'0');
		R6I<= datoEsc when dirEsc= "110" else
		(others=>'0');
		R5I<= datoEsc when dirEsc= "101" else
		(others=>'0');
		R4I<= datoEsc when dirEsc= "100" else
		(others=>'0');
		R3I<= datoEsc when dirEsc= "011" else
		(others=>'0');
		R2I<= datoEsc when dirEsc= "010" else
		(others=>'0');
		R1I<= datoEsc when dirEsc= "001" else
		(others=>'0');

end structural;