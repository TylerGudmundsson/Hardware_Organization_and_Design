library IEEE; 
use IEEE.STD_LOGIC_1164.all; 


entity DESIGN2TG_INPUT is 
	port ( 
		BINARY_Y: in STD_LOGIC_VECTOR (8 downto 1); -- 2 Address bits
		BINARY_Z: out STD_LOGIC_VECTOR (8 downto 1)
	); 
end DESIGN2TG_INPUT; 

architecture BEHAVIORAL of DESIGN2TG_INPUT is 
	begin 
	process (BINARY_Y) 

		begin 
		case BINARY_Y is 
			when "01000100" => 
				BINARY_Z <="00000000";--00
			when "01000101" => 
				BINARY_Z <="00000001";--01
			when "01000110" => 
				BINARY_Z <="00000010";--02
			when "01000111" => 
				BINARY_Z <="00000011";--03
			when "01001000" => 
				BINARY_Z <="00000100";--04
			when "01001001" => 
				BINARY_Z <="00000101";--05
			when "01001010" => 
				BINARY_Z <="00000110";--06
			when "01001011" => 
				BINARY_Z <="00000111";--07
			when "01001100" => 
				BINARY_Z <="00001000";--08
			when "01001101" => 
				BINARY_Z <="00001001";--09
			when "01001110" => 
				BINARY_Z <="00010000";--10
			when "01001111" => 
				BINARY_Z <="00010001";--11
			when "01010000" => 
				BINARY_Z <="00010010";--12
			when "01010001" => 
				BINARY_Z <="00010011";--13
			when "01010010" => 
				BINARY_Z <="00010100";--14
			when "01010011" => 
				BINARY_Z <="00010101";--15
			when "01010101" => 
				BINARY_Z <="00010110";--16
			when "01010110" => 
				BINARY_Z <="00010111";--17
			when "01010111" => 
				BINARY_Z <="00011000";--18
			when "01011000" => 
				BINARY_Z <="00011001";--19
			when "01011001" => 
				BINARY_Z <="00100000";--20
			when "01011010" => 
				BINARY_Z <="00100001";--21
			when "01011011" => 
				BINARY_Z <="00100010";--22
			when "01011100" => 
				BINARY_Z <="00100011";--23
			when "01011101" => 
				BINARY_Z <="00100100";--24
			when "01011110" => 
				BINARY_Z <="00100101";--24
			when "01011111" => 
				BINARY_Z <="00100110";--24
			when "01100000" => 
				BINARY_Z <="00100111";--24
			when "01100001" => 
				BINARY_Z <="00101000";--24
			when "01100011" => 
				BINARY_Z <="00101001";--24
			when "01100100" => 
				BINARY_Z <="00110000";--30
			when "01100101" => 
				BINARY_Z <="00110001";--30
			when "01100110" => 
				BINARY_Z <="00110010";--30
			when "01100111" => 
				BINARY_Z <="00110011";--30
			when "01101000" => 
				BINARY_Z <="00110100";--30
			when "01101001" => 
				BINARY_Z <="00110101";--30
			when "01101010" => 
				BINARY_Z <="00110110";--30
			when "01101011" => 
				BINARY_Z <="00110111";--30
			when "01101100" => 
				BINARY_Z <="00111000";--30
			when "01101101" => 
				BINARY_Z <="00111001";--30
			when "01101111" => 
				BINARY_Z <="01000000";--40
			when "01110000" => 
				BINARY_Z <="01000001";--40
			when "01110001" => 
				BINARY_Z <="01000010";--40
			when "01110010" => 
				BINARY_Z <="01000011";--40
			when "01110011" => 
				BINARY_Z <="01000100";--40
			when "01110100" => 
				BINARY_Z <="01000101";--40
			when "01110101" => 
				BINARY_Z <="01000110";--40
			when "01110110" => 
				BINARY_Z <="01000111";--40
			when "01110111" => 
				BINARY_Z <="01001000";--40
			when "01111000" => 
				BINARY_Z <="01001001";--40
			when "01111010" => 
				BINARY_Z <="01010000";--50
			when "01111011" => 
				BINARY_Z <="01010001";--50
			when "01111100" => 
				BINARY_Z <="01010010";--50
			when "01111101" => 
				BINARY_Z <="01010011";--50
			when "01111110" => 
				BINARY_Z <="01010100";--50
			when "01111111" => 
				BINARY_Z <="01010101";--50
			when "10000000" => 
				BINARY_Z <="01010110";--50
			when "10000001" => 
				BINARY_Z <="01010111";--50
			when "10000010" => 
				BINARY_Z <="01011000";--50
			when "10000100" => 
				BINARY_Z <="01011001";--50
			when "10000101" => 
				BINARY_Z <="01100000";--60
			when "10000110" => 
				BINARY_Z <="01100001";--60
			when "10000111" => 
				BINARY_Z <="01100010";--60
			when "10001000" => 
				BINARY_Z <="01100011";--60
			when "10001001" => 
				BINARY_Z <="01100100";--60
			when "10001010" => 
				BINARY_Z <="01100101";--60
			when "10001011" => 
				BINARY_Z <="01100110";--60
			when "10001101" => 
				BINARY_Z <="01100111";--60
			when "10001110" => 
				BINARY_Z <="01101000";--60
			when "10001111" => 
				BINARY_Z <="01101001";--60
			when "10010000" => 
				BINARY_Z <="01110000";--70
			when "10010001" => 
				BINARY_Z <="01110001";--70
			when "10010010" => 
				BINARY_Z <="01110010";--70
			when "10010011" => 
				BINARY_Z <="01110011";--70
			when "10010100" => 
				BINARY_Z <="01110100";--70
			when "10010110" => 
				BINARY_Z <="01110101";--70
			when "10010111" => 
				BINARY_Z <="01110110";--70
			when "10011000" => 
				BINARY_Z <="01110111";--70
			when "10011001" => 
				BINARY_Z <="01111000";--70
			when "10011010" => 
				BINARY_Z <="01111001";--70
			when "10011011" => 
				BINARY_Z <="10000000";--80
			when "10011100" => 
				BINARY_Z <="10000001";--80
			when "10011110" => 
				BINARY_Z <="10000010";--80
			when "10011111" => 
				BINARY_Z <="10000011";--80
			when "10100000" => 
				BINARY_Z <="10000100";--80
			when "10100001" => 
				BINARY_Z <="10000101";--80
			when "10100010" => 
				BINARY_Z <="10000110";--80
			when "10100011" => 
				BINARY_Z <="10000111";--80
			when "10100100" => 
				BINARY_Z <="10001000";--80
			when "10100101" => 
				BINARY_Z <="10001001";--80
			when "10100111" => 
				BINARY_Z <="10010000";--90
			when "10101000" => 
				BINARY_Z <="10010001";--90
			when "10101001" => 
				BINARY_Z <="10010010";--90
			when "10101010" => 
				BINARY_Z <="10010011";--90
			when "10101011" => 
				BINARY_Z <="10010100";--90
			when "10101100" => 
				BINARY_Z <="10010101";--90
			when "10101101" => 
				BINARY_Z <="10010110";--90
			when "10101111" => 
				BINARY_Z <="10010111";--90
			when "10110000" => 
				BINARY_Z <="10011000";--90
			when "10110001" => 
				BINARY_Z <="10011001";--90
			when others => 
				BINARY_Z <="11111111";--90 
		end case; 
	end process; 
end BEHAVIORAL; 