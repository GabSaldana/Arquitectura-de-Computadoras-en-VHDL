library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

package packagekey00 is

   component topdiv00
  port(
	   cdiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic);
   end component;
   
   component contring00
     port(
       clkr: in std_logic;
	   enable: in std_logic;
       outr: out std_logic_vector(3 downto 0));
   end component;
   
   component coder00
     port(
	   clkc: in std_logic;
       incont: in std_logic_vector(3 downto 0);
	   inkeyc: in std_logic_vector(3 downto 0);
	   offtran: out std_logic_vector(3 downto 0);
	   flag: out std_logic_vector(1 downto 0);
       out7seg: out std_logic_vector(6 downto 0));
   end component;


end packagekey00;