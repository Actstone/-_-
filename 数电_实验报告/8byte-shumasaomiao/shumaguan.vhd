library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity scan_led is
port(clk:in std_logic;----时钟信号
		seg:out std_logic_vector(7 downto 0);----段显示控制信号（abcdefgh）
		scan:out std_logic_vector(7 downto 0));----数码管地址选择控制信号
end;
architecture one of scan_led is
	signal cnt8:integer range 0 to 7;
	signal data:integer range 0 to 15;
	begin
	-------------------------------------用于扫描数码管地址的计数器
	process(clk)
	begin
	if clk'event and clk='1'then 
	cnt8<=cnt8+1;
	end if;
	end process;
	-------------------------------------数码管地址扫描
	process(cnt8)
	begin
	case cnt8 is
		when 0=>scan<="00000001";data<=1;
		when 1=>scan<="00000010";data<=2;
		when 2=>scan<="00000100";data<=4;
		when 3=>scan<="00001000";data<=5;
		when 4=>scan<="00010000";data<=7;
		when 5=>scan<="00100000";data<=9;
		when 6=>scan<="01000000";data<=13;
		when 7=>scan<="10000000";data<=15;
		when others=>null;
	end case;
	end process;
	------------------------------------七段译码
	process(data)
	begin
	case data is -----------------------abcdefgh
		when 0=>seg<="11111100";
		when 1=>seg<="01100000";
		when 2=>seg<="11011010";
		when 3=>seg<="11110010";
		when 4=>seg<="01100110";
		when 5=>seg<="10110110";
		when 6=>seg<="10111110";
		when 7=>seg<="11100000";
		when 8=>seg<="11111110";
		when 9=>seg<="11110110";
		when 10=>seg<="11101110";
		when 11=>seg<="00111110";
		when 12=>seg<="10011100";
		when 13=>seg<="01111010";
		when 14=>seg<="10011110";
		when 15=>seg<="10001110";
		when others=>null;
		end case;
	end process;
end;