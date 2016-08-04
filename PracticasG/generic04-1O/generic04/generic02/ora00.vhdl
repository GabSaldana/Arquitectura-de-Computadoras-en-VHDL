library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

entity ora00 is

port( 
	Aao: in std_logic;
	Bao: in std_logic;
	Yao: out std_logic);
end ora00;

architecture ora0 of ora00 is
begin
  Yao <= Aao or Bao;
end ora0;