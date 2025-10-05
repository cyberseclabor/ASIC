entity dff is
	port(D, CLK, CLR : in bit;
		Q, nQ : out bit);
end dff;

architecture BEH of dff is
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
