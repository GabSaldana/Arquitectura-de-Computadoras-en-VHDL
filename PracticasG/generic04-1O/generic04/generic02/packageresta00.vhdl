library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

package packageresta00 is

  component resta00
    port(
	   reset: in std_logic;
       Ain: in std_logic_vector(7 downto 0);
	   Bin: in std_logic_vector(7 downto 0);
       Aoutr: out std_logic_vector(7 downto 0);
	   Boutr: out std_logic_vector(7 downto 0);
	   SLin: in std_logic;
	   SLout: out std_logic;
	   LEDin: in std_logic;
	   LEDout: out std_logic;
	   Sin: in std_logic_vector(7 downto 0);
       Sout: out std_logic_vector(7 downto 0));
  end component;
  
  component adder8bita00
  port( 
	Aai: inout std_logic_vector ( 7 downto 0 );
	Bai: inout std_logic_vector ( 7 downto 0 );
	SaL: inout std_logic ;
	LEDa: inout std_logic ;
	Sao: inout std_logic_vector ( 7 downto 0 ) );
  end component;

end packageresta00;