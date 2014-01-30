library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_ARITH.all; 
use IEEE.STD_LOGIC_UNSIGNED.all; 
 
entity DESIGN4TG_FIVE_CNT is 
	port ( 
		SYN_RST_LY: in STD_LOGIC;
		CLK_Y: in STD_LOGIC; 
		TRIG_Y: in STD_LOGIC;
		TRIG_Z: out STD_LOGIC;
		HEX_Z: out STD_LOGIC_VECTOR(4 downto 1)
		
	); 
end DESIGN4TG_FIVE_CNT; 

architecture BEHAVIORAL of DESIGN4TG_FIVE_CNT is 

	begin 

		P1: process (CLK_Y,TRIG_Y,SYN_RST_LY) 

			variable CURRENT_CNT: STD_LOGIC_VECTOR (4 downto 1); 

			begin 
				
				if (rising_edge(CLK_Y)) and (SYN_RST_LY = '0') then
			
						TRIG_Z <= '0';
						CURRENT_CNT := "0000";
						HEX_Z <= "0000";
							
				elsif (rising_edge(CLK_Y)) and (SYN_RST_LY = '1') and (TRIG_Y = '1') then 
				
					if (CURRENT_CNT < "0100")then	
																									
						TRIG_Z <= '0';
						CURRENT_CNT := CURRENT_CNT + '1';
						HEX_Z <= CURRENT_CNT;
					
					elsif (CURRENT_CNT = "0100")then
						
						TRIG_Z <= '1';
						CURRENT_CNT := CURRENT_CNT + '1';
						HEX_Z <= CURRENT_CNT;
																					
					elsif (CURRENT_CNT = "0101")then
						
						TRIG_Z <= '0';
						CURRENT_CNT := "0000";
						HEX_Z <= CURRENT_CNT;							
						
					else
					
						TRIG_Z <= '0';
						CURRENT_CNT := "0000";
						HEX_Z <= CURRENT_CNT;
						
					end if;	
				end if;
		end process; 
end BEHAVIORAL; 