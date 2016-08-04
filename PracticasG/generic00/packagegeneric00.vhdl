library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

package packagegeneric00 is

  component toposc00
    port(
       cdiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic);
  end component;
  
  component and00
    port(
       clka: in std_logic;
	   codopa: in std_logic_vector(4 downto 0);
	   inFlaga: in std_logic;
	   portAa: in std_logic_vector(7 downto 0);
	   portBa: in std_logic_vector(7 downto 0);
	   outa: out std_logic_vector(7 downto 0);
       outFlaga: inout std_logic);
  end component;
  
  component or00
    port(
       clko: in std_logic;
	   codopo: in std_logic_vector(4 downto 0);
	   inFlago: in std_logic;
	   portAo: in std_logic_vector(7 downto 0);
	   portBo: in std_logic_vector(7 downto 0);
	   outo: out std_logic_vector(7 downto 0);
       outFlago: inout std_logic);
  end component;
  
  
  component uc00
    port(
       clkuc: in std_logic;
	   enableuc: in std_logic;
	   inFlaguc: in std_logic;
	   inuc: in std_logic_vector(7 downto 0);
	   outuc: out std_logic_vector(7 downto 0);
       outFlaguc: inout std_logic);
  end component;

end packagegeneric00;