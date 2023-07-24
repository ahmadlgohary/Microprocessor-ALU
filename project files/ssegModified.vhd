LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY ssegModified IS
    PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
      leds : OUT STD_LOGIC_VECTOR(0 TO 6);
      even: OUT STD_LOGIC_VECTOR(0 TO 6) ) ;
END ssegModified ;

ARCHITECTURE Behavior OF ssegModified IS
BEGIN
    PROCESS ( bcd )
    BEGIN
        CASE bcd IS -- abcdefg
            WHEN "0000" => leds <= "1111110"; -- 0
									even <= "0111011"; -- y
									
            WHEN "0001" => leds <= "0110000"; -- 1
									even <= "0010101"; -- n
            
				WHEN "0010" => leds <= "1101101"; -- 2
									even <= "0111011"; -- y
				
				WHEN "0011" => leds <= "1111001"; -- 3
									even <= "0010101"; -- n
				
				WHEN "0100" => leds <= "0110011"; -- 4
									even <= "0111011"; -- y
				
				WHEN "0101" => leds <= "1011011"; -- 5
									even <= "0010101"; -- n
				
				WHEN "0110" => leds <= "1011111"; -- 6
									even <= "0111011"; -- y
				
				WHEN "0111" => leds <= "1110000"; -- 7
									even <= "0010101"; -- n
				
				WHEN "1000" => leds <= "1111111"; -- 8
									even <= "0111011"; -- y
				
				WHEN "1001" => leds <= "1110011"; -- 9
									even <= "0010101"; -- n
				
				WHEN "1010" => leds <= "1110111"; -- a
									even <= "0111011"; -- y
				
				WHEN "1011" => leds <= "0011111"; -- b
									even <= "0010101"; -- n
				
				WHEN "1100" => leds <= "1001110"; -- c
									even <= "0111011"; -- y
				
				WHEN "1101" => leds <= "0111101"; -- d
									even <= "0010101"; -- n
				
				WHEN "1110" => leds <= "1101111"; -- e
									even <= "0111011"; -- y
				
				WHEN "1111" => leds <= "1000111"; -- f
									even <= "0010101"; -- n
        END CASE ;
    END PROCESS ;
END Behavior ;