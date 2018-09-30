
library ieee;-----------------------------------------------------分频模块
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity zidongfenpin is
	port(clk_in:in std_logic;
				
				clk_out:out std_logic);
end;
architecture one of zidongfenpin is
	signal preclk1, fullspks1: std_logic;
begin
	divideclk:process(clk_in)
			variable count25:std_logic_vector(20 downto 0);
begin
	preclk1<='0';-------------------------------------------将clk进行12分频，preclk1为clk的12分频
	if count25>3125000 then preclk1<='1';count25:="000000000000000000000";
	elsif clk_in'event and clk_in='1' then count25:=count25+1;
	end if;
end process;
	
delayspks:process(fullspks1)----------------------------------将输出再2分频，展宽脉冲，使扬声器有足够的功率发音
		variable count20:std_logic;
begin
		if fullspks1'event and fullspks1='1' then count20:=not count20;
				if count20='1' then clk_out<='1';
				else clk_out<='0';end if;
			end if;
		end process;
end;



