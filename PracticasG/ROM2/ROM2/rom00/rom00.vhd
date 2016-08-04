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
			offtran: in std_logic_vector(3 downto 0)
		);
end rom00;
architecture rom0 of rom00 is
type arrayrom is array(0 to 5) of std_logic_vector(6 downto 0);constant memrom: arrayrom:=("1111111",
							"1001111",
							"0010010",
							"0000110",
							others => "1111111");
							--"1001111",1
							--"0010010",2
							--"0000110",3
							--"1001100",4
							--"0100100",5
							--"0100000",6
							--"0001111",7
							--"0000000",8
							--"0001100",9
							--"0001000",A
							--"0000001",0

begin
prom: process(indirrom)
	begin
		case inFlagrom is
			when '0' =>
				outwordrom <= "1111111";
				outFlagrom <= '0';
			when '1' =>
				case offtran is
					when "1110" =>
						outwordrom <= memrom(conv_integer(indirrom));
					when "1101" =>
						outwordrom <= memrom(conv_integer(indirrom));
					when "1011" =>
						outwordrom <= memrom(conv_integer(indirrom));
					when others => null;
	            end case;
				outFlagrom <= '1';
			when others => null;
		end case;	
	end process prom;
	--offtran <= "0001";
end rom0;