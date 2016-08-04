library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity contRead00 is
  port(
       clkcont: in std_logic;
	   wrcont: in std_logic;
	   incontKey: in std_logic_vector(3 downto 0);
       outcontRead: inout std_logic_vector(3 downto 0));
end contRead00;

architecture contRead0 of contRead00 is
begin
  pcont: process(clkcont, wrcont)
  begin
    if (clkcont'event and clkcont = '1') then
	   case wrcont is
	     when '0' =>
		    outcontRead <= "0000";
		 when '1' =>
		    if (outcontRead < incontKey) then
			   outcontRead <= outcontRead + '1';
			else
			   outcontRead <= outcontRead;
			end if;
		 when others => null;
	   end case;
	end if;
  end process pcont;
end contRead0;