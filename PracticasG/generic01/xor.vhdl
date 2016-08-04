library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity xor00 is
  port(
       clkx: in std_logic;
	   codopx: in std_logic_vector(4 downto 0);
	   inFlagx: in std_logic;
	   portAx: in std_logic_vector(7 downto 0);
	   portBx: in std_logic_vector(7 downto 0);
	   outx: out std_logic_vector(7 downto 0);
       outFlagx: inout std_logic);
end xor00;

architecture xor0 of xor00 is
begin
  pxor: process(clkx, codopx, inFlagx)
  variable aux: bit:='0';
  begin
    if (clkx'event and clkx = '1') then
	  if (codopx = "00010") then
         case inFlagx is
		   when '1' =>
		      if (aux = '0') then
			     aux:='1';
				 outx <= portAx and portBx;
				 outFlagx <= '1';
			  else
			     outFlagx <= '0';
			  end if;
		   when '0' =>
		      outFlagx <='0';
		   when others => null;
		 end case;
	  else
	     aux:='0';
		 outx <= (others => 'Z');
		 outFlagx <= 'Z';
	  end if;
    end if;
  end process pxor;
end xor0;