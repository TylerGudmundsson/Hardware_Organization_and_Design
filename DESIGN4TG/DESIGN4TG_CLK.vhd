library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_ARITH.all; 
use IEEE.STD_LOGIC_UNSIGNED.all; 
 
entity DESIGN4TG_CLK is 
	port ( 
		SYN_RST_LY: in STD_LOGIC;
		CLK_Y: in STD_LOGIC; 
		Q_Z: out STD_LOGIC
	); 
end DESIGN4TG_CLK; 

architecture BEHAVIORAL of DESIGN4TG_CLK is 

	begin 

		P1: process (CLK_Y,SYN_RST_LY) 

			variable CURRENT_CNT: STD_LOGIC_VECTOR (20 downto 1); 

			begin
		
				if (rising_edge(CLK_Y)) and (SYN_RST_LY = '0') then 
					
					Q_Z <= '0';
					CURRENT_CNT := X"00000";
					
				elsif (rising_edge(CLK_Y)) and (SYN_RST_LY = '1') then
					
					CURRENT_CNT := CURRENT_CNT + '1'; 
											
					if (CURRENT_CNT <= X"C011EB") then 
						
						Q_Z <= '0';						
						
					elsif((CURRENT_CNT < X"C011EB") and (CURRENT_CNT <= X"18023D7")) then
						
						Q_Z <= '1';
						
					else
					
						Q_Z <= '0';
						CURRENT_CNT := X"00000";

					end if; 
				end if; 
		end process; 
end BEHAVIORAL; 
