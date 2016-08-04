library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity or01 is
	port(
		Ao: in std_logic_vector(7 downto 0);
		Bo: in std_logic_vector(7 downto 0);
		Yo: out std_logic_vector(7 downto 0)
		);
end or01;

architecture or0 of or01 is
	begin
		Yo <= Ao or Bo;
	end or0;