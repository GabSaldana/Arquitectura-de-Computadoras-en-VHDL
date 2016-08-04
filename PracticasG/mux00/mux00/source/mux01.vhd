library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux01 is
	PORT(a      : IN std_logic_vector(1 DOWNTO 0); 
             b      : IN std_logic_vector(1 DOWNTO 0); 
             c      : IN std_logic_vector(1 DOWNTO 0); 
             d      : IN std_logic_vector(1 DOWNTO 0); 
             sel    : IN std_logic_vector(1 DOWNTO 0); 
             salida : OUT std_logic_vector(1 DOWNTO 0));
end;

architecture mux01 of mux01 is
begin
	PROCESS (sel, a, b, c,d) IS
       BEGIN
         CASE sel IS
           WHEN "00" => salida <= a;
           WHEN "01" => salida <= b;
           WHEN "10" => salida <= c;
           WHEN "11" => salida <= d;
           WHEN OTHERS => salida <= (others => '0');
         END CASE;
       END PROCESS;
end mux01;
