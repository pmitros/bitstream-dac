-- System test
--
-- Verifies performance of the bitstream DAC.

library ieee;
library lpm;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use lpm.lpm_components.all;

entity systemtest is port(
        clk           : in std_logic;
        bit_out       : out std_logic);
end systemtest;
architecture stub of systemtest is
  component bitstreamdac is port(clk     : in std_logic;
                                 data_in : in std_logic_vector(15 downto 0);
                                 bit_out : out std_logic);
  end component;
  
  signal ctr : std_logic_vector(15 downto 0);
begin
  -- All of the components of the circuit
  accum1: bitstreamdac
    port map(clk => clk, data_in => ctr, bit_out => bit_out);

  clocked:process(clk)   
  begin
    if rising_edge(clk) then 
      ctr <=  ctr + 1;
    end if;
  end process;
end stub;
