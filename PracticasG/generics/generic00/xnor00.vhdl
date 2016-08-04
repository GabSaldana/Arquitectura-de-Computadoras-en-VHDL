library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity xnor00 is 
	port(
		clkxnor: in std_logic;
		codopxnor: in std_logic_vector(4 downto 0);
		portAxnor: in std_logic_vector(7 downto 0);
		portBxnor: in std_logic_vector(7 downto 0);
		inFlagxnor: in std_logic;
		outxnor: out std_logic_vector(7 downto 0);
		outFlagxnor: inout std_logic);
end xnor00;

architecture xnor0 of xnor00 is
begin
	pxnor: process(clkxnor, inFlagxnor, codopxnor)
	variable aux: bit:='0';
	begin
		if(clkxnor'event and clkxnor ='1') then
			if(codopxnor = "00101") then
				if(inFlagxnor = '1') then
					if(aux ='0') then
						aux :='1';
						outxnor <= portAxnor xnor portBxnor;
						outFlagxnor <= '1';
					else 
						outFlagxnor <= '0';					
					end if;
				else
					outFlagxnor <= '0';
				end if;
			else
				aux:='0';
				outxnor <= (others => 'Z');
				outFlagxnor <= 'Z';
			end if;
		end if;
	end process pxnor;
end xnor0;