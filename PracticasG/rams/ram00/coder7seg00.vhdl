library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity coder7seg00 is
  port(clkbuff: in std_logic;
       bitwr: in std_logic;
	   inWordkey: in std_logic_vector(6 downto 0);
	   inWordmem: in std_logic_vector(6 downto 0);
       outWordBuff: out std_logic_vector(6 downto 0));
end coder7seg00;

architecture coder7seg0 of coder7seg00 is
begin
  pbuff: process(bitwr)
  begin
   if (clkbuff'event and clkbuff = '1') then
    case bitwr is
	  when '0' =>
	     outWordBuff <= inWordkey;
	  when '1' =>
	     outWordBuff <= inWordmem;
	  when others =>
	end case;
	end if;
  end process pbuff;
end coder7seg0;