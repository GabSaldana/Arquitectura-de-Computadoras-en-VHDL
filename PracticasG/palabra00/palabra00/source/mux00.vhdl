library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity mux00 is
	port(
		incont: in std_logic_vector(3 downto 0);
		outbcd: out std_logic_vector(6 downto 0)
		);
end mux00;

architecture mux0 of mux00 is
begin
	pmux: process(incont)
	begin
		case incont is
		
			when "1110" => --1110    gfedcba
				--outbcd <= "0001000"; --A
				outbcd <="0010010";--S
			when "1101" => --1101
				--outbcd <= "1000111"; --L
				outbcd <= "0000000";--B
			when "1011" => --1011
				--outbcd <= "1000000"; --O
				outbcd <= "0001000"; --A
			when "0111" => --0111
				--outbcd <= "0001001"; --H
				outbcd <= "0000010";--G
			when others => null;
		end case;
	end process pmux;
end mux0;