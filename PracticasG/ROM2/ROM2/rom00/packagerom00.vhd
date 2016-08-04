library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

package packagerom00 is
	component toposc00
		port(
	   cdiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic);
	end component;
	
	component rom00
		port(
			inFlagrom: in std_logic;
			indirrom: in std_logic_vector(3 downto 0);
			outwordrom: out std_logic_vector(6 downto 0);
			outFlagrom: out std_logic;
			offtran: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component contread00
		port(
		clkcont: in std_logic;
		inFlagcont: in std_logic;
		outcont:inout std_logic_vector(3 downto 0));
	end component;
	
	 component contring00
    port(
       clkr: in std_logic;
	   enable: in std_logic;
       outr: out std_logic_vector(3 downto 0));
  end component;
end packagerom00;