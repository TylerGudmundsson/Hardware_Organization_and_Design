library IEEE; 
use IEEE.STD_LOGIC_1164.all; 


entity DESIGN2TG_LED is 
	port ( 
		LED_Y: in STD_LOGIC_VECTOR (4 downto 1); -- 2 Address bits
		LED_Z: out STD_LOGIC_VECTOR (8 downto 1)
	); 
end DESIGN2TG_LED; 

architecture BEHAVIORAL of DESIGN2TG_LED is 
	begin 
	process (LED_Y) 

		begin 
		case LED_Y is 
		
		when "0000" => LED_Z <="00000011";--0
		when "0001" => LED_Z <="10011111";--1
		when "0010" => LED_Z <="00100101";--2
		when "0011" => LED_Z <="00001101";--3
		when "0100" => LED_Z <="10011001";--4
		when "0101" => LED_Z <="01001001";--5
		when "0110" => LED_Z <="01000001";--6
		when "0111" => LED_Z <="00011111";--7
		when "1000" => LED_Z <="00000001";--8
		when "1001" => LED_Z <="00001001";--9
		when others => LED_Z <="10010001";--H
		
		end case; 
	end process; 
end BEHAVIORAL; 
