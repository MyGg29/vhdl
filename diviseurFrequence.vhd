LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all; 

ENTITY diviseurFrequence IS
	PORT (CLK: IN STD_LOGIC;
			OK: BUFFER STD_LOGIC);
END diviseurFrequence;

ARCHITECTURE Adiv OF diviseurFrequence IS 
signal compteur : std_logic_vector(23 downto 0);
BEGIN 
   PROCESS (CLK) 
   BEGIN
		if rising_edge(CLK) then
			compteur <= std_logic_vector( unsigned(compteur) + 1);
			--if compteur = "000000000000000000000101" then
			if compteur = "011111110010100000010101" then
				OK<= '1';
				compteur <= "000000000000000000000000";
			else 
				OK<= '0';
			end if;
		end if;
   END PROCESS;
END Adiv;