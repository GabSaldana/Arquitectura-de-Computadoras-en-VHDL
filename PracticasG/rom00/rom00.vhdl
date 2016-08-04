library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity rom00 is
  port(
       inFlagrom: in std_logic;
	   indirrom: in std_logic_vector(3 downto 0);
	   outwordrom: out std_logic_vector(6 downto 0);
	   outFlagrom: out std_logic;
       offtran: out std_logic_vector(3 downto 0));
end rom00;

architecture rom0 of rom00 is
type arrayrom is array(0 to 16) of std_logic_vector(6 downto 0);
constant memrom: arrayrom:=("1000000",--gfedcba 0
                            "1111001",--1
							"0100100", --2
							"0110000",--3
							"0011001",--4
							"0010010",--5
							"0000010",--6
							"1111000",--7
							"0000000",--8
							"0011000",--9
							"0001000",--A
							"1000110",--C
                             others => "1111111");
begin
  prom: process(indirrom)
    begin
	   case inFlagrom is
	     when '0' =>
		   outFlagrom <= '0';
		   outwordrom <= "1111111";
		 when '1' =>
		    outwordrom <= memrom(conv_integer(indirrom));
			outFlagrom <= '1';
		 when others => null;
	   end case;
	end process prom;
	offtran <= "1110";
end rom0;