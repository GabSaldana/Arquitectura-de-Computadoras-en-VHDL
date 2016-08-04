library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;
use package8bita00.all;

entity adder8bita00 is

port( 
	Aai: inout std_logic_vector ( 7 downto 0 );
	Bai: inout std_logic_vector ( 7 downto 0 );
	SaL: inout std_logic ;
	LEDa: inout std_logic ;
	Sao: inout std_logic_vector ( 7 downto 0 ) );
end adder8bita00;

architecture adder8bita0 of adder8bita00 is
signal SBa0, SBa1, SBa2, SBa3, SBa4, SBa5, SBa6, SBa7: std_logic;
signal CSa1, CSa2, CSa3, CSa4, CSa5, CSa6, CSa7, CSa8: std_logic;
signal SAa0, SAa1, SAa2, SAa3, SAa4, SAa5, SAa6, SAa7: std_logic;
signal Bxa0, Bxa1, Bxa2, Bxa3, Bxa4, Bxa5, Bxa6, Bxa7: std_logic;
signal enablea: std_logic;
begin

  U21: xora00 port map(Aax => SaL, Bax => Bai(0), Yax => SBa0);
  U22: xora00 port map(Aax => SaL, Bax => Bai(1), Yax => SBa1);
  U23: xora00 port map(Aax => SaL, Bax => Bai(2), Yax => SBa2);
  U24: xora00 port map(Aax => SaL, Bax => Bai(3), Yax => SBa3);
  U25: xora00 port map(Aax => SaL, Bax => Bai(4), Yax => SBa4);
  U26: xora00 port map(Aax => SaL, Bax => Bai(5), Yax => SBa5);
  U27: xora00 port map(Aax => SaL, Bax => Bai(6), Yax => SBa6);
  U28: xora00 port map(Aax => SaL, Bax => Bai(7), Yax => SBa7);

  U31: topfaa00 port map(Aa00 => Aai(0), Ba00 => SBa0, Ca00 => SaL, Ca01 => CSa1, Sa00 => SAa0);
  U32: topfaa00 port map(Aa00 => Aai(1), Ba00 => SBa1, Ca00 => CSa1, Ca01 => CSa2, Sa00 => SAa1);
  U33: topfaa00 port map(Aa00 => Aai(2), Ba00 => SBa2, Ca00 => CSa2, Ca01 => CSa3, Sa00 => SAa2);
  U34: topfaa00 port map(Aa00 => Aai(3), Ba00 => SBa3, Ca00 => CSa3, Ca01 => CSa4, Sa00 => SAa3);
  U35: topfaa00 port map(Aa00 => Aai(4), Ba00 => SBa4, Ca00 => CSa4, Ca01 => CSa5, Sa00 => SAa4);
  U36: topfaa00 port map(Aa00 => Aai(5), Ba00 => SBa5, Ca00 => CSa5, Ca01 => CSa6, Sa00 => SAa5);
  U37: topfaa00 port map(Aa00 => Aai(6), Ba00 => SBa6, Ca00 => CSa6, Ca01 => CSa7, Sa00 => SAa6);
  U38: topfaa00 port map(Aa00 => Aai(7), Ba00 => SBa7, Ca00 => CSa7, Ca01 => CSa8, Sa00 => SAa7);
  U39: xora00 port map(Bax => CSa8, AaX => CSa7, Yax => LEDa);
  U310: nxora00 port map(Banx => CSa8, Aanx => CSa7, Yanx => enablea);
  U311: anda00 port map(Baa => SAa0, Aaa => enablea, Yaa => Sao(0));
  U312: anda00 port map(Baa => SAa1, Aaa => enablea, Yaa => Sao(1));
  U313: anda00 port map(Baa => SAa2, Aaa => enablea, Yaa => Sao(2));
  U314: anda00 port map(Baa => SAa3, Aaa => enablea, Yaa => Sao(3));
  U315: anda00 port map(Baa => SAa4, Aaa => enablea, Yaa => Sao(4));
  U316: anda00 port map(Baa => SAa5, Aaa => enablea, Yaa => Sao(5));
  U317: anda00 port map(Baa => SAa6, Aaa => enablea, Yaa => Sao(6));
  U318: anda00 port map(Baa => SAa7, Aaa => enablea, Yaa => Sao(7));
end adder8bita0;