Library IEEE;

use ieee.std_logic_1164.all;

entity dffsimstd is
	port(Q, nQ : out std_logic);
end dffsimstd;

architecture BEH of dffsimstd is

	component dffstd is
		port(D, CLK, CLR : in std_logic;
			Q, nQ : out std_logic);
	end component;

signal	SD, SCLK, SCLR : std_logic;
begin

	nev: dffstd port map(SD, SCLK, SCLR, Q, nQ);

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
