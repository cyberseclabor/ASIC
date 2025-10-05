entity dffsim is
	port(Q, nQ : out bit);
end dffsim;

architecture BEH of dffsim is

	component dff is
		port(D, CLK, CLR : in bit;
			Q, nQ : out bit);
	end component;

signal	SD, SCLK, SCLR : bit;
begin

	nev: dff port map(SD, SCLK, SCLR, Q, nQ);

	-- nev: dff port map(SCLR, SD, SCLK, Q, nQ);

	process
	begin
		SD <= '0';
		SCLR <= '0';
		SCLK <= '0';
		wait for 10 ns;
		SD <= '1';
		SCLR <= '1';
		wait for 10 ns;
		SCLR <= '0';
		wait for 10 ns;
		SCLK <= '1';
		wait for 10 ns;
		SCLK <= '0';
		SD <= '0';
		wait for 100 ns;
	end process;
	
	
end BEH;

