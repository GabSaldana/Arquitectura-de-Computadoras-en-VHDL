library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagediv00.all;

entity topdiv00 is
  port(
	   cdiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic);
end topdiv00;

architecture topdiv0 of topdiv00 is
signal soscout0: std_logic;
begin

  OS00: osc00 port map(osc_int => soscout0);
  
  OS01: div00 port map(clkdiv => soscout0,
                       indiv => cdiv0,
                       outdiv => outdiv0);
  
  
end topdiv0;