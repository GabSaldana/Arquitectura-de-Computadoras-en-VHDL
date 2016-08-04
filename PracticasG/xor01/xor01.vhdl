library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity xor01 is
	port(
		Ax: in std_logic_vector(7 downto 0);
		Bx: in std_logic_vector(7 downto 0);
		Yx: out std_logic_vector(7 downto 0)
		);
end xor01;

architecture xor0 of xor01 is
	begin
		Yx <= Ax xor Bx;
	end xor0;