Library IEEE;
use ieee.std_logic_1164.all;

entity dffstd is
	port(D, CLK, CLR : in std_logic;
		Q, nQ : out std_logic);
end dffstd;

architecture BEH of dffstd is
begin
	process(D, CLK, CLR)
	begin
		if CLR = '1' then
			Q <= '0';
			-- nQ <= not(Q);
			nQ <= '1';
		else
			if CLK'event and CLK = '1' then
				Q <= D;
				nQ <= not(D);
			else
				null;
			end if;
		end if;	
	end process;
end BEH;

