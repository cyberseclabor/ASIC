Library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity szamol is
	port(CLK, CLR : in std_logic;
		Q : out std_logic_vector(3 downto 0));
end szamol;

architecture BEH of szamol is
signal	SQ : std_logic_Vector(3 downto 0);
begin

	process(C, CLK, CLR)
	begin
		if CLR = '1' then
			SQ <= "0000";
		else
			if CLK'event and CLK = '1' then
				SQ <= SQ + 1;
			else
				null;
			end if;
		end if;
	end process;


end BEH;

