library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity display is
  port(led_sel_in:in std_logic_vector(5 downto 0);
       sec_one,sec_ten,min_one,min_ten,hou_one,hou_ten:in std_logic_vector(3 downto 0);
		 led_dig:out std_logic_vector(7 downto 0);
		 led_sel_out:out std_logic_vector(5 downto 0));
end display;

architecture Behavioral of display is

signal dig_temp:std_logic_vector(3 downto 0);


begin
process(led_sel_in,sec_one,sec_ten,min_one,min_ten,hou_one,hou_ten)
begin

case(led_sel_in) is
  when "111110"=>dig_temp<=sec_one;
  when "111101"=>dig_temp<=sec_ten;
  when "111011"=>dig_temp<=min_one;
  when "110111"=>dig_temp<=min_ten;
  when "101111"=>dig_temp<=hou_one;
  when "011111"=>dig_temp<=hou_ten;
  when others=>NULL;
end case;

case(dig_temp) is
  when"0000"=>led_dig<="11000000";
  when"0001"=>led_dig<="11111001";
  when"0010"=>led_dig<="10100100";
  when"0011"=>led_dig<="10110000";
  when"0100"=>led_dig<="10011001";
  when"0101"=>led_dig<="10010010";
  when"0110"=>led_dig<="10000010";
  when"0111"=>led_dig<="11111000";
  when"1000"=>led_dig<="10000000";
  when"1001"=>led_dig<="10010000";
  when others=>led_dig<="00000000";
  end case;
  

end process;

led_sel_out<=led_sel_in;

end Behavioral;  

