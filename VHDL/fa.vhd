-- Teljes összeadó (full adder, FA) struktúrális
-- implementációja
-- A FA-ek segítségével tetszőleges felbontású
-- összeadó készíthető.
-- https://cyberseclab.eu
 
entity fa is
	port(a, b, ci : in bit;
		s, co : out bit);
end fa;

architecture struct of fa is
begin

	s <= a xor b xor ci;
	co <= (a and b) or (a and ci) or (b and ci);

end struct;

-- signal-ok (belső jel) segítségével
-- történik a FA implementációja
architecture structsignal of fa is
signal	m0, m1, m2 : bit;
begin

	m2 <= b and ci;
	s <= a xor b xor ci;
	co <= m0 or m1 or m2;
	m0 <= a and b;
	m1 <= a and ci;

end structsignal;

-- signal-ok (belső jel) segítségével
-- történik a FA implementációja
-- A signal-ok vectorként kerültek deklarálásra
architecture structsignal2 of fa is
signal	m : bit_vector(2 downto 0);
begin

	m(2) <= b and ci;
	s <= a xor b xor ci;
	co <= m(0) or m(1) or m(2);
	m(0) <= a and b;
	m(1) <= a and ci;

end structsignal2;

-- signal-ok (belső jel) segítségével
-- történik a FA implementációja
-- A signal-ok vectorként kerültek deklarálásra
-- (MSB - LSB sorrend felcserélésre került)
architecture structsignal3 of fa is
signal	m : bit_vector(0 to 2);
begin

	m(2) <= b and ci;
	s <= a xor b xor ci;
	co <= m(0) or m(1) or m(2);
	m(0) <= a and b;
	m(1) <= a and ci;

end structsignal3;
