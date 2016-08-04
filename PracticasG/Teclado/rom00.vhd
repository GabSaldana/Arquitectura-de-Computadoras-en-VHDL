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
	offtran: out std_logic_vector(3 downto 0)
);

end rom00;

architecture rom0 of rom00 is
type arrayrom is array(16 downto 0) of std_logic_vector(6 downto 0);--16 direcciones de tamaño 7
constant memrom: arrayrom:=(

				"1111111",
				"1001111",
				"0010010",
				"0001000",
				"0000110",
				"1001100",
				"0100100",
				"0100000",
				"0001111",
				"0000000",
				"0001100",
				"0000001",
				others => "1111111"

);

begin--señales donde se va a disparar el proceso
--reset en 0 contador off nada sobre rom y que resetee el contador de direcciones, reset e 1 contador on y rom
prom: process(indirrom)
	begin
		case inFlagrom is
		when '0' =>
			outFlagrom <='0';
			outwordrom <="1111111";
		when '1' =>
			outwordrom <=memrom(conv_integer(indirrom));--binario a entero
			outFlagrom <='1';
		when others =>null;
		end case;
	end process prom;
	offtran <="1110";--encendemos el de la derecha
end rom0;
