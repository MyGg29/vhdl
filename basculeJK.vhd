LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY basculeJK IS
	PORT (J,K,clk,reset: IN STD_LOGIC;
			Q: BUFFER STD_LOGIC);
END basculeJK;

ARCHITECTURE bascule OF basculeJK IS 
	signal tmp: std_logic;
BEGIN 
   PROCESS (clk) 
   BEGIN
		if reset = '0' then
			if rising_edge(clk) then 
				if (J='0' and K='0') then
					tmp <= tmp;
				elsif (J='0' and K='1') then
					tmp <= '0';
				elsif (J='1' and K='0') then
					tmp <= '1';
				elsif (J='1' and K='1') then
					tmp <= not (tmp);
				end if;
			end if;
		else
			tmp <= '0';
		end if;
   END PROCESS;
	Q<= tmp;
END bascule;