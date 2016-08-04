library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packageram00.all;

entity topram00 is
  port(
       clk0: inout std_logic;
	   cdiv00: in std_logic_vector(3 downto 0);
	   reset0: in std_logic;
	   wr0: in std_logic;
	   inkey0: in std_logic_vector(3 downto 0);
	   inFlag0: inout std_logic;--ES SALIDA DE LA RAM Y ELTRADA AL TOPKEY
	   outcont0: inout std_logic_vector(3 downto 0);--INDICE DE ESCRITURA
	   outr0: inout std_logic_vector(3 downto 0);
	   offtran0: out std_logic_vector(3 downto 0);
	   outFlag0: inout std_logic; --ES ENTRADA A LA RAM
	   outcontRead0: inout std_logic_vector(3 downto 0);--INDICE DE LECTURA
	   outWordBuff0: out std_logic_vector(6 downto 0));
end topram00;

architecture topram0 of topram00 is
signal soutwordkey, soutwordmem: std_logic_vector(6 downto 0);
begin

  RA01: toposc00 port map(outdiv0 => clk0,--salida del oscilador
                          cdiv0 => cdiv00);
  
  RA02: topkey00 port map(clkk => clk0,
                          resetk => reset0,--reset
						  inkeyk => inkey0,
						  inFlagk => inFlag0,
						  outcontk => outcont0,
						  out7segk => soutwordkey,--salida hacia el display
						  outrk => outr0,
						  offtrank => offtran0,
						  outFlagk => outFlag0); --SALE DEL TOPKEY Y ENTRA A LA RAM00
  
  RA03: ram00 port map(clkm => clk0,
                       resetm => reset0,
					   wrm => wr0,
					   inFlagm => outFlag0,
					   indirw => outcont0,
					   indirr => outcontRead0,
					   inWordm => soutwordkey,
					   outWordm => soutwordmem,
					   outFlagm => inFlag0);
  
  RA04: coder7seg00 port map(clkbuff => clk0,
                             bitwr => wr0,
							 inWordkey => soutwordkey,
							 inWordmem => soutwordmem,
                             outWordBuff => outWordBuff0);
  
  RA05: contRead00 port map(clkcont => clk0,
                           wrcont => wr0,
						   incontKey => outcont0,
                           outcontRead => outcontRead0);

end topram0;