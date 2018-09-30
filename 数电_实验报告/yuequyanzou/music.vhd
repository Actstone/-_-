library ieee;-----------------------------------------------------音谱
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity music is
	port(address:in integer range 0 to 73;
		inclock:in std_logic;
		q:out integer range 0 to 15);--（本项目只做了高，低两个度，可以扩展）
end;
architecture one of music is

begin
	
	process(address)
	begin 
	case address is-------------------------------------------周杰伦歌曲《晴天》
		when 00=>q<=6;
		when 01=>q<=9;
		when 02=>q<=13;
		when 03=>q<=9;
		when 04=>q<=4;
		when 05=>q<=3;
		when 06=>q<=5;
		when 07=>q<=6;
		when 08=>q<=13;
		when 09=>q<=9;
		when 10=>q<=7;
		when 11=>q<=1;
		when 12=>q<=5;
		when 13=>q<=13;
		when 14=>q<=9;
		when 15=>q<=1;
		when 16=>q<=13;
		when 17=>q<=7;
		when 18=>q<=13;
		when 19=>q<=6;
		when 20=>q<=9;
		when 21=>q<=13;
		when 22=>q<=6;
		when 23=>q<=3;
		when 24=>q<=5;
		when 25=>q<=6;
		when 26=>q<=13;
		when 27=>q<=9;
		when 28=>q<=1;
		when 29=>q<=5;
		when 30=>q<=13;
		when 31=>q<=9;
		when 32=>q<=1;
		when 33=>q<=13;
		when 34=>q<=7;
		when 35=>q<=9;
		when 36=>q<=13;
		when 37=>q<=6;
		when 38=>q<=9;
		when 39=>q<=13;
		when 40=>q<=9;
		when 41=>q<=4;
		when 42=>q<=3;
		when 43=>q<=5;
		when 44=>q<=6;
		when 45=>q<=13;
		when 46=>q<=9;
		when 47=>q<=7;
		when 48=>q<=1;
		when 49=>q<=5;
		when 50=>q<=13;
		when 51=>q<=9;
		when 52=>q<=1;
		when 53=>q<=13;
		when 54=>q<=7;
		when 55=>q<=13;
		when 56=>q<=6;
		when 57=>q<=9;
		when 58=>q<=13;
		when 59=>q<=6;
		when 60=>q<=3;
		when 61=>q<=5;
		when 62=>q<=6;
		when 63=>q<=13;
		when 64=>q<=9;
		when 65=>q<=1;
		when 66=>q<=5;
		when 67=>q<=13;
		when 68=>q<=9;
		when 69=>q<=1;
		when 70=>q<=13;
		when 71=>q<=7;
		when 72=>q<=9;
		when 73=>q<=13;
		when others=>null;
		
		end case;
		end process;
end;