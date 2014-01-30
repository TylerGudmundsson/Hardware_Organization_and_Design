library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_ARITH.all; 
use IEEE.STD_LOGIC_UNSIGNED.all; 
 
entity DESIGN3TG is 
	port ( 
		CLK_Y: in STD_LOGIC; 
		Q_Z: out STD_LOGIC
	); 
end DESIGN3TG; 

architecture BEHAVIORAL of DESIGN3TG is 

	begin 

		P1: process (CLK_Y) 

			variable CURRENT_CNT: STD_LOGIC_VECTOR (20 downto 1); 

			begin 
				if (rising_edge(CLK_Y)) then 
					if ((CURRENT_CNT >= X"00000") and (CURRENT_CNT <= X"1EBB2")) then 
						Q_Z <= '0';
						CURRENT_CNT := CURRENT_CNT + '1'; 
					elsif((CURRENT_CNT >= X"1EBB3") and (CURRENT_CNT <= X"3D764")) then
						Q_Z <= '1';
						CURRENT_CNT := CURRENT_CNT + '1';
					else
						Q_Z <= '0';
						CURRENT_CNT := X"00000";

					end if; 
				end if; 
		end process; 
end BEHAVIORAL; 
