library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagekey00.all;
 
entity topkey00 is
  port(
       clk0: inout std_logic;
	   cdiv00: in std_logic_vector(3 downto 0);
	   enable0: in std_logic;
	   inkey0: in std_logic_vector(3 downto 0);
	   outr0: inout std_logic_vector(3 downto 0);--salida ring
	   offtran0: out std_logic_vector(3 downto 0);
	   flag0: out std_logic_vector(1 downto 0);
       out7seg0: out std_logic_vector(6 downto 0));
end topkey00;

architecture topkey0 of topkey00 is
begin

  K01: topdiv00 port map(outdiv0 => clk0,--salida del oscilador
                         cdiv0 => cdiv00);--salida del divisor
  
  K02: contring00 port map(clkr => clk0,
                           enable => enable0,
                           outr => outr0);--salida del contador de anillo
  
  K03: coder00 port map(inkeyc => inkey0,--valor devuelto por las filas a la hora de presionar un boton
                        incont => outr0,
						clkc => clk0,
						flag => flag0,
						offtran => offtran0,--activacion de los displays
                        out7seg => out7seg0);--salida hacia los displays

end topkey0;