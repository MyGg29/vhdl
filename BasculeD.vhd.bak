LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY basculeD IS
	PORT (D,CLK: IN STD_LOGIC;
			Q,QB: BUFFER STD_LOGIC);
END basculeD;

ARCHITECTURE bascule OF basculeD IS 
	signal tmp: std_logic;
BEGIN 
   PROCESS(CLK)
	BEGIN
			if rising_edge(CLK) then 
				if (D='0') then
					tmp <= '0';
				elsif (D='1') then
					tmp <= '1';
				end if;
			else
				tmp = tmp;
			end if;
			
   END PROCESS;
	Q <= tmp;
	QB <= NOT tmp
END bascule;