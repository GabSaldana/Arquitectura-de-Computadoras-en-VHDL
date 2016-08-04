library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo3;
use machxo3.all;

package packagegeneric01 is 
	component toposc00
		 port(
			   cdiv0: in std_logic_vector(3 downto 0);
			   outdiv0: inout std_logic);
	end component;
	
	component and00
		port(
				clka: in std_logic;
				codopa: in std_logic_vector(4 downto 0);
				portAa: in std_logic_vector(7 downto 0);
				portBa: in std_logic_vector(7 downto 0);
				inFlaga: in std_logic;
				outa: out std_logic_vector(7 downto 0);
				outFlaga: inout std_logic);
	end component;
	
	component or00
		port(
				clko: in std_logic;
				codopo: in std_logic_vector(4 downto 0);
				portAo: in std_logic_vector(7 downto 0);
				portBo: in std_logic_vector(7 downto 0);
				inFlago: in std_logic;
				outo: out std_logic_vector(7 downto 0);
				outFlago: inout std_logic);
	end component;
	
	component nor00
		port(
				clknor: in std_logic;
				codopnor: in std_logic_vector(4 downto 0);
				portAnor: in std_logic_vector(7 downto 0);
				portBnor: in std_logic_vector(7 downto 0);
				inFlagnor: in std_logic;
				outnor: out std_logic_vector(7 downto 0);
				outFlagnor: inout std_logic);
	end component;
	
	component nand00
		port(
				clknand: in std_logic;
				codopnand: in std_logic_vector(4 downto 0);
				portAnand: in std_logic_vector(7 downto 0);
				portBnand: in std_logic_vector(7 downto 0);
				inFlagnand: in std_logic;
				outnand: out std_logic_vector(7 downto 0);
				outFlagnand: inout std_logic);
	end component;
	
	component xor00
		port(
				clkxor: in std_logic;
				codopxor: in std_logic_vector(4 downto 0);
				portAxor: in std_logic_vector(7 downto 0);
				portBxor: in std_logic_vector(7 downto 0);
				inFlagxor: in std_logic;
				outxor: out std_logic_vector(7 downto 0);
				outFlagxor: inout std_logic);
	end component;
	
	component xnor00
		port(
				clkxnor: in std_logic;
				codopxnor: in std_logic_vector(4 downto 0);
				portAxnor: in std_logic_vector(7 downto 0);
				portBxnor: in std_logic_vector(7 downto 0);
				inFlagxnor: in std_logic;
				outxnor: out std_logic_vector(7 downto 0);
				outFlagxnor: inout std_logic);
	end component;
	
	component not00
		port(
				clknot: in std_logic;
				codopnot: in std_logic_vector(4 downto 0);
				portAnot: in std_logic_vector(7 downto 0);

				inFlagnot: in std_logic;
				outnot: out std_logic_vector(7 downto 0);
				outFlagnot: inout std_logic);
	end component;
	
	component uc00
		port(
				clkuc: in std_logic;
				enableuc: in std_logic;
				inuc: in std_logic_vector(7 downto 0);
				inFlaguc: in std_logic;
				
				outuc: out std_logic_vector(7 downto 0);
				outFlaguc: out std_logic);
	end component;

end packagegeneric01;