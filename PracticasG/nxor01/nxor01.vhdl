library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity nxor01 is
	port(
		Anx: in std_logic_vector(7 downto 0);
		Bnx: in std_logic_vector(7 downto 0);
		Ynx: out std_logic_vector(7 downto 0)
		);
end nxor01;

architecture nxor0 of nxor01 is
	begin
		Ynx <= not(Anx xor Bnx);
	end nxor0;