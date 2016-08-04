library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packageoscint00.all;

entity toposc00 is
   port(
        indiv0: in std_logic_vector(3 downto 0);
        outdiv0: inout std_logic);
   attribute loc: string;
   attribute loc of indiv0: signal is "68,70,69,71";
   attribute loc of outdiv0: signal is "109";
end toposc00;

architecture toposc0 of toposc00 is
signal sosc_int, sstdby: std_logic;
begin 
 
    U00: oscint00 port map(stdby => sstdby,
	                       osc_int => sosc_int);
	
	U01: div00 port map(clkdiv => sosc_int,
	                    indiv => indiv0,
	                    outdiv => outdiv0);
    U03: enab00 port map(enable0 => sstdby);

end toposc0;