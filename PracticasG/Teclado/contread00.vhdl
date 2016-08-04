library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity contread00 is
	port(
		clkcont: in std_logic;
		inFlagcont: in std_logic;
		outcont: inout std_logic_vector(3 downto 0)
	);
end contread00;

architecture contread0 of contread00 is--contador secuencial
begin
	pcont: process(clkcont)
		begin
			if(clkcont 'event and clkcont = '1') then
				case inFlagcont  is
					when '0' =>
						outcont <= "0000";
					when '1' =>
				 		if(outcont < "1101") then-- menor  al numero total de direcciones
							outcont <= outcont + '1';
						end if;
					when others => null;
				end case;
			end if;
		end process pcont;
end contread0;