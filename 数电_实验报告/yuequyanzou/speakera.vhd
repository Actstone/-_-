
library ieee;-----------------------------------------------------音调产生模块
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity speakera is
	port(clk:in std_logic;
				tone:in std_logic_vector(10 downto 0);
				spks:out std_logic);
end;
architecture one of speakera is
	signal preclk, fullspks: std_logic;
begin
	divideclk:process(clk)
			variable count4:std_logic_vector(3 downto 0);
begin
	preclk<='0';-------------------------------------------将clk进行12分频，preclk为clk的12分频
	if count4>11 then preclk<='1';count4:="0000";
	elsif clk'event and clk='1' then count4:=count4+1;
	end if;
end process;
	genspks:process(preclk, tone)--------------------------------11位可预置计数器
		variable count11:std_logic_vector(10 downto 0);
begin
		if preclk'event and preclk='1' then
			if count11=16#7FF# then count11:=tone;fullspks<='1';
				else count11:=count11+1;fullspks<='0';end if;
			end if;
		end process;
delayspks:process(fullspks)----------------------------------将输出再2分频，展宽脉冲，使扬声器有足够的功率发音
		variable count2:std_logic;
begin
		if fullspks'event and fullspks='1' then count2:=not count2;
				if count2='1' then spks<='1';
				else spks<='0';end if;
			end if;
		end process;
end;



