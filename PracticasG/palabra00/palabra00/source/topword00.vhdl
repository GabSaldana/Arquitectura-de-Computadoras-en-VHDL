library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
use packageword00.all;

entity topword00 is
	port(
		clkr0: in std_logic;
		loadr0: in std_logic;
		outdiv00: inout std_logic;
		cdiv0: in std_logic_vector(3 downto 0);
		leds0: out std_logic_vector(3 downto 0);
		outtran0: inout std_logic_vector(3 downto 0);
		outbcd0: out std_logic_vector(6 downto 0));
end topword00;

architecture  topword0 of topword00 is
signal sleds0: std_logic_vector(3 downto 0);
begin
	outtran0 <= sleds0;
	leds0 <= sleds0;
	M01: topdiv00 port map(indiv0 => cdiv0,
							outdiv0 => outdiv00);
	
	MO2: cring00 port map(clkr => clkr0,
							loadr => loadr0,
							outr => sleds0);
							
	M03: mux00 port map(incont => outtran0,
						outbcd=> outbcd0);
end topword0;