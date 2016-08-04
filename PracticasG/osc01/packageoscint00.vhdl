library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

package packageoscint00 is

  component oscint00
    port(
       stdby: in std_logic;
	   osc_int: out std_logic);
  end component;

  component div00
  port(
        clkdiv: in std_logic;
		indiv: in std_logic_vector(3 downto 0);
        outdiv: inout std_logic);
  end component;

  component enab00
    port(
       enable0: in std_logic);
  end component;

end packageoscint00;