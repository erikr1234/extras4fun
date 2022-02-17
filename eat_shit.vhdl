library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.NUMERIC_STD_UNSIGNED.all;

entity counter is
port (
  clk : in std_logic;
  cnt : out std_logic_vector (3 downto 0)
);
end counter;

architecture cnt of counter is
  signal count : std_logic_vector (3 downto 0) := (others => '0');
  
begin

  cnt <= count;
  
  process(clk) 
  variable v_Count : natural range 0 to 62499999 := 0;
  begin
    if rising_edge(clk) then
      v_Count := v_Count + 1;
      if (v_Count = 62499999) then
        --reset the clock
        v_Count := 0;
      end if;
    end if;
  end process;

end cnt;