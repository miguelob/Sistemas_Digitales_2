library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Risk is
	port(
	clk		:	in	std_logic;
	reset_n	:	in	std_logic);
end Risk;

architecture structural of Risk is
--señales intermedias
signal ALUOut	:	std_logic_vector(15 downto 0);
signal ALU_salida 		:	std_logic_vector(15 downto 0);
signal RegA 		:	std_logic_vector(15 downto 0);
signal EntradaPC 		:	std_logic_vector(15 downto 0);
signal PC				:	std_logic_vector(15 downto 0);
signal EntradaIR 		:	std_logic_vector(15 downto 0);  
signal IR				:	std_logic_vector(15 downto 0);
signal MDatos 		:	std_logic_vector(15 downto 0);
signal RegB		:	std_logic_vector(15 downto 0);
signal SIR		:	std_logic_vector(15 downto 0);
signal SelPC, SelBanco, SelDirE,SelALUB,SelALUA	:	std_logic_vector(1 downto 0);
signal op_ALU 	:	std_logic_vector(3 downto 0);
signal wr_PC, wr_PC_cond, en_ALU, en_PC, en_IR, en_banco,rd_mem_d,wr_mem_d,zero:	std_logic;
signal fliflo	:std_logic_vector (15 downto 0);
signal DirEsc	:std_logic_vector (2 downto 0);
signal DatoEsc	:std_logic_vector (15 downto 0);
signal ALUA, ALUB	:std_logic_vector (15 downto 0);
signal IR_con_ceros	:std_logic_vector (15 downto 0);
--señal codop
signal codop :std_logic_vector (2 downto 0);
--maquina de estados
type t_estados is (RESET, FETCH, DECOD, LUI3, ARIT3, BEQ3, ADDI3, LWSW3, JALR3, ARIT4, ADDI4, LW4, SW4, LW5);
signal estado_act, estado_sig : t_estados;

component Mux4a16 
port(
	e1,e2,e3,e4: in std_logic_vector (15 downto 0);
	s: 	out std_logic_vector (15 downto 0);
	control: 	in std_logic_vector (1 downto 0));
end component;

component RegParPar16 
port(
	entrada	:	in std_logic_vector(15 downto 0);
	salida	:	out std_logic_vector(15 downto 0);
	clk		:	in  std_logic;
	reset_n	:	in	std_logic;
	enable	:	in	std_logic);
end component;

component Mux4a3
port(
	e1,e2,e3,e4: in std_logic_vector (2 downto 0);
	s: out std_logic_vector (2 downto 0);
	control: in std_logic_vector (1 downto 0));
end component;

component BancoReg
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
end component;

component ALU
	generic(
		g_data_w : integer);
	port(
	a,b	:	in	std_logic_vector(g_data_w-1 downto 0);
	op_alu	:	in std_logic_vector(3 downto 0);
	ov,co,z	:	out std_logic;
	res		:	out	std_logic_vector(g_data_w-1 downto 0));
end component;

component RAM 
port(
	clk	: in std_logic;
	addr	:	in std_logic_vector (15 downto 0);
	din	:	in std_logic_vector (15 downto 0);
	dout	: out std_logic_vector (15 downto 0);
	wr		:	in std_logic;
	rd		:	in std_logic);
end component;

component ROM
  port(
    clk: in std_logic; 
    en_pc: in std_logic;
    dir: in std_logic_vector(5 downto 0);
    dat: out std_logic_vector(15 downto 0) );
end component;

begin --structural
SIR <= IR(6)&IR(6)&IR(6)&IR(6)&IR(6)&IR(6)&IR(6)&IR(6)&IR(6)&IR(6 downto 0);
IR_con_ceros<=(IR(9 downto 0)&"000000");
fliflo <= (others=>'0');
i_Mux_PC: Mux4a16 
port map(
	e1=> ALUOut,
	e2=> ALU_salida,
	e3=> RegA,
	e4=> fliflo,
	s=> EntradaPC,
	control=> SelPC);
	
i_PC: RegParPar16
port map(
	entrada => EntradaPC,
	salida => PC,
	clk => clk,
	reset_n => reset_n,
	enable => en_PC);
	
i_IR: RegParPar16
port map(
	entrada	=> EntradaIR,
	salida	=> IR,
	clk		=>	clk,
	reset_n	=>	reset_n,
	enable	=>	en_IR);

i_Mux_IR: Mux4a3 
port map(
	e1 => IR(6 downto 4),
	e2 => IR (9 downto 7),
	e3 => IR (12 downto 10),
	e4 => "000",
	s =>  dirEsc,
	control => SelDirE);
i_Mux_Banco: Mux4a16 
port map(
	e1=> ALUOut,
	e2=> MDatos,
	e3=> PC,
	e4=> IR_con_ceros,
	s=> DatoEsc,
	control=> SelBanco);

i_BancoReg: BancoReg
port map(
	clk		=> clk,
	reset_n	=> reset_n,
	DirA 		=> IR (12 downto 10),
	DirB		=> IR (9 downto 7),
	DirEsc	=> DirEsc,
	DatoEsc	=> DatoEsc,
	en_banco	=> en_banco,
	A			=> RegA,
	B			=> RegB);

i_Mux_A: Mux4a16 
port map(
	e1=> RegA,
	e2=> PC,
	e3=> "0000000000000000",
	e4=> "0000000000000000",
	s=> ALUA,
	control=> SELALUA);

