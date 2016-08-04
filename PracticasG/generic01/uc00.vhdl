library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity uc00 is
  port(
       clkuc: in std_logic;
	   enableuc: in std_logic;
	   inFlaguc: in std_logic;
	   inuc: in std_logic_vector(7 downto 0);
	   outuc: out std_logic_vector(7 downto 0);
       outFlaguc: inout std_logic);
end uc00;

architecture uc0 of uc00 is
begin
  puc: process(clkuc, enableuc, inFlaguc)
  begin
     if (clkuc'event and clkuc = '1') then
	    if ((inFlaguc = '1') or (enableuc = '1')) then
		   outuc <= inuc;
		   outFlaguc <= '1';
		else
		   outFlaguc <= '0';
		end if;
	 end if;
  end process puc;
end uc0;