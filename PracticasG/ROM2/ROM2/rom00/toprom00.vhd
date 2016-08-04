library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagerom00.all;

entity toprom00 is
	port(
			clk0: inout std_logic;
			cdiv00: in std_logic_vector(3 downto 0);
			reset0: in std_logic;
			out7seg0: out std_logic_vector(6 downto 0);
			outFlagrom0: out std_logic;
			offtran0: inout std_logic_vector(3 downto 0);
			outcont0: inout std_logic_vector(3 downto 0)
		);
end toprom00;
architecture toprom0 of toprom00 is
begin
	R001: toposc00 port map(outdiv0 => clk0,
							cdiv0 => cdiv00);
							
    R004: contring00 port map(clkr => clk0,
                             enable => reset0,
                             outr => offtran0);
							 
	R002: rom00 port map(inFlagrom => reset0,
						 indirrom => outcont0,
						 outwordrom => out7seg0,
						 outFlagrom => outFlagrom0,
						 offtran => offtran0
						);
	R003: contread00 port map(clkcont => clk0,
							  inFlagcont => reset0,
							  outcont => outcont0			
							  );
end toprom0;