i_Mux_B: Mux4a16 
port map(
	e1=> RegB,
	e2=> std_logic_vector(to_unsigned(1,16)),
	e3=> SIR(15 downto 0),
	e4=> "0000000000000000",
	s=> ALUB,
	control=> SelALUB);
	
i_ALU: ALU 
	generic map(
	g_data_w => 16)
	port map(
	a => ALUA,
	b =>	ALUB,
	op_alu => op_ALU,
	ov => open,
	co => open,
	z	=> zero,
	res => ALU_salida);

i_Reg: RegParPar16
port map(
	entrada	=>	ALU_salida,
	salida	=> ALUOut,
	clk		=> clk,
	reset_n	=> reset_n,
	enable	=> en_ALU);

i_RAM: RAM 
port map(
	clk	=> clk,
	addr	=>  ALUOut,
	din	=> RegB,
	dout	=> MDatos,
	wr		=> wr_mem_d,
	rd		=> rd_mem_d);
	
i_ROM	: ROM
  port map(
    clk => clk,
    en_pc => en_PC,
    dir => EntradaPC(5 downto 0),
    dat => EntradaIR);

--asignacion CODOP

codop <=IR(15 downto 13);	
--maquina de estados

	VarEstado: process (clk, reset_n, estado_sig)
	begin --process
		if reset_n='0' then 
			estado_act<= RESET;
		elsif clk'event and clk= '1' then 
			estado_act<= estado_sig;
		end if;
	end process VarEstado;
	
	TransicionEstados: process (estado_act, codop)
	begin --process
	estado_sig<= estado_act;
	case estado_act is
		when RESET=>
			estado_sig<= FETCH;
		when FETCH=>
			estado_sig<= DECOD;
		when DECOD=>
			if codop= "011" then
				estado_sig<= LUI3;
			elsif codop="000" then
				estado_sig<=ARIT3;
			elsif codop= "101" or codop="100" then
				estado_sig<=LWSW3;
			elsif codop= "001" then
				estado_sig<=ADDI3;
			elsif codop= "110" then
				estado_sig<= BEQ3;
			elsif codop= "111" then
				estado_sig<=JALR3;
			end if;
		when LUI3=>
			estado_sig<=FETCH;
		when ARIT3=>
			estado_sig<=ARIT4;
		when BEQ3=>
			estado_sig<= FETCH;
		when ADDI3=>
			estado_sig<=ADDI4;
		when LWSW3=>
			if codop= "101" then
				estado_sig<= LW4;
			elsif codop= "100" then
				estado_sig<=SW4;
			end if;
		when JALR3=>
			estado_sig<=FETCH;
		when ARIT4=>
			estado_sig<=FETCH;
		when ADDI4=>
			estado_sig<=FETCH;
		when LW4=>
			estado_sig<= LW5;
		when SW4=>
			estado_sig<=FETCH;
		when LW5=>
			estado_sig<=FETCH;
		when others=>
			estado_sig<= RESET;
	end case;	
	end process TransicionEstados;
	
	
	Salidas : process (estado_act)
	begin --process
	--salidas por defecto
		SelPC<="00";
		wr_PC<='0';
		en_IR<='0';
		SelALUA<="00";
		SelALUB<="00";
		op_ALU<="0000";
		en_ALU<='0';
		SelDirE<="00";
		en_banco<='0';
		SelBanco<="00";
		wr_PC_cond<='0';
		wr_mem_d<='0';
		rd_mem_d <= '0';
	
	case estado_act is
	when RESET=>
		SelPC<="11";
		wr_PC<='1';
	when FETCH=>
		en_IR<='1';
		SelALUA<="01";
		SelALUB<="01";
		op_ALU<= "0000";
		SelPC<="01";
		wr_PC<='1';
	when DECOD=>
		SelALUA<="01";
		SelALUB<="10";
		op_ALU<="0000";
		en_ALU<= '1';
	when LUI3=>
		SelBanco<="11";
		SelDirE<="10";
		en_banco<='1';
	when ARIT3=>
		SelALUA<="00";
		SelALUB<="00";
		op_ALU<=IR(3 downto 0);
		en_ALU<='1';
	when LWSW3=>
		SelALUA<="00";
		SelALUB<="10";
		op_ALU<="0000";
		en_ALU<='1';
	when ADDI3=>
		SelALUA<="00";
		SelALUB<="10";
		op_ALU<="0000";
		en_ALU<='1';
	when BEQ3=>
		SelALUA<="00";
		SelALUB<="00";
		op_ALU<="0001";
		SelPC<="00";
		wr_PC_cond<='1';
	when JALR3=>
		SelBanco<="10";
		SelDirE<="01";
		en_banco<='1';
		SelPC<="10";
		wr_PC<='1';
	when ARIT4=>
		SelBanco<="00";
		SelDirE<="00";
		en_banco<='1';
	when ADDI4=>
		SelBanco<="00";
		SelDirE<="01";
		en_banco<='1';
	when LW4=>
		rd_mem_d <= '1';
	when SW4=>
		wr_mem_d<='1';
	when LW5=>
		SelBanco<="01";
		SelDirE<="01";
		en_banco<='1';
	end case;
	end process; 
	
	en_PC<= wr_PC or (wr_PC_cond and zero);
 
end structural;