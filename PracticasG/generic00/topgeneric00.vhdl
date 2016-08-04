library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagegeneric00.all;

entity topgeneric00 is
  port(
       clk0: inout std_logic;
	   cdiv00: in std_logic_vector(3 downto 0);
	   codop0: in std_logic_vector(4 downto 0);
	   enable0: in std_logic;
	   portA0: in std_logic_vector(7 downto 0);
	   portB0: in std_logic_vector(7 downto 0);
	   sinFlag0: inout std_logic;
	   outg0: out std_logic_vector(7 downto 0);
       soutFlag0: inout std_logic);
end topgeneric00;

architecture topgeneric0 of topgeneric00 is
signal sinuc: std_logic_vector(7 downto 0);
begin

	G01: toposc00 port map(outdiv0 => clk0,
						 cdiv0 => cdiv00);
	
	G02: and00 port map(clka => clk0,
						codopa => codop0,
						inFlaga => soutFlag0,
						portAa => portA0,
						portBa => portB0,
						outa => sinuc,
						outFlaga => sinFlag0);
	
	G03: or00 port map(clko => clk0,
						codopo => codop0,
						inFlago => soutFlag0,
						portAo => portA0,
						portBo => portB0,
						outo => sinuc,
						outFlago => sinFlag0);
	
	
	G04: uc00 port map(clkuc => clk0,
					   inuc => sinuc,
					   enableuc => enable0,
					   inFlaguc => sinFlag0,
					   outuc => outg0,
					   outFlaguc => soutFlag0);
					   

	
end topgeneric0;