library ieee;
use ieee.std_logic_1164.all;-------------------------------------音调查询
entity tonetaba is
	port(index:in integer range 0 to 15;
				code:out std_logic_vector(3 downto 0);
				highi:out std_logic;
				tone:out std_logic_vector(10 downto 0));
				
end;
architecture one of tonetaba is
begin
	search:process(index)
	begin
		case index is-----------------------------------------------译码电路，查表方式，控制音调的预置数
	when 0=>tone<="11111111111";code<="0000";highi<='0';	
	when 1=>tone<="01100000101";code<="0001";highi<='0';
	when 2=>tone<="01110010000";code<="0010";highi<='0';
	when 3=>tone<="10000001100";code<="0011";highi<='0';
	when 5=>tone<="10010101101";code<="0101";highi<='0';
	when 6=>tone<="10100001010";code<="0110";highi<='0';
	when 7=>tone<="10101011100";code<="0111";highi<='0';
	when 8=>tone<="10110000010";code<="0000";highi<='1';
	when 9=>tone<="10111001000";code<="0001";highi<='1';
	when 10=>tone<="11000000110";code<="0010";highi<='1';
	when 11=>tone<="11000101011";code<="0011";highi<='1';
	when 12=>tone<="11001010110";code<="0101";highi<='1';
	when 13=>tone<="11010000100";code<="0110";highi<='1';
	when 15=>tone<="11011000000";code<="0111";highi<='1';
	
	
	when others=>null;
	end case;
	end process;
end;