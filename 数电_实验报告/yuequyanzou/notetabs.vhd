
library ieee;-----------------------------------------------------节拍和音符数据发生器模块
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity notetabs is
	port(clk:in std_logic;
			toneindex:out integer range 0 to 15);
end;
architecture one of notetabs is
component music--------------------------------------------音符数据ROM
port(address:in integer range 0 to 73;
		inclock:in std_logic;
		q:out integer range 0 to 15);
end component;

signal counter:integer range 0 to 73;
begin
	cnt8:process(clk,counter)
	begin
		if counter=73 then counter<=0;
		elsif (clk'event and clk='1') then counter<=counter+1;end if;
	end process;
U1:music port map(address=>counter, q=>toneindex, inclock=>clk);

end;




