library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity coder00 is
  port(
	   clkc: in std_logic;
	   resetc: in std_logic;
	   inFlagc: in std_logic;
	   outFlagc: out std_logic;
       incontc: in std_logic_vector(3 downto 0);
	   inkeyc: in std_logic_vector(3 downto 0);
	   offtranc: out std_logic_vector(3 downto 0);
	   outcontc: inout std_logic_vector(3 downto 0);
       out7segc: out std_logic_vector(6 downto 0));
end coder00;

architecture coder0 of coder00 is
begin
  offtranc <= "1110";
  pcoder: process(incontc, inkeyc)
  variable aux01: bit:='0';
  variable aux02: bit:='0';
  variable aux03: bit:='0';
  variable aux04: bit:='0';
    begin
	if (clkc'event and clkc ='1') then
	  if (resetc = '0') then
	     outcontc <= "1111";
		 outFlagc <= '0';	 
	  else
	   case incontc is
	      when "1000" =>
		     case inkeyc is
			 	when "0000" =>
					aux01:='0';
				    outcontc <= outcontc;
					outFlagc <= '0';
			    when "0001" =>
				    if (( aux01 ='0') or (inFlagc = '1')) then--cuando esta escribiendo
					    aux01:='1';
				        out7segc <= "1111001";
						outcontc <= outcontc + '1';
						outFlagc <= '1';--ya esta el dato disponible
					else
					    outFlagc <= '0';
					end if;
				when "0010" =>
				    if (( aux01 ='0') or (inFlagc = '1')) then
					    aux01:='1';
				        out7segc <= "0100100";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "0100" =>
				    if (( aux01 ='0') or (inFlagc = '1')) then
					    aux01:='1';
				        out7segc <= "0110000";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "1000" =>
				    if (( aux01 ='0') or (inFlagc = '1')) then
					    aux01:='1';
						out7segc <= "0011001";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0'; 
					end if;
				when others => null;
			 end case;
		  when "0100" =>
		     case inkeyc is
			 	when "0000" =>
					aux02:='0';
				    outcontc <= outcontc;
					outFlagc <= '0';
			    when "0001" => -- 2
				    if (( aux02 ='0') or (inFlagc = '1')) then
					    aux02:='1';
						out7segc <= "0010010";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "0010" =>
				    if (( aux02 ='0') or (inFlagc = '1')) then
					    aux02:='1';
						out7segc <= "0000010";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "0100" =>
				    if (( aux02 ='0') or (inFlagc = '1')) then
					    aux02:='1';
						out7segc <= "1111000";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "1000" =>
				    if (( aux02 ='0') or (inFlagc = '1')) then
					    aux02:='1';
						out7segc <= "0000000";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when others => null;
			 end case;
		  when "0010" =>
		     case inkeyc is
			 	when "0000" =>
					aux03:='0';
				    outcontc <= outcontc;
					outFlagc <= '0';
			    when "0001" =>
				    if (( aux03 ='0') or (inFlagc = '1')) then
					    aux03:='1';
						out7segc <= "0011000";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "0010" =>
				    if (( aux03 ='0') or (inFlagc = '1')) then
					    aux03:='1';
						out7segc <= "0001000";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "0100" =>
				   if (( aux03 ='0') or (inFlagc = '1')) then
					    aux03:='1';
						out7segc <= "1000110";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "1000" =>
				    if (( aux03 ='0') or (inFlagc = '1')) then
					    aux03:='1';
						out7segc <= "1000000";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when others => null;
			 end case;
		  when "0001" =>
		     case inkeyc is
			 	when "0000" =>
					aux04:='0';
				    outcontc <= outcontc;
					outFlagc <= '0';
			    when "0001" =>
				    if (( aux04 ='0') or (inFlagc = '1')) then
					    aux04:='1';
						out7segc <= "0100001";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "0010" =>
				    if (( aux04 ='0') or (inFlagc = '1')) then
					    aux04:='1';
						out7segc <= "1001001";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "0100" =>
				    if (( aux04 ='0') or (inFlagc = '1')) then
					    aux04:='1';
						out7segc <= "0001100";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when "1000" =>
				    if (( aux04 ='0') or (inFlagc = '1')) then
					    aux04:='1';
						out7segc <= "0000110";
						outcontc <= outcontc + '1';
						outFlagc <= '1';
					else
					    outFlagc <= '0';
					end if;
				when others => null;
			 end case;
		  when others => null;
	   end case;--DEL CASE EXTERIOR
	   end if;-- DE LA CONDICIÓN DE INICIALIZACIÓN
	   end if;-- DE LA CONDICIÓN DE FLANCO DE RELOJ
	end process pcoder;
end coder0;


--incrementar la frecuencia, poner el reset en 1 y empiezas a excribir, debe contar al entrar a memoria
--bajamos la frecuencia para poder leer, debe ejecutarse el contador de lectura