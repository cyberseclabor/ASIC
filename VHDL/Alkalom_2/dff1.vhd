entity dff1 is
	port(--D, CLK, CLR : in bit;
		Q, nQ : out bit);
end dff1;

architecture BEH of dff1 is
signal	D, CLK, CLR : bit;
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
	
	process
	begin
		D <= '0';
		CLR <= '0';
		CLK <= '0';
		wait for 10 ns;
		D <= '1';
		CLR <= '1';
		wait for 10 ns;
		CLR <= '0';
		wait for 10 ns;
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		D <= '0';
		wait for 100 ns;
	end process;
	
	
end BEH;
