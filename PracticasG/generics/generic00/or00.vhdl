library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity or00 is 
	port(
		clko: in std_logic;
		codopo: in std_logic_vector(4 downto 0);
		portAo: in std_logic_vector(7 downto 0);
		portBo: in std_logic_vector(7 downto 0);
		inFlago: in std_logic;
		outo: out std_logic_vector(7 downto 0);
		outFlago: inout std_logic);
end or00;

architecture or0 of or00 is
begin
	por: process(clko, inFlago, codopo)
	variable aux: bit:='0';
	begin
		if(clko'event and clko ='1') then
			if(codopo = "00001") then
				if(inFlago = '1') then
					if(aux ='0') then
						aux :='1';
						outo <= portAo or portBo;
						outFlago <= '1';
					else 
						outFlago <= '0';					
					end if;
				else
					outFlago <= '0';
				end if;
			else
				aux:='0';
				outo <= (others => 'Z');
				outFlago <= 'Z';
			end if;
		end if;
	end process por;
end or0;