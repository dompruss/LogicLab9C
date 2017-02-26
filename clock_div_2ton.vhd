library IEEE;
use IEEE.std_logic_1164.all;


entity clock_div_2ton is
	port (Clock_in 	: in	std_logic;
			Reset_in		: in	std_logic;
			Sel			: in	std_logic_vector(1 downto 0);
			Clock_out	: out	std_logic);
end entity;

architecture clock_div_2ton_arch of clock_div_2ton is

component dflipflop
    port    (Clock            : in     std_logic;
				Reset					: in 		std_logic;
				D			        	: in     std_logic;
				Q, Qn            	: out    std_logic);
		end component;




signal cnt	: 		std_logic_vector(37 downto 0);
signal cntn : 		std_logic_vector(37 downto 0);


begin
		
		d0: 	dflipflop port map ( Clock=>Clock_in  , Reset=>Reset_in,D=>cntn(  0  ),Q=>cnt(   0  ),Qn=>cntn( 0  ));
		d1:	dflipflop port map ( Clock=>cntn(0	) , Reset=>Reset_in,D=>cntn(	1	),Q=>cnt(	1	),Qn=>cntn(	1	));
		d2:	dflipflop port map ( Clock=>cntn(1	) , Reset=>Reset_in,D=>cntn(	2	),Q=>cnt(	2	),Qn=>cntn(	2	));
		d3:	dflipflop port map ( Clock=>cntn(2	) , Reset=>Reset_in,D=>cntn(	3	),Q=>cnt(	3	),Qn=>cntn(	3	));
		d4:	dflipflop port map ( Clock=>cntn(3	) , Reset=>Reset_in,D=>cntn(	4	),Q=>cnt(	4	),Qn=>cntn(	4	));
		d5:	dflipflop port map ( Clock=>cntn(4	) , Reset=>Reset_in,D=>cntn(	5	),Q=>cnt(	5	),Qn=>cntn(	5	));
		d6:	dflipflop port map ( Clock=>cntn(5	) , Reset=>Reset_in,D=>cntn(	6	),Q=>cnt(	6	),Qn=>cntn(	6	));
		d7:	dflipflop port map ( Clock=>cntn(6	) , Reset=>Reset_in,D=>cntn(	7	),Q=>cnt(	7	),Qn=>cntn(	7	));
		d8:	dflipflop port map ( Clock=>cntn(7	) , Reset=>Reset_in,D=>cntn(	8	),Q=>cnt(	8	),Qn=>cntn(	8	));
		d9:   dflipflop port map ( Clock=>cntn(8	) , Reset=>Reset_in,D=>cntn(	9	),Q=>cnt(	9	),Qn=>cntn(	9	));
		d10:	dflipflop port map ( Clock=>cntn(9	) , Reset=>Reset_in,D=>cntn(	10	),Q=>cnt(	10	),Qn=>cntn(	10	));
		d11:	dflipflop port map ( Clock=>cntn(10	) , Reset=>Reset_in,D=>cntn(	11	),Q=>cnt(	11	),Qn=>cntn(	11	));
		d12:	dflipflop port map ( Clock=>cntn(11	) , Reset=>Reset_in,D=>cntn(	12	),Q=>cnt(	12	),Qn=>cntn(	12	));
		d13:	dflipflop port map ( Clock=>cntn(12	) , Reset=>Reset_in,D=>cntn(	13	),Q=>cnt(	13	),Qn=>cntn(	13	));
		d14:	dflipflop port map ( Clock=>cntn(13	) , Reset=>Reset_in,D=>cntn(	14	),Q=>cnt(	14	),Qn=>cntn(	14	));
		d15:	dflipflop port map ( Clock=>cntn(14	) , Reset=>Reset_in,D=>cntn(	15	),Q=>cnt(	15	),Qn=>cntn(	15	));
		d16:	dflipflop port map ( Clock=>cntn(15	) , Reset=>Reset_in,D=>cntn(	16	),Q=>cnt(	16	),Qn=>cntn(	16	));
		d17:	dflipflop port map ( Clock=>cntn(16	) , Reset=>Reset_in,D=>cntn(	17	),Q=>cnt(	17	),Qn=>cntn(	17	));
		d18:	dflipflop port map ( Clock=>cntn(17	) , Reset=>Reset_in,D=>cntn(	18	),Q=>cnt(	18	),Qn=>cntn(	18	));
		d19:	dflipflop port map ( Clock=>cntn(18	) , Reset=>Reset_in,D=>cntn(	19	),Q=>cnt(	19	),Qn=>cntn(	19	));
		d20:	dflipflop port map ( Clock=>cntn(19	) , Reset=>Reset_in,D=>cntn(	20	),Q=>cnt(	20	),Qn=>cntn(	20	));
		d21:	dflipflop port map ( Clock=>cntn(20	) , Reset=>Reset_in,D=>cntn(	21	),Q=>cnt(	21	),Qn=>cntn(	21	));		
		d22:	dflipflop port map ( Clock=>cntn(21	) , Reset=>Reset_in,D=>cntn(	22	),Q=>cnt(	22	),Qn=>cntn(	22	));
		d23:	dflipflop port map ( Clock=>cntn(22	) , Reset=>Reset_in,D=>cntn(	23	),Q=>cnt(	23	),Qn=>cntn(	23	));
		d24:	dflipflop port map ( Clock=>cntn(23	) , Reset=>Reset_in,D=>cntn(	24	),Q=>cnt(	24	),Qn=>cntn(	24	));
		d25:	dflipflop port map ( Clock=>cntn(24	) , Reset=>Reset_in,D=>cntn(	25	),Q=>cnt(	25	),Qn=>cntn(	25	));
		d26:	dflipflop port map ( Clock=>cntn(25	) , Reset=>Reset_in,D=>cntn(	26	),Q=>cnt(	26	),Qn=>cntn(	26	));
		d27:	dflipflop port map ( Clock=>cntn(26	) , Reset=>Reset_in,D=>cntn(	27	),Q=>cnt(	27	),Qn=>cntn(	27	));
		d28:	dflipflop port map ( Clock=>cntn(27	) , Reset=>Reset_in,D=>cntn(	28	),Q=>cnt(	28	),Qn=>cntn(	28	));
		d29:	dflipflop port map ( Clock=>cntn(28	) , Reset=>Reset_in,D=>cntn(	29	),Q=>cnt(	29	),Qn=>cntn(	29	));
		d30:	dflipflop port map ( Clock=>cntn(29	) , Reset=>Reset_in,D=>cntn(	30	),Q=>cnt(	30	),Qn=>cntn(	30	));
		d31:	dflipflop port map ( Clock=>cntn(30	) , Reset=>Reset_in,D=>cntn(	31	),Q=>cnt(	31	),Qn=>cntn(	31	));
		d32:	dflipflop port map ( Clock=>cntn(31	) , Reset=>Reset_in,D=>cntn(	32	),Q=>cnt(	32	),Qn=>cntn(	32	));
		d33:	dflipflop port map ( Clock=>cntn(32	) , Reset=>Reset_in,D=>cntn(	33	),Q=>cnt(	33	),Qn=>cntn(	33	));
		d34:	dflipflop port map ( Clock=>cntn(33	) , Reset=>Reset_in,D=>cntn(	34	),Q=>cnt(	34	),Qn=>cntn(	34	));
		d35:	dflipflop port map ( Clock=>cntn(34	) , Reset=>Reset_in,D=>cntn(	35	),Q=>cnt(	35	),Qn=>cntn(	35	));
		d36:	dflipflop port map ( Clock=>cntn(35	) , Reset=>Reset_in,D=>cntn(	36	),Q=>cnt(	36	),Qn=>cntn(	36	));
		d37:	dflipflop port map ( Clock=>cntn(36	) , Reset=>Reset_in,D=>cntn(	37	),Q=>cnt(	37	),Qn=>cntn(	37	));
		
	CLOCK_Output : process ( Clock_in, Reset_in, Sel)
		begin
		
			if   (Sel="00") then
				Clock_out <= cntn(0);
			elsif(Sel="01") then
				Clock_out <= cntn(19);
			elsif(Sel="10") then
				Clock_out <= cntn(24);
			else
				Clock_out <= cntn(26);
			end if;
	end process;
			
end architecture;