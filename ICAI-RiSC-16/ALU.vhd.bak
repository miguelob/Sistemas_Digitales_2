library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is	
	generic(
		g_data_w : integer :=5);
	port(
	a,b	:	in	std_logic_vector(g_data_w-1 downto 0);
	op_alu	:	in std_logic_vector(3 downto 0);
	ov,co,z	:	out std_logic;
	res		:	out	std_logic_vector(g_data_w-1 downto 0));
end ALU;

architecture structural of ALU is
signal s_r_i : std_logic;
signal ov_suma	:	std_logic;
signal ov_multip1	:	std_logic;
signal ov_multip2	:	std_logic;
signal ov_nand	:	std_logic;
signal co_suma	:	std_logic;
signal co_multip1	:	std_logic;
signal co_multip2	:	std_logic;
signal co_nand : std_logic;
signal res_suma	:	std_logic_vector(g_data_w-1 downto 0);
signal res_multip1	:	std_logic_vector(g_data_w-1 downto 0);
signal res_multip2	:	std_logic_vector(g_data_w-1 downto 0);
signal res_desp1	:	std_logic_vector(g_data_w-1 downto 0);
signal res_desp2	:	std_logic_vector(g_data_w-1 downto 0);
signal res_desp3	:	std_logic_vector(g_data_w-1 downto 0);
signal res_comp	:	std_logic_vector(g_data_w-1 downto 0);
signal res_nand	:	std_logic_vector(g_data_w-1 downto 0);
signal ceros	:	std_logic_vector(g_data_w-1 downto 0):=(others=>'0');
signal z_suma	:	std_logic;
signal z_multip1	:	std_logic;
signal z_multip2	:	std_logic;
signal z_nand	:	std_logic;
signal z_desp1	:	std_logic;
signal z_desp2	:	std_logic;
signal z_desp3	:	std_logic;
signal z_comp	:	std_logic;



component SumadorRestador16Bits
	port(
			a,b			: in	std_logic_vector(g_data_w-1 downto 0);
			s_r 			: in 	std_logic;
			s				: out	std_logic_vector(g_data_w-1 downto 0);
			co			: out	std_logic;
			ov			:	out std_logic);
end component;

component Multi16Sin
port(
		a,b		:	in 	std_logic_vector(g_data_w-1 downto 0);
		p			:	out 	std_logic_vector(g_data_w-1 downto 0);
		ov			:	out	std_logic;
		co			:	out	std_logic);
end component;

component Multi16Con
port(
		a,b		:	in 	std_logic_vector(g_data_w-1 downto 0);
		p			:	out 	std_logic_vector(g_data_w-1 downto 0);
		ov			:	out	std_logic;
		co			:	out	std_logic);
end component;

component nand_op
	port(
	a,b	:	in std_logic_vector(g_data_w-1 downto 0);
	res	:	out std_logic_vector(g_data_w-1 downto 0);
	ov		:	out	std_logic;
	co		:	out	std_logic);
end component;

begin

i1	: SumadorRestador16Bits
	port map(
			a			=> a,
			b			=>	b,
			s_r 		=> s_r_i,
			s			=> res_suma,
			co			=> co_suma,
			ov			=> ov_suma);

i2	: Multi16Sin
	port map(
	a		=> a,
	b		=> b,
	p		=> res_multip2,
	ov		=> ov_multip2,
	co		=> co_multip2);

i3	:	Multi16Con
port map(
	a		=> a,
	b		=> b,
	p			=> res_multip1,
	ov			=> ov_multip1,
	co			=> co_multip1);

i4	: nand_op
	port map(
	a		=> a,
	b	=> b,
	res	=> res_nand,
	ov		=> ov_nand,
	co		=> co_nand);

 res_desp1 <= a(g_data_w-2 downto 0) & '0';
 res_desp2 <= a(g_data_w-1)&a(g_data_w-1 downto 1);
 res_desp3 <= '0'&a(g_data_w-1 downto 1);
 s_r_i <= '0' when op_alu = "0000" else
			'1';
res_comp <= std_logic_vector(to_unsigned(1,g_data_w)) when a < b else
				(others=>'0');
z_suma <= '1' when res_suma = ceros else
			'0';
z_multip1 <= '1' when res_multip1 = ceros else
			'0';
z_multip2 <= '1' when res_multip2 = ceros else
			'0';
z_nand <= '1' when res_nand = ceros else
			'0';
z_desp1 <= '1' when res_desp1 = ceros else
			'0';
z_desp2 <= '1' when res_desp2 = ceros else
			'0';
z_desp3 <= '1' when res_desp3 = ceros else
			'0';
z_comp <= '1' when res_comp = ceros else
			'0';
			
 
 with op_alu select
 res <=
	res_suma when "0000",
	res_suma when "0001",
	res_multip1 when "0010",
	res_multip2 when "0011",
	res_nand when "0100",
	res_desp1 when "0101",
	res_desp2 when "0110",
	res_desp3 when "0111",
	res_comp when "1000",
	(others=>'0') when others;
	
	with op_alu select
	ov <=
		ov_suma when "0000",
		ov_suma when "0001",
		ov_multip1 when "0010",
		ov_multip2 when "0011",
		ov_nand when "0100",
		'0' when "0101",
		'0' when "0110",
		'0' when "0111",
		'0' when "1000",
		'0' when others;
	
	with op_alu select
	co <=
		co_suma when "0000",
		co_suma when "0001",
		co_multip1 when "0010",
		co_multip2 when "0011",
		co_nand when "0100",
		'0' when "0101",
		'0' when "0110",
		'0' when "0111",
		'0' when "1000",
		'0' when others;
		
	with op_alu select
	z <=
		z_suma when "0000",
		z_suma when "0001",
		z_multip1 when "0010",
		z_multip2 when "0011",
		z_nand when "0100",
		z_desp1 when "0101",
		z_desp2 when "0110",
		z_desp3 when "0111",
		z_comp when "1000",
		'0' when others;
	
end structural;

	