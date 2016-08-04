library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagekey00.all;

entity topkey00 is
  port(
       clkk: inout std_logic;
	   resetk: in std_logic;
	   inkeyk: in std_logic_vector(3 downto 0);
	   inFlagk: in std_logic;
	   outcontk: inout std_logic_vector(3 downto 0);
	   out7segk: out std_logic_vector(6 downto 0);
	   outrk: inout std_logic_vector(3 downto 0);
	   offtrank: out std_logic_vector(3 downto 0);
       outFlagk: out std_logic);
end topkey00;

architecture topkey0 of topkey00 is
begin
	
  K01: contring00 port map(clkr => clkk,
                           resetr => resetk,
                           outr => outrk);
  
  K02: coder00 port map(clkc => clkk,
                        resetc => resetk,
						inFlagc => inFlagk,
						outFlagc => outFlagk,
						incontc => outrk,
						inkeyc => inkeyk,
						offtranc => offtrank,
						outcontc => outcontk,
                        out7segc => out7segk);

end topkey0;