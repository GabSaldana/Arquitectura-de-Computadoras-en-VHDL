library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

package package8bita00 is

component xora00
 port (Aax: inout std_logic;
       Bax: inout std_logic;
       Yax: inout std_logic);
end component;

component topfaa00
  port (Aa00: inout std_logic;
        Ba00: inout std_logic;
        Ca00: inout std_logic;
        Ca01: inout std_logic;
        Sa00: inout std_logic);
end component;

component nxora00
 port (Aanx: inout std_logic;
       Banx: inout std_logic;
       Yanx: inout std_logic);
end component;

component anda00
 port (Aaa: inout std_logic;
       Baa: inout std_logic;
       Yaa: inout std_logic);
end component;

end package8bita00;