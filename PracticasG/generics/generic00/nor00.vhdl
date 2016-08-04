library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity nor00 is 
	port(
		clknor: in std_logic;
		codopnor: in std_logic_vector(4 downto 0);
		portAnor: in std_logic_vector(7 downto 0);
		portBnor: in std_logic_vector(7 downto 0);
		inFlagnor: in std_logic;
		outnor: out std_logic_vector(7 downto 0);
		outFlagnor: inout std_logic);
end nor00;

architecture nor0 of nor00 is
begin
	pnor: process(clknor, inFlagnor, codopnor)
	variable aux: bit:='0';
	begin
		if(clknor'event and clknor ='1') then
			if(codopnor = "00010") then
				if(inFlagnor = '1') then
					if(aux ='0') then
						aux :='1';
						outnor <= portAnor nor portBnor;
						outFlagnor <= '1';
					else 
						outFlagnor <= '0';					
					end if;
				else
					outFlagnor <= '0';
				end if;
			else
				aux:='0';
				outnor <= (others => 'Z');
				outFlagnor <= 'Z';
			end if;
		end if;
	end process pnor;
end nor0;