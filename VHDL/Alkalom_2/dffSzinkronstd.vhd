Library IEEE;
use ieee.std_logic_1164.all;

entity dffSzinkronstd is
	port(D, CLK, CLR : in std_logic;
		Q, nQ : out std_logic);
end dffSzinkronstd;

architecture BEH of dffSzinkronstd is
begin
	process(D, CLK, CLR)
	begin
		if CLK'event and CLK = '1' then
			if CLR = '1' then
				Q <= '0';
				nQ <= '1';
			else
				Q <= D;
				nQ <= not(D);
			end if;
		else
			null;
		end if;
	end process;
end BEH;

