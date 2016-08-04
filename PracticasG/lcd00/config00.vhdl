library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity config00 is
  port(
       clkc: in std_logic;
	   resetc: in std_logic;
	   inFlagc: in std_logic;-- VIENE DEL MÓDULO "contconfig00"
	   incontc: in std_logic_vector(5 downto 0);
	   outWordc: out std_logic_vector(7 downto 0);
	   RWc: out std_logic;
	   RSc: out std_logic;
	   ENc: out std_logic;
       outFlagc: out std_logic);-- VA HACIA LOS MÓDULOS "contconfig00" Y  HACIA "contw00" Y "write00"
end config00;

architecture config0 of config00 is
begin
  pconfig: process(clkc, resetc, inFlagc, incontc)
  begin
     case resetc is
	   when '0' =>
	     outWordc <= "00000000";
		 RWc <= '0';
		 RSc <= '0';
		 ENc <= '0';
		 outFlagc <= '0';
	   when '1' =>
	   
	     case inFlagc is
		 
		   when '1' =>
		     case incontc is

			   when "000000" =>
			   --Sets interface data length (DL), number of display lines (N) and character font (F), N=1 F=1  2 lineas  5X7 puntos(tamaño caracter)
			      outWordc <= "00111100";-- 0 0 1 D/L  N F X X:  FUNCTION SET 
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '1';

			   when "000010" =>
			      outWordc <= "00111100";-- 0 0 1 D/L  N F X X:  FUNCTION SET
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '1';
			   when "000011" =>
			      outWordc <= "00111100";-- 0 0 1 D/L  N F X X:  FUNCTION SET
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '0';

			   when "000100" =>
			   --Clears all display and returns the cursor to the home position (Address 0).
			      outWordc <= "00000001";-- CLEAR DISPLAY
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '1';
			   when "000101" =>
			      outWordc <= "00000001";-- CLEAR DISPLAY
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '0';
			   when "000110" =>
			   --Returns the cursor to the home position (Address 0). Returns display to its original state if it was shifted.
			      outWordc <= "00000011";-- RETURN TO HOME
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '1';
			   when "000111" =>
			      outWordc <= "00000011";-- RETURN TO HOME
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '0';
			   when "001000" =>
			   --Sets the effect of subsequent DD RAM read or write operations. 
			   --Sets the cursor move direction and specifies or not to shift the display. These operations are performed during data read and write.
			   -- increment(I/D = 1) or decrement (I/D = 0) the address counter
			   -- S = 1 the display will be shifted to the left (if I/D = 1) or right (if I/D = 0),This makes it looks as if the cursor stands still and the display moves 
			   --if S = 0 the display will not shift on subsequent DD RAM write operations.
				  outWordc <= "00000110";--0 0 0 0 0 1 I/D S: ENTRY MODE SET
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '1';
			   when "001001" =>
			      outWordc <= "00000110";--0 0 0 0 0 1 I/D S: ENTRY MODE SET
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '0';

			   when "001010" =>
			     --Controls display of characters and cursor.
				 --D: The display is ON when D = 1 and OFF when D = 0. The DD RAM contents remain unchanged.
				 --C: The cursor is displayed when C = 1 and is not displayed when C = 0. 
				 --B: The character at the the cursor position blinks when B = 1. 
			      outWordc <= "00001111";--0 0 0 0 1 D C B: DISPLAY ON/OFF CONTROL
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '1';
			   when "001011" =>
			      outWordc <= "00001111";--0 0 0 0 1 D C B: DISPLAY ON/OFF CONTROL
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '0';

			   when "001100" =>
			   --Moves the cursor and shifts the display without changing DD RAM contents 
			   --S/C= 1 y R/L=1 Shifts the entire display to the right .The cursor follows the display shift  
			      outWordc <= "00011100";--0 0 0 1 S/C  R/L X X: CURSOR OR DISPLAY SHIFT
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '1';
			   when "001101" =>
			      outWordc <= "00011100";--0 0 0 1 S/C  R/L X X: CURSOR OR DISPLAY SHIFT
				  outFlagc <= '1';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '0';

			   when "001110" =>
			   --Sets the DD RAM address. Subsequent read or writes refer to the DD RAM.
			   --Sets the specified value (AAAAAAA) into the address counter. Subsequent read or write operations transfer data from, or to, the display RAM. 
			      outWordc <= "11000001";-- 1 X X X X X X X: SET DDRAM ADDRESS 
				  outFlagc <= '0';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '1';
			   when "001111" =>
			      outWordc <= "11000001";-- 1 X X X X X X X: SET DDRAM ADDRESS
				  outFlagc <= '1';
				  RWc <= '0';
				  RSc <= '0';
				  ENc <= '0';
		
			   when others => null;
			   
			   
			 end case;--FIN DEL CASE DE LA ENTRADA "incontc"
			 
		   when '0' =>
			  outFlagc <= '0';
		   when others => null;
	     end case;--FIN DEL CASE DE LA ENTRADA "inFlagc"
		 
	   when others => null;
	 end case;--FIN DEL CASE DE LA ENTRADA "reset"
  end process pconfig;
end config0;