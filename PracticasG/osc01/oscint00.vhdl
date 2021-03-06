library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity oscint00 is
    port(
       stdby: in std_logic;
	   osc_int: out std_logic);

   end oscint00;


architecture oscint0 of oscint00 is

COMPONENT OSCH
   GENERIC (NOM_FREQ: string := "2.08");
       PORT ( STDBY :IN std_logic;
              OSC :OUT std_logic);
END COMPONENT;

attribute NOM_FREQ : string;
attribute NOM_FREQ of OSCinst0 : label is "2.08";

begin

OSCInst0: OSCH
GENERIC MAP ( NOM_FREQ => "2.08" )
     PORT MAP ( STDBY => stdby,
                OSC => osc_int);
end oscint0;