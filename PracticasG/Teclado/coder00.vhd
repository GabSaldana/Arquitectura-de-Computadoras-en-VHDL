library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity coder00 is
  port(
	   clkc: in std_logic;
       incont: in std_logic_vector(3 downto 0);
	   inkeyc: in std_logic_vector(3 downto 0);
	   offtran: out std_logic_vector(3 downto 0);
	   flag: out std_logic_vector(1 downto 0);
       out7seg: out std_logic_vector(6 downto 0));
end coder00;

architecture coder0 of coder00 is
begin
	offtran <= "1110";--encendido de un display
  pcoder: process(incont, inkeyc)
  variable aux: bit:='0';
    begin
	if (clkc'event and clkc ='1') then 
		flag <= "11";
	   case incont is
	      when "1000" =>--columnas
		     case inkeyc is
				when "0000" =>
					aux:='0';
			    when "0001" =>--filas
				    if ( aux='0') then
					    aux:='1';--mientras tengas la tecla apretada no se incrementa el contadorhasta que se suelte
				        out7seg <= "1111001";
					end if;
				when "0010" =>
				    if ( aux='0') then
					    aux:='1';
				        out7seg <= "0100100";
					end if;
				when "0100" =>
				    if ( aux='0') then
					    aux:='1';
				        out7seg <= "0110000";
					end if;
				when "1000" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0011001";
					end if;
				when others => null;
			 end case;
		  when "0100" =>
		     case inkeyc is
				when "0000" =>
					aux:='0';
			    when "0001" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0010010";
					end if;
				when "0010" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0000010";
					end if;
				when "0100" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "1111000";
					end if;
				when "1000" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0000000";
					end if;
				when others => null;
			 end case;
		  when "0010" =>
		     case inkeyc is
				when "0000" =>
					aux:='0';
			    when "0001" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0011000";
					end if;
				when "0010" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0001000";
					end if;
				when "0100" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "1000110";
					end if;
				when "1000" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "1000000";
					end if;
				when others => null;
			 end case;
		  when "0001" =>
		     case inkeyc is
				when "0000" =>
					aux:='0';
			    when "0001" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0100001";
					end if;
				when "0010" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "1001001";
					end if;
				when "0100" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0001100";
					end if;
				when "1000" =>
				    if ( aux='0') then
					    aux:='1';
						out7seg <= "0000110";
					end if;
				when others => null;
			 end case;
		  when others => null;
	   end case;
	   end if;
	end process pcoder;
end coder0;