library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

entity xor00 is 
	port(
		clkxor: in std_logic;
		codopxor: in std_logic_vector(4 downto 0);
		portAxor: in std_logic_vector(7 downto 0);
		portBxor: in std_logic_vector(7 downto 0);
		inFlagxor: in std_logic;
		outxor: out std_logic_vector(7 downto 0);
		outFlagxor: inout std_logic);
end xor00;

architecture xor0 of xor00 is
begin
	pxor: process(clkxor, inFlagxor, codopxor)
	variable aux: bit:='0';
	begin
		if(clkxor'event and clkxor ='1') then
			if(codopxor = "00100") then
				if(inFlagxor = '1') then
					if(aux ='0') then
						aux :='1';
						outxor <= portAxor xor portBxor;
						outFlagxor <= '1';
					else 
						outFlagxor <= '0';					
					end if;
				else
					outFlagxor <= '0';
				end if;
			else
				aux:='0';
				outxor <= (others => 'Z');
				outFlagxor <= 'Z';
			end if;
		end if;
	end process pxor;
end xor0;