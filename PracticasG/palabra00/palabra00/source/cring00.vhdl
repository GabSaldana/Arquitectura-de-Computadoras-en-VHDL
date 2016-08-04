library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;

entity cring00 is
	port(
		clkr: in std_logic;
		loadr: in std_logic;
		outr: out std_logic_vector(3 downto 0));
end cring00;

architecture cring0 of cring00 is
signal scring: std_logic_vector(3 downto 0);
begin
	pcring: process(clkr)
	begin
		if(clkr'event and clkr='1') then
			case loadr is
				when '0' =>
					scring <= "1110";
				when '1' =>
					scring(3) <= scring(0);
					scring(2 downto 0) <= scring(3 downto 1);
					outr <= scring;
				when others => null;
			end case;
		end if;
	end process pcring;
end cring0;