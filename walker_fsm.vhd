library IEEE;
use IEEE.std_logic_1164.all;

entity walker_fsm is
    port    (Clock, Reset     : in     std_logic;					
				Direction        	: in     std_logic;
				Hex					: out    std_logic_Vector(2 downto 0);
				Hex_Out				: out 	std_logic_Vector(6 downto 0));
end entity;

architecture walker_fsm_arch of walker_fsm is
	type State_Type is (Start,DH00,DH01,DH02,DH03,DH04,DH10,DH11,DH12,DH13,DH14,DH20,DH21,DH22,DH23,DH24,DH30,DH31,DH32,DH33,DH34,DH40,DH41,DH42,DH43,DH44,DH50,DH51,DH52,DH53,DH54);
	signal current_state, next_state : State_Type;

   begin
	
-------------------------------------------------------
STATE_MEMORY : process (Clock, Reset)
	begin
		if (reset<= '0') then
			current_state <= Start;
			elsif (Clock'event and Clock='1') then
				current_state <= next_State;
		end if;
	end process;
	
-------------------------------------------------------

NEXT_STATE_LOGIC : process (current_state, Direction)
	begin
		Case (current_state) is
			when Start=>  if(Direction<= '0' ) then
					next_state<= DH00;
				else
					next_state <= DH54;
				end if;
			when DH00=>  if(Direction<= '0' ) then
					next_state<= DH01;
				else
					next_state <= START;
				end if;
			when DH01=>  if(Direction<= '0' ) then
					next_state<= DH02;
				else
					next_state <= DH00;
				end if;
			when DH02=>  if(Direction<= '0' ) then
					next_state<= DH03;
				else
					next_state <= DH01;
				end if;
									
			when DH03=>  if(Direction<= '0' ) then
					next_state<= DH04;
				else
					next_state <= DH02;
				end if;
			when DH04=>  if(Direction<= '0' ) then
					next_state<= DH10;
				else
					next_state <= DH03;
				end if;						
			when DH10=>  if(Direction<= '0' ) then
					next_state<= DH11;
				else
					next_state <= DH04;
				end if;
			when DH11=>  if(Direction<= '0' ) then
					next_state<= DH12;
				else
					next_state <= DH10;
				end if;
			when DH12=>  if(Direction<= '0' ) then
					next_state<= DH13;
				else
					next_state <= DH11;
				end if;
									
			when DH13=>  if(Direction<= '0' ) then
					next_state<= DH14;
				else
					next_state <= DH12;
				end if;
			when DH14=>  if(Direction<= '0' ) then
					next_state<= DH20;
				else
					next_state <= DH13;
				end if;
			when DH20=>  if(Direction<= '0' ) then
					next_state<= DH21;
				else
					next_state <= DH14;
				end if;
			when DH21=>  if(Direction<= '0' ) then
					next_state<= DH22;
				else
					next_state <= DH20;
				end if;
			when DH22=>  if(Direction<= '0' ) then
					next_state<= DH23;
				else
					next_state <= DH21;
				end if;
									
			when DH23=>  if(Direction<= '0' ) then
					next_state<= DH24;
				else
					next_state <= DH22;
				end if;
			when DH24=>  if(Direction<= '0' ) then
					next_state<= DH30;
				else
					next_state <= DH23;
				end if;
			when DH30=>  if(Direction<= '0' ) then
					next_state<= DH31;
				else
					next_state <= DH24;
				end if;
			when DH31=>  if(Direction<= '0' ) then
					next_state<= DH32;
				else
					next_state <= DH30;
				end if;
			when DH32=>  if(Direction<= '0' ) then
					next_state<= DH33;
				else
					next_state <= DH31;
				end if;
									
			when DH33=>  if(Direction<= '0' ) then
					next_state<= DH34;
				else
					next_state <= DH32;
				end if;
			when DH34=>  if(Direction<= '0' ) then
					next_state<= DH40;
				else
					next_state <= DH33;
				end if;
			when DH40=>  if(Direction<= '0' ) then
					next_state<= DH41;
				else
					next_state <= DH34;
				end if;
			when DH41=>  if(Direction<= '0' ) then
					next_state<= DH42;
				else
					next_state <= DH40;
				end if;
			when DH42=>  if(Direction<= '0' ) then
					next_state<= DH43;
				else
					next_state <= DH41;
				end if;			
			when DH43=>  if(Direction<= '0' ) then
					next_state<= DH44;
				else
					next_state <= DH42;
				end if;
			when DH44=>  if(Direction<= '0' ) then
					next_state<= DH50;
				else
					next_state <= DH43;
				end if;
			when DH50=>  if(Direction<= '0' ) then
					next_state<= DH51;
				else
					next_state <= DH44;
				end if;
			when DH51=>  if(Direction<= '0' ) then
					next_state<= DH52;
				else
					next_state <= DH50;
				end if;
			when DH52=>  if(Direction<= '0' ) then
					next_state<= DH53;
				else
					next_state <= DH51;
				end if;			
			when DH53=>  if(Direction<= '0' ) then
					next_state<= DH54;
				else
					next_state <= DH52;
				end if;
			when DH54=>  if(Direction<= '0' ) then
					next_state<= Start;
				else
					next_state <= DH53;
				end if;
			end case;
	end process;
		
---------------------------------------------		

OUTPUT_LOGIC : process (current_state)
	begin
		case (current_state) is
			when Start=>
				Hex<= "000";
				Hex_Out<= "0000000";
			when DH00=>
				Hex<= "000";
				Hex_Out<= "0001000";
			when DH01=>
				Hex<= "000";
				Hex_Out<= "0000100";
			when DH02=>
				Hex<= "000";
				Hex_Out<= "1000000";
			when DH03=>
				Hex<= "000";
				Hex_Out<= "0100000";
			when DH04=>				
				Hex<= "000";
				Hex_Out<= "0000001";		
			when DH10=>
				Hex<= "001";
				Hex_Out<= "0000001";
			when DH11=>
				Hex<= "001";
				Hex_Out<= "0100000";
			when DH12=>
				Hex<= "001";
				Hex_Out<= "1000000";
			when DH13=>
				Hex<= "001";
				Hex_Out<= "0000100";
			when DH14=>				
				Hex<= "001";
				Hex_Out<= "0001000";
			when DH20=>
				Hex<= "010";
				Hex_Out<= "0001000";
			when DH21=>
				Hex<= "010";
				Hex_Out<= "0000100";
			when DH22=>
				Hex<= "010";
				Hex_Out<= "1000000";
			when DH23=>
				Hex<= "010";
				Hex_Out<= "0100000";
			when DH24=>				
				Hex<= "010";
				Hex_Out<= "0000001";
			when DH30=>
				Hex<= "011";
				Hex_Out<= "0000001";
			when DH31=>
				Hex<= "011";
				Hex_Out<= "0100000";
			when DH32=>
				Hex<= "011";
				Hex_Out<= "1000000";
			when DH33=>
				Hex<= "011";
				Hex_Out<= "0000100";
			when DH34=>				
				Hex<= "011";
				Hex_Out<= "0001000";
			when DH40=>
				Hex<= "100";
				Hex_Out<= "0001000";
			when DH41=>
				Hex<= "100";
				Hex_Out<= "0000100";
			when DH42=>
				Hex<= "100";
				Hex_Out<= "1000000";
			when DH43=>
				Hex<= "100";
				Hex_Out<= "0100000";
			when DH44=>				
				Hex<= "100";
				Hex_Out<= "0000001";
			when DH50=>
				Hex<= "101";
				Hex_Out<= "0000001";
			when DH51=>
				Hex<= "101";
				Hex_Out<= "0100000";
			when DH52=>
				Hex<= "101";
				Hex_Out<= "1000000";
			when DH53=>
				Hex<= "101";
				Hex_Out<= "0000100";
			when DH54=>				
				Hex<= "101";
				Hex_Out<= "0001000";
			end case;
	end process;

end architecture;