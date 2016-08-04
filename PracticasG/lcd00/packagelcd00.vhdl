library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

package packagelcd00 is

  component toposc00
    port(
	   cdiv0: in std_logic_vector(3 downto 0);
       outdiv0: inout std_logic);
  end component;
  
  component contconfig00
    port(
       clkcc: in std_logic;
	   resetcc: in std_logic;
	   inFlagcc: in std_logic;
	   outcc: inout std_logic_vector(5 downto 0);
       outFlagcc: out std_logic);
  end component;
  
  component config00
    port(
       clkc: in std_logic;
	   resetc: in std_logic;
	   inFlagc: in std_logic;
	   incontc: in std_logic_vector(5 downto 0);
	   outWordc: out std_logic_vector(7 downto 0);
	   RWc: out std_logic;
	   RSc: out std_logic;
	   ENc: out std_logic;
       outFlagc: out std_logic);
  end component;
  
  component contw00
  port(
       clkcw: in std_logic;
	   resetcw: in std_logic;
	   inFlagcw: in std_logic;-- VIENE DEL MÓDULO "config00"
	   inFlagx: in std_logic;
	   outcontcw: inout std_logic_vector(5 downto 0);-- VA HACIA EL MÓDULO "write00" Y HACIA EL EXTERIOR
	   RWcw: out std_logic;
	   RScw: out std_logic;
	   ENcw: out std_logic;
       outFlagcw: out std_logic);
  end component;
  
  component write00
  port(
       clkw: in std_logic;
	   resetw: in std_logic;
	   ENx: in std_logic;
	   inFlagw: in std_logic;-- VIENE DEL MÓDULO "config00"
	   inFlagwx: in std_logic;
	   incontw: in std_logic_vector(5 downto 0);
	   outwordw: out std_logic_vector(7 downto 0);
       outFlagw: out std_logic);-- VA HACIA EL MÓDULO "bufferlcd00" Y HACIA "contw00" Y HACIA EL EXTERIOR
  end component;

  component bufferlcd00
  port(
       inFlagbuffconfig: in std_logic;
	   inFlagbuffwrite: in std_logic;
	   RWcb: in std_logic;
	   RScb: in std_logic;
	   ENcb: in std_logic;
	   RWwb: in std_logic;
	   RSwb: in std_logic;
	   ENwb: in std_logic;
	   inwordconfig: in std_logic_vector(7 downto 0);
	   inwordwrite: in std_logic_vector(7 downto 0);
	   RWbb: out std_logic;
	   RSbb: out std_logic;
	   ENbb: out std_logic;
       outwordbuff: out std_logic_vector(7 downto 0));
  end component;

end packagelcd00;