library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

entity and00 is 
	port(
		clka: in std_logic;
		codopa: in std_logic_vector(4 downto 0);
		portAa: in std_logic_vector(7 downto 0);
		portBa: in std_logic_vector(7 downto 0);
		inFlaga: in std_logic;
		outa: out std_logic_vector(7 downto 0);
		outFlaga: inout std_logic);
end and00;

architecture and0 of and00 is
begin
	pand: process(clka, inFlaga, codopa)
	variable aux: bit:='0';
	begin
		if(clka'event and clka ='1') then
			if(codopa = "00000") then
				if(inFlaga = '1') then
					if(aux ='0') then
						aux :='1';
						outa <= portAa and portBa;
						outFlaga <= '1';
					else 
						outFlaga <= '0';					
					end if;
				else
					outFlaga <= '0';
				end if;
			else
				aux:='0';
				outa <= (others => 'Z');
				outFlaga <= 'Z';
			end if;
		end if;
	end process pand;
end and0;