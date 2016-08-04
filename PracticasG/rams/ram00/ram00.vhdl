library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity ram00 is
  port(
       clkm: in std_logic;
	   resetm: in std_logic;
	   wrm: in std_logic;
	   inFlagm: in std_logic;
	   indirw: in std_logic_vector(3 downto 0);
	   indirr: in std_logic_vector(3 downto 0);
	   inWordm: in std_logic_vector(6 downto 0);
	   outWordm: out std_logic_vector(6 downto 0);
       outFlagm: out std_logic);
end ram00;

architecture ram0 of ram00 is
type arrayram is array(0 to 15) of std_logic_vector(6 downto 0); -- 4 direcciones de 4 bits 
signal dato: arrayram:=(others =>(others => '0'));
begin
   pram: process(clkm, resetm, wrm, inFlagm, indirw, indirr)
   begin
      if (clkm'event and clkm = '1') then
	     case resetm is
		    when '0' =>
			  outWordm <= (others => '1');
			  outFlagm <= '0';
			when '1' =>
			   case wrm is
			     when '0' =>
				   if (inFlagm = '1') then
				     dato(conv_integer(indirw)) <= inWordm;
					 outFlagm <= '1';
				   else
				     outFlagm <= '0';
				   end if;
				 when '1' =>
				   outWordm <= dato(conv_integer(indirr));
				 when others => null;
			   end case;
			when others => null;
		 end case;
	  end if;
   end process pram;
end ram0;