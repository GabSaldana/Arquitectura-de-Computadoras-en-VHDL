library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagerom00.all;

entity toprom00 is
	port(
	
		cdiv00: in std_logic_vector(3 downto 0);
		clk0: inout std_logic;
		reset0: in std_logic;
		out7seg0: out std_logic_vector(6 downto 0);
		outFlagrom0: out std_logic;
		outcont0: inout std_logic_vector(3 downto 0);
		offtran0: out std_logic_vector(3 downto 0)
	);
end toprom00;

architecture toprom0 of toprom00 is
begin

	RO01: topdiv00 port map(
		outdiv0 =>clk0,
		cdiv0 => cdiv00
	);
	RO02: rom00 port map(
		inFlagrom => reset0,
		indirrom => outcont0,
		outwordrom => out7seg0,
		outFlagrom => outFlagrom0,
		offtran => offtran0
	);
	RO03: contread00 port map(
		clkcont => clk0,
		inFlagcont => reset0,
		outcont => outcont0
	);

end toprom0;