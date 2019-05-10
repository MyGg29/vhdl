LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all; 


ENTITY comparateur IS
	PORT (A,B: IN STD_LOGIC_VECTOR(2 downto 0);
			UPDOWN:IN STD_LOGIC;
			EGAL: OUT STD_LOGIC);
END comparateur;

ARCHITECTURE Acomparateur OF comparateur IS 
BEGIN 
	EGAL <= '1' when (B(2 downto 0) = std_logic_vector( unsigned(A) ) AND UPDOWN = '1' ) or (B(2 downto 0) = "000" AND UPDOWN = '0') else '0';
END Acomparateur;