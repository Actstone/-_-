library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity scanner is
  port(clk_in:in std_logic;
       led_sel:out std_logic_vector(5 downto 0));
end scanner;

architecture Behavioral of scanner is



begin
process(clk_in)

variable i:integer;

begin

if(clk_in'event and clk_in='1')then

case(i) is
  when 0=>led_sel<="111110";i:=1;
  when 1=>led_sel<="111101";i:=2;
  when 2=>led_sel<="111011";i:=3;
  when 3=>led_sel<="110111";i:=4;
  when 4=>led_sel<="101111";i:=5;
  when 5=>led_sel<="011111";i:=0;
 when others=>led_sel<="000000";i:=0;
end case;

end if;
end process;
end Behavioral;  
