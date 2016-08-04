library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

entity nand00 is 
	port(
		clknand: in std_logic;
		codopnand: in std_logic_vector(4 downto 0);
		portAnand: in std_logic_vector(7 downto 0);
		portBnand: in std_logic_vector(7 downto 0);
		inFlagnand: in std_logic;
		outnand: out std_logic_vector(7 downto 0);
		outFlagnand: inout std_logic);
end nand00;

architecture nand0 of nand00 is
begin
	pnand: process(clknand, inFlagnand, codopnand)
	variable aux: bit:='0';
	begin
		if(clknand'event and clknand ='1') then
			if(codopnand = "00011") then
				if(inFlagnand = '1') then
					if(aux ='0') then
						aux :='1';
						outnand <= portAnand nand portBnand;
						outFlagnand <= '1';
					else 
						outFlagnand <= '0';					
					end if;
				else
					outFlagnand <= '0';
				end if;
			else
				aux:='0';
				outnand <= (others => 'Z');
				outFlagnand <= 'Z';
			end if;
		end if;
	end process pnand;
end nand0;