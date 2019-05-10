LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decodeur IS
	PORT (Q: IN STD_LOGIC_VECTOR(2 downto 0);
			S: BUFFER STD_LOGIC_VECTOR(5 downto 0));
END decodeur;

ARCHITECTURE Adecodeur OF decodeur IS 
BEGIN 
   PROCESS (Q) 
   BEGIN
		CASE Q is
			when "000" => S <= "111110";
			when "001" => S <= "111101";
			when "010" => S <= "111011";
			when "011" => S <= "110111";
			when "100" => S <= "101111";
			when "101" => S <= "011111";
			when "110" => S <= "111111";
			when "111" => S <= "111111";
		end case;
   END PROCESS;
END Adecodeur;