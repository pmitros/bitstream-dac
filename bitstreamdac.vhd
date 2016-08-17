-- Implements a simple oversampling bitstream DAC.
--
-- This means we can stick a big "1 bit DAC" logo on our case
-- Hallmark of middle-of-the-line 80s audio. 

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bitstreamdac is port(
        clk           : in std_logic;
        data_in       : in std_logic_vector(15 downto 0);
        bit_out       : out std_logic);
end bitstreamdac;
architecture dac of bitstreamdac is
  signal sum: std_logic_vector(16 downto 0);
begin
  bit_out <= sum(16);
  clocked:process(clk)
  begin
    if rising_edge(clk) then
      if sum(16)='0' then 
        sum <= sum + data_in;
      else
        sum <= sum + data_in - "01111111111111111";
      end if;
    end if;
  end process;
end dac;
