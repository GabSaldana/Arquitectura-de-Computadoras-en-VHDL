library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

use packagegeneric01.all;

entity topgeneric01 is
	port(
		clk0: inout std_logic;
		cdiv00: in std_logic_vector(3 downto 0);
		soutFlag0: inout std_logic;
		codop0: in std_logic_vector(4 downto 0);
		enable0: in std_logic;
		portA0: in std_logic_vector(7 downto 0);
		portB0: in std_logic_vector(7 downto 0);
		sinFlag0: inout std_logic;
		outg0: out std_logic_vector(7 downto 0));
end topgeneric01;

architecture topgeneric0 of topgeneric01 is
signal sinuc: std_logic_vector(7 downto 0);
begin
	G01: toposc00 port map(
							outdiv0 => clk0,
							cdiv0 => cdiv00);
	
	G02: and00 port map(
						clka => clk0,
						codopa => codop0,
						inFlaga => soutFlag0,
						portAa => portA0,
						portBa => portB0,
						outa => sinuc,
						outFlaga => sinFlag0);
	
	G03: or00 port map(
						clko => clk0,
						codopo => codop0,
						inFlago => soutFlag0,
						portAo => portA0,
						portBo => portB0,
						outo => sinuc,
						outFlago => sinFlag0);
						
	G04: nor00 port map(
						clknor => clk0,
						codopnor => codop0,
						inFlagnor => soutFlag0,
						portAnor => portA0,
						portBnor => portB0,
						outnor => sinuc,
						outFlagnor => sinFlag0);
	
	G05: nand00 port map(
						clknand => clk0,
						codopnand => codop0,
						inFlagnand => soutFlag0,
						portAnand => portA0,
						portBnand => portB0,
						outnand => sinuc,
						outFlagnand => sinFlag0);

	G06: xor00 port map(
						clkxor => clk0,
						codopxor => codop0,
						inFlagxor => soutFlag0,
						portAxor => portA0,
						portBxor => portB0,
						outxor => sinuc,
						outFlagxor => sinFlag0);
						
	G07: xnor00 port map(
						clkxnor => clk0,
						codopxnor => codop0,
						inFlagxnor => soutFlag0,
						portAxnor => portA0,
						portBxnor => portB0,
						outxnor => sinuc,
						outFlagxnor => sinFlag0);
						
	G08: not00 port map(
						clknot => clk0,
						codopnot => codop0,
						inFlagnot => soutFlag0,
						portAnot => portA0,

						outnot => sinuc,
						outFlagnot => sinFlag0);

	G09: uc00 port map(
						clkuc => clk0,
						enableuc => enable0,
						inuc => sinuc,
						inFlaguc => sinFlag0,
						outuc => outg0,
						outFlaguc => soutFlag0);
end topgeneric0;