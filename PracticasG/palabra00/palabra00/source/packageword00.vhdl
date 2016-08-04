library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

package packageword00 is

	component topdiv00
	  port(
		   --clk0: in std_logic;
		   --stdby0: in std_logic;
		   indiv0: in std_logic_vector(3 downto 0);
		   --osc_int0: out std_logic;
		   outdiv0: inout std_logic);
	end component;

	component cring00
		port(
			clkr: in std_logic;
			loadr: in std_logic;
			outr: out std_logic_vector(3 downto 0));
	end component;
	
	component mux00
		port(
			incont: in std_logic_vector(3 downto 0);
			outbcd: out std_logic_vector(6 downto 0)
			);
	end component;

end packageword00;