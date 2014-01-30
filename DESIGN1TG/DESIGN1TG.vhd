library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity DESIGN1TG is 
	port ( 
		ASY_RST_LY: in STD_LOGIC; -- Input 
		A_Y: in STD_LOGIC; -- Input 
		B_Y: in STD_LOGIC; -- Input 
		C_Y: in STD_LOGIC; -- Input 
		D_Y: in STD_LOGIC; -- Input 
		A_HEX_LED_LZ: out STD_LOGIC; -- Output 
		B_HEX_LED_LZ: out STD_LOGIC;-- Output 
		C_HEX_LED_LZ: out STD_LOGIC; -- Output 
		D_HEX_LED_LZ: out STD_LOGIC; -- Output 
		E_HEX_LED_LZ: out STD_LOGIC; -- Output 
		F_HEX_LED_LZ: out STD_LOGIC; -- Output 
		G_HEX_LED_LZ: out STD_LOGIC; -- Output
		DP_HEX_LED_LZ: out STD_LOGIC -- Output  
	); 
end DESIGN1TG; 
 
architecture BEHAVIORAL of DESIGN1TG is 
begin
	process (A_Y, B_Y, C_Y, D_Y, ASY_RST_LY)
	begin 
		if (ASY_RST_LY = '0') then 
			 A_HEX_LED_LZ<='1';
			 B_HEX_LED_LZ<='1';
			 C_HEX_LED_LZ<='1';
			 D_HEX_LED_LZ<='1';
			 E_HEX_LED_LZ<='1';
			 F_HEX_LED_LZ<='1';
			 G_HEX_LED_LZ<='1';
			 DP_HEX_LED_LZ<='1';
		elsif ((A_Y = '0') and (B_Y = '0') and (C_Y = '0') and (D_Y = '0')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '1';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '0') and (B_Y = '0') and (C_Y = '0') and (D_Y = '1')) then
			A_HEX_LED_LZ <= '1';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '1';
			E_HEX_LED_LZ <= '1';
			F_HEX_LED_LZ <= '1';
			G_HEX_LED_LZ <= '1';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '0') and (B_Y = '0') and (C_Y = '1') and (D_Y = '0')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '1';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '1';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '0') and (B_Y = '0') and (C_Y = '1') and (D_Y = '1')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '1';
			F_HEX_LED_LZ <= '1';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '0') and (B_Y = '1') and (C_Y = '0') and (D_Y = '0')) then
			A_HEX_LED_LZ <= '1';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '1';
			E_HEX_LED_LZ <= '1';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '0') and (B_Y = '1') and (C_Y = '0') and (D_Y = '1')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '1';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '1';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '0') and (B_Y = '1') and (C_Y = '1') and (D_Y = '0')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '1';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '0') and (B_Y = '1') and (C_Y = '1') and (D_Y = '1')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '1';
			E_HEX_LED_LZ <= '1';
			F_HEX_LED_LZ <= '1';
			G_HEX_LED_LZ <= '1';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '1') and (B_Y = '0') and (C_Y = '0') and (D_Y = '0')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '1') and (B_Y = '0') and (C_Y = '0') and (D_Y = '1')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '1';
			E_HEX_LED_LZ <= '1';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '1') and (B_Y = '0') and (C_Y = '1') and (D_Y = '0')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '1';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '1') and (B_Y = '0') and (C_Y = '1') and (D_Y = '1')) then
			A_HEX_LED_LZ <= '1';
			B_HEX_LED_LZ <= '1';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '1') and (B_Y = '1') and (C_Y = '0') and (D_Y = '0')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '1';
			C_HEX_LED_LZ <= '1';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '1';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '1') and (B_Y = '1') and (C_Y = '0') and (D_Y = '1')) then
			A_HEX_LED_LZ <= '1';
			B_HEX_LED_LZ <= '0';
			C_HEX_LED_LZ <= '0';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '1';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		elsif ((A_Y = '1') and (B_Y = '1') and (C_Y = '1') and (D_Y = '0')) then
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '1';
			C_HEX_LED_LZ <= '1';
			D_HEX_LED_LZ <= '0';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		else
			A_HEX_LED_LZ <= '0';
			B_HEX_LED_LZ <= '1';
			C_HEX_LED_LZ <= '1';
			D_HEX_LED_LZ <= '1';
			E_HEX_LED_LZ <= '0';
			F_HEX_LED_LZ <= '0';
			G_HEX_LED_LZ <= '0';
			DP_HEX_LED_LZ <= '1';
		
		end if; 
	end process;
end BEHAVIORAL; 