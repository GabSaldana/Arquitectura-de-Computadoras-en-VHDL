library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity contw00 is
  port(
       clkcw: in std_logic;
	   resetcw: in std_logic;
	   inFlagcw: in std_logic;
	   inFlagx: in std_logic;-- viene del módulo "write00"
	   RWcw: out std_logic;
	   RScw: out std_logic;
	   ENcw: out std_logic;
	   outcontcw: inout std_logic_vector(5 downto 0);
       outFlagcw: out std_logic);
end contw00;

architecture contw0 of contw00 is
begin
  pcw: process(clkcw, resetcw, inFlagcw)
  begin
    if (clkcw'event and clkcw = '1') then
	  case inFlagcw is
	    when '0' =>
		  outcontcw <= "000000";
		  outFlagcw <= '1';
		when '1' =>
		  if (outcontcw < "111110") then--inFlagwx viene de "contw00"
		  --if (outcontcw < "010000") then -- and (inFlagx = '1')) then
		    if (inFlagx = '1') then
			outcontcw <= outcontcw + '1';
		     --outcontcw <= outcontcw;
			 outFlagcw <= '1';
			 RWcw <= '0';
			 RScw <= '1';
			 ENcw <= '0';
		  elsif (inFlagx = '0') then
		     --outcontcw <= outcontcw + '1';
		     --outcontcw <= outcontcw;
			 outFlagcw <= '0';
			 RWcw <= '0';
			 RScw <= '1';
			 ENcw <= '1';
		   end if;
		 --else
		   --outcontcw <= "000000";
	     end if;
		when others => null;
	  end case;
	end if;
  end process pcw;
end contw0;