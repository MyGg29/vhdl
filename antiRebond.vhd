LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY antiRebond IS
	PORT (ENTREE_BOUTON,CLK_ENABLE,CLK: IN STD_LOGIC;
			UPDOWN:OUT STD_LOGIC);
END antiRebond;

ARCHITECTURE AantiRebond OF antiRebond IS 
	type etat is (ETAT0,ETAT1,ETAT2,ETAT3);
	signal etatPresent, etatFutur : etat;
BEGIN 
	--block F
	process(ENTREE_BOUTON,CLK_ENABLE,etatPresent, etatFutur)
	begin
			if CLK_ENABLE = '0' then
				etatFutur <= etatPresent;
			elsif etatPresent = ETAT0 and ENTREE_BOUTON = '0' and CLK_ENABLE = '1' then
				etatFutur <= ETAT1;
			elsif etatPresent = ETAT0 and (ENTREE_BOUTON = '1' OR CLK_ENABLE = '0') then
				etatFutur <= ETAT0;
			elsif etatPresent = ETAT1 and ENTREE_BOUTON = '1' and CLK_ENABLE = '1' then
				etatFutur <= ETAT2;
			elsif etatPresent = ETAT1 and (ENTREE_BOUTON = '0' or CLK_ENABLE = '0') then
				etatFutur <= ETAT1;
			elsif etatPresent = ETAT2 and ENTREE_BOUTON = '0' and CLK_ENABLE = '1' then
				etatFutur <= ETAT3;
			elsif etatPresent = ETAT2 and (ENTREE_BOUTON = '1' or CLK_ENABLE = '0') then
				etatFutur <= ETAT2;
			elsif etatPresent = ETAT3 and ENTREE_BOUTON = '1' and CLK_ENABLE = '1' then
				etatFutur <= ETAT0;
			elsif etatPresent = ETAT3 and (ENTREE_BOUTON = '0' or CLK_ENABLE = '0') then
				etatFutur <= ETAT3;
			else 
				etatFutur <= ETAT0;
			end if;	
	end process;
	--block G
	process(etatPresent)
	begin
		if etatPresent = ETAT0 OR etatPresent = ETAT3 then 
			UPDOWN <= '0';
		else
			UPDOWN <= '1';
		end if;
	end process;
	--block R
	process(clk,etatFutur, etatPresent)
	begin
		if rising_edge(clk) then
			etatPresent <= etatFutur;
		end if;
	end process;
END AantiRebond;