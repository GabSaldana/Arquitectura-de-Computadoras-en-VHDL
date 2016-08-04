library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity nand01 is
	port(
		Ana: in std_logic_vector(7 downto 0);
		Bna: in std_logic_vector(7 downto 0);
		Yna: out std_logic_vector(7 downto 0)
		);
end nand01;

architecture nand0 of nand01 is
	begin
		Yna <= not(Ana or Bna);
	end nand0;