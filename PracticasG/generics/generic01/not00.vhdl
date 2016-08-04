library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

entity not00 is 
	port(
		clknot: in std_logic;
		codopnot: in std_logic_vector(4 downto 0);
		portAnot: in std_logic_vector(7 downto 0);

		inFlagnot: in std_logic;
		outnot: out std_logic_vector(7 downto 0);
		outFlagnot: inout std_logic);
end not00;

architecture not0 of not00 is
begin
	pnot: process(clknot, inFlagnot, codopnot)
	variable aux: bit:='0';
	begin
		if(clknot'event and clknot ='1') then
			if(codopnot = "00110") then
				if(inFlagnot = '1') then
					if(aux ='0') then
						aux :='1';
						outnot <= not portAnot;
						outFlagnot <= '1';
					else 
						outFlagnot <= '0';					
					end if;
				else
					outFlagnot <= '0';
				end if;
			else
				aux:='0';
				outnot <= (others => 'Z');
				outFlagnot <= 'Z';
			end if;
		end if;
	end process pnot;
end not0;