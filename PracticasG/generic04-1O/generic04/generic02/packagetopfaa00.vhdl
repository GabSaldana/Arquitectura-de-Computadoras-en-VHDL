library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

package packagetopfaa00 is

  component tophaa00
    port( 
	  Aa0: in std_logic;
	  Ba0: in std_logic;
	  Sa0: out std_logic;
	  Ca0: out std_logic);
   end component;
  
  component ora00
  port( 
       Aao: in std_logic;
	   Bao: in std_logic;
	   Yao: out std_logic);
  end component;

end packagetopfaa00;