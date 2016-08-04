library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

entity nxora00 is
  port(
       Aanx: in std_logic;
	   Banx: in std_logic;
       Yanx: out std_logic);
end nxora00;

architecture nxora0 of nxora00 is
begin
  Yanx <= not(Aanx xor Banx);
end nxora0;