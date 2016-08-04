library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagelcd00.all;

entity toplcd00 is
  port(
       clk0: inout std_logic;
	   reset0: in std_logic;
	   cdiv00: in std_logic_vector(3 downto 0);
	   inFlagcc0: inout std_logic;--entra al módulo "contconfig00" y sale delmódulo "config00"
	   outcc0: inout std_logic_vector(5 downto 0);
	   outFlagcc0: inout std_logic;--sale del módulo "contconfig00"
	   outFlagw0: inout std_logic;
	   outword0: out std_logic_vector(7 downto 0);
	   RW0: out std_logic;
	   RS0: out std_logic;
	   EN0: inout std_logic;
       outcontcw0: inout std_logic_vector(5 downto 0));
end toplcd00;

architecture toplcd0 of toplcd00 is
signal soutWordc, soutwordw: std_logic_vector(7 downto 0);
signal sRWc, sRSc, sENc, sRWw, sRSw, sENw: std_logic;
signal soutFlagcw, sinFlagx: std_logic;
begin

  LCD01: toposc00 port map(outdiv0 => clk0,
                           cdiv0 => cdiv00);
  
  LCD02: contconfig00 port map(clkcc => clk0,
                               resetcc => reset0,
							   inFlagcc => inFlagcc0,
							   outcc => outcc0,
                               outFlagcc => outFlagcc0);-- VA AL PIN   20
  
  LCD03: config00 port map(clkc => clk0,
                           resetc => reset0,
						   inFlagc => outFlagcc0,-- VIENE DEL MÓDULO "contconfig00"
						   incontc => outcc0,
						   outWordc => soutWordc,
						   RWc => sRWc,
						   RSc => sRSc,
						   ENc => sENc,
                           outFlagc => inFlagcc0);
  
  LCD04: contw00 port map(clkcw => clk0,
                          resetcw => reset0,
						  inFlagcw => inFlagcc0,
						  inFlagx => outFlagw0,
						  outcontcw => outcontcw0,
                          outFlagcw => soutFlagcw,
						  RWcw => sRWw,
						  RScw => sRSw,
						  ENcw => sENw);
  
  LCD05: write00 port map(clkw => clk0,
                          resetw => reset0,
						  ENx => EN0,
						  inFlagw => inFlagcc0,
						  inFlagwx => soutFlagcw,
						  incontw => outcontcw0,
						  outwordw => soutwordw,
                          outFlagw => outFlagw0);
  
  LCD06: bufferlcd00 port map(inFlagbuffconfig => inFlagcc0,
                              inFlagbuffwrite => outFlagw0,
                              RWcb => sRWc,
							  RScb => sRSc,
							  ENcb => sENc,
							  RWwb => sRWw,
							  RSwb => sRSw,
							  ENwb => sENw,
							  inwordconfig => soutWordc,
							  inwordwrite => soutwordw,
							  RWbb => RW0,
							  RSbb => RS0,
							  ENbb => EN0,
							  outwordbuff => outword0);

end toplcd0;