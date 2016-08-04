library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity not01 is
	port(
		An: in std_logic_vector(7 downto 0);
		Yn: out std_logic_vector(7 downto 0)
		);
end not01;

architecture not0 of not01 is
	begin
		Yn <= not(An);
	end not0;