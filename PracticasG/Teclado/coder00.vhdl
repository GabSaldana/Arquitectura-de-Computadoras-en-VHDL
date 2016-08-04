library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

entity coder00 is
	port(
		incont: in std_Logic_vector(3 downto 0);
		inkeyc: in std_logic_vector(3 downto 0);
		out7seg: out std_logic_vector(6 downto 0));
end coder00;
architecture coder0 of coder00 is
begin
	pcoder: process(incont, inkeyc)
	begin
		case incont is
			when "1000" =>
				case inkeyc is
					when "0001" =>
						out7seg <= "1001111";
					when "0010" =>
						out7seg <= "0010010";
					when "0100" =>
						out7seg <= "0000110";
					when "1000" =>
						out7seg <= "0001000"
					when others => null;
					end case;
			when "0100" =>
				case inkeyc is
					when "0001" =>
						out7seg <= "1001100";
					when "0010" =>
						out7seg <= "0100100";
					when "0100" =>
						out7seg <= "0100000";
					when "1000" =>
						out7seg <= "0110001"
					when others => null;
					end case;
			when "0010" =>
				case inkeyc is
					when "0001" =>
						out7seg <= "0001111";
					when "0010" =>
						out7seg <= "0010010";
					when "0100" =>
						out7seg <= "0000100";
					when "1000" =>
						out7seg <= "1111110"
					when others => null;
					end case;
			when "0001" =>
				case inkeyc is
					when "0001" =>
						out7seg <= "0000001";
					when "0010" =>
						out7seg <= "0011000";
					when "0100" =>
						out7seg <= "1001000";
					when "1000" =>
						out7seg <= "1000010";
					when others => null;
					end case;
				end case;
			end process pcoder;
	end coder0;