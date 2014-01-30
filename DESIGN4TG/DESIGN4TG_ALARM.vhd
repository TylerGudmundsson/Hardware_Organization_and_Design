library IEEE; 
use IEEE.STD_LOGIC_1164.all; 


entity DESIGN6TG_ALARM is 
	port ( 
		CLK_Y: STD_LOGIC;
		NINE_SEC_Y: in STD_LOGIC_VECTOR (4 downto 1);
		FIVE_SEC_Y: in STD_LOGIC_VECTOR (4 downto 1);
		NINE_MIN_Y: in STD_LOGIC_VECTOR (4 downto 1);
		FIVE_MIN_Y: in STD_LOGIC_VECTOR (4 downto 1);
		ALARM_Z: out STD_LOGIC
	); 
end DESIGN6TG_ALARM; 

architecture BEHAVIORAL of DESIGN6TG_ALARM is 
	begin 
	process (CLK_Y,NINE_SEC_Y,FIVE_SEC_Y,NINE_MIN_Y,FIVE_MIN_Y) 
		
		variable CLK_COUNT: STD_LOGIC_VECTOR (16 downto 1);
		variable ALARM_STATE: STD_LOGIC;
		constant ALARM_START: STD_LOGIC_VECTOR (16 downto 1):= "0000000001011001";
		constant ALARM_END: STD_LOGIC_VECTOR (16 downto 1):= "0000001001010000";
	
	begin
	
		CLK_COUNT:= FIVE_MIN_Y & NINE_MIN_Y & FIVE_SEC_Y & NINE_SEC_Y;
		
		if (rising_edge(CLK_Y)) then
			
			if ((CLK_COUNT >= ALARM_START) and (CLK_COUNT <= ALARM_END)) then
				
				ALARM_STATE := not (ALARM_STATE);
				ALARM_Z <= ALARM_STATE;
				
			else
				
				ALARM_STATE := '1';
				ALARM_Z <= '1';
				
			end if;
		end if;
	end process; 
end BEHAVIORAL; 