library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity write00 is
  port(
       clkw: in std_logic;
	   resetw: in std_logic;
	   ENx: in std_logic;
	   inFlagw: in std_logic;-- VIENE DEL MÓDULO "config00"
	   inFlagwx: in std_logic;--viene del módulo "contw00"
	   incontw: in std_logic_vector(5 downto 0);
	   outwordw: out std_logic_vector(7 downto 0);
       outFlagw: out std_logic);-- VA HACIA EL MÓDULO "bufferlcd00" Y HACIA "contw00" Y HACIA EL EXTERIOR
end write00;

architecture write0 of write00 is
type arrayrom is array(0 to 62) of std_logic_vector(7 downto 0);
constant dato: arrayrom:=("01000111",-- G
                          "01000001",-- A
                          "01000010",-- B
                          "01010010",-- R
						  "01001001",-- I
						  "01000101",-- E
						  "01001100",-- L
                          "01000001",-- A
						  "10100101",--  PUNTO DE CUATRO PIXELES
						  "01010011",-- S
						  "01000001",-- A
						  "01001100",-- L
						  "01000100",-- D
						  "01000001",-- A
						  "01001110",-- N
						  "01000001",-- A
						  "10100101",-- -- PUNTO DE CUATRO PIXELES
						  "01000001",-- A
                          "01000111",-- G
                          "01010101",-- U
                          "01001001",-- I
						  "01001100",-- L
						  "01000001",-- A
						  "01010010",-- R
						  "10100101",-- PUNTO DE CUATRO PIXELES
						  "01000110",-- F
                          "01010010",-- R
						  "01000001",-- A
						  "01001110",-- N
						  "01000011",-- C
						  "01001001",-- I
						  "01010011",-- S
						  "01000011",-- C
						  "01001111",-- O
						  "10100101",-- -- PUNTO DE CUATRO PIXELES
						  "01010100",-- T
                          "01010010",-- R
                          "01000101",-- E
                          "01001010",-- J
						  "01001111",-- O
						  "10100101",-- PUNTO DE CUATRO PIXELES
						  "01000001",-- A
                          "01000111",-- G
                          "01010101",-- U
                          "01001001",-- I
						  "01001100",-- L
						  "01000001",-- A
						  "01010010",-- R
						  "10100101",-- PUNTO DE CUATRO PIXELES
						  "01000110",-- F
                          "01010010",-- R
						  "01000001",-- A
						  "01001110",-- N
						  "01000011",-- C
						  "01001001",-- I
						  "01010011",-- S
						  "01000011",-- C
						  "01001111",-- O
						  "10100101",-- PUNTO DE CUATRO PIXELES
                           others => "00110000");
begin
  pwrite: process(clkw, resetw, inFlagwx, incontw)
  begin
	   --if (clkw'event and clkw = '1') then
	     case inFlagw is
		   when '0' =>
		     outwordw <= "00110000";
			 outFlagw <= '1';
		   when '1' =>
		    if (incontw < "111110") then--inFlagwx viene de "contw00"
		     --if (incontw < "010000") then--inFlagwx viene de "contw00"
			    if (inFlagwx = '1') then
			   --outwordw <= dato(conv_integer(incontw));
			   outFlagw <= '0';
			 else
			   outwordw <= dato(conv_integer(incontw));
			   outFlagw <= '1';
			 end if;
			 end if;
		   when others => null;
		 end case;
	   --end if;
  end process pwrite;
end write0;