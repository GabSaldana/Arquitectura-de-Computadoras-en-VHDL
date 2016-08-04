library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity enab00 is
  port(
       enable0: out std_logic);
end enab00;

architecture ena of enab00 is
begin
  enable0 <= '0'; 
end ena;