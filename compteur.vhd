LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all; 


ENTITY compteur IS
	PORT (clk,raz,enable, updown: IN STD_LOGIC;
			Q: OUT STD_LOGIC_VECTOR(2 downto 0));
END compteur;

ARCHITECTURE compteur OF compteur IS 
component basculeJK
	port(J,K,clk,reset:IN std_logic;
			Q:BUFFER std_logic);
end component;
--signal QB1,QB2,QB3:std_logic;
signal tmp: std_logic_vector(2 downto 0);
BEGIN 
	
	--bit1: basculeJK port map (enable,enable,clk,raz,QB1);
	--bit2: basculeJK port map (enable,enable,NOT QB1,raz,QB2);
	--bit3: basculeJK port map (enable,enable,NOT QB2,raz,QB3);
	
	process(updown,clk,enable,raz)
	begin
		if rising_edge(clk) then
			if raz = '1' then
				if updown = '1' then
					tmp <= "000";
				else
					tmp <= "101";
				end if;
			else
				if enable = '0' then
					tmp <= tmp;
				else
					if updown = '1' then
						tmp <= std_logic_vector( unsigned(tmp) + 1);
					else 
						tmp <= std_logic_vector( unsigned(tmp) - 1);
					end if;
				end if;
			end if;
			
		end if;
	end process;
	Q(0) <= tmp(0);
	Q(1) <= tmp(1);
	Q(2) <= tmp(2);
END compteur;