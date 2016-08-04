library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

package packageram00 is

  component toposc00
    port(
       cdiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic);
  end component;
  
  component topkey00
    port(
       clkk: in std_logic;
	   resetk: in std_logic;
	   inkeyk: in std_logic_vector(3 downto 0);
	   inFlagk: in std_logic;
	   outcontk: inout std_logic_vector(3 downto 0);
	   out7segk: out std_logic_vector(6 downto 0);
	   outrk: inout std_logic_vector(3 downto 0);
	   offtrank: out std_logic_vector(3 downto 0);
       outFlagk: out std_logic);
  end  component;
  
  component ram00
    port(
       clkm: in std_logic;
	   resetm: in std_logic;
	   wrm: in std_logic;
	   inFlagm: in std_logic;
	   indirw: in std_logic_vector(3 downto 0);
	   indirr: in std_logic_vector(3 downto 0);
	   inWordm: in std_logic_vector(6 downto 0);
	   outWordm: out std_logic_vector(6 downto 0);
       outFlagm: out std_logic);
  end component;
  
  component coder7seg00
    port(clkbuff: in std_logic;
       bitwr: in std_logic;
	   inWordkey: in std_logic_vector(6 downto 0);
	   inWordmem: in std_logic_vector(6 downto 0);
       outWordBuff: out std_logic_vector(6 downto 0));
  end component;
  
  component contRead00
    port(
       clkcont: in std_logic;
	   wrcont: in std_logic;
	   incontKey: in std_logic_vector(3 downto 0);
       outcontRead: inout std_logic_vector(3 downto 0));
  end component;

end packageram00;