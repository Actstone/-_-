library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity freq_div is 
  port(clk_in_50MHz:in std_logic;
       clk_out_1Hz:out std_logic;
		 clk_out_1KHz:out std_logic);
end freq_div;

architecture Behavioral of freq_div is	


signal temp_counter_1KHz:std_logic;
signal temp_counter_1Hz:std_logic;

begin

process(clk_in_50MHz)	 

variable cnt:integer range 0 to 24999;
begin

if(clk_in_50MHz'event and clk_in_50MHz='1')then
  if(cnt<24999)then
    cnt:=cnt+1;
  else
    cnt:=0; temp_counter_1KHz<=not temp_counter_1KHz;
  end if;
  end if;
  clk_out_1KHz<=temp_counter_1KHz;
end process;



process(temp_counter_1Khz)
variable cnt1:integer range 0 to 499;

begin
if(temp_counter_1KHz'event and temp_counter_1KHz='1')then
  if(cnt1<499)then
    cnt1:=cnt1+1;
  else 
    cnt1:=0;  temp_counter_1Hz<=not temp_counter_1Hz;
  end if;
  end if;
 clk_out_1Hz<=temp_counter_1Hz;
  
end process;
 

end Behavioral;
