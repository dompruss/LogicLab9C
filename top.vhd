library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity top is
	port 	(RESET_N : in std_logic;
			CLOCK : in std_logic;
			LEDR  : out std_logic_vector (9 downto 0);
			SW 	: in  std_logic_vector (3 downto 0);
			HEX0	: out std_logic_vector (6 downto 0);
			HEX1	: out std_logic_vector (6 downto 0);
			HEX2	: out std_logic_vector (6 downto 0);
			HEX3	: out std_logic_vector (6 downto 0);
			HEX4	: out std_logic_vector (6 downto 0);
			HEX5 	: out std_logic_vector (6 downto 0);
			GPIO_0: out std_logic_vector (7 downto 0));
end entity;


architecture top_arch of top is

component clock_div_2ton is
	port (Clock_in 	: in	std_logic;
			Reset_in		: in	std_logic;
			Sel			: in	std_logic_vector(1 downto 0);
			Clock_out	: out	std_logic);
end component;

component char_decoder is 
	port (BIN_IN   : in  std_logic_vector (3 downto 0); 
			HEX_OUT  : out std_logic_vector (6 downto 0)); 
end component; 

	signal CNT_int : integer range 0 to 16777215;
	signal CNT		: std_logic_vector (23 downto 0);
	signal CLK_out	: std_logic;
	
begin

	CD : clock_div_2ton port map (Clock_in => CLOCK, Reset_in=>RESET_N, Sel=>SW(1 downto 0), Clock_Out=>CLK_out);
	C0 : char_decoder port map (BIN_IN => CNT(3 downto 0), HEX_OUT => HEX0); 
	C1 : char_decoder port map (BIN_IN => CNT(7 downto 4), HEX_OUT => HEX1); 
	C2 : char_decoder port map (BIN_IN => CNT(11 downto 8), HEX_OUT => HEX2); 
	C3 : char_decoder port map (BIN_IN => CNT(15 downto 12), HEX_OUT => HEX3); 
	C4 : char_decoder port map (BIN_IN => CNT(19 downto 16), HEX_OUT => HEX4); 
	C5 : char_decoder port map (BIN_IN => CNT(23 downto 20), HEX_OUT => HEX5);
	LEDR<= CNT(9 downto 0);
	GPIO_0<= CNT(7 downto 0);
	
	BIT_COUNTER: process (CLK_out,RESET_N) 
		begin
			if(RESET_N = '0') then
				CNT_int <= 0;
			elsif (Clock'event and Clock='1') then
					if (CNT_int= 16777215) then
						CNT_int <= 0;
					else
						CNT_int <= CNT_int +1;
					end if;
			end if;
		end process;

	CNT <= std_logic_vector( to_unsigned(Cnt_int,24) );

end architecture;