library ieee;
use ieee.std_logic_1164.all;
entity songer is
	port(clk25mhz:in std_logic;------------------------------音调频率信号
			clk1:in std_logic;----------------------------------节拍频率信号
			code1:out std_logic_vector(3 downto 0);--------------数字简谱的二进制
			high1:out std_logic;-------------------------------高八度指示
			spkout:out std_logic-----------------------------声音输出
			
		);
end;

architecture one of songer is
	


	component digit_led
		port(digit_data_out: out std_logic_vector(7 downto 0);
		digit_cs_out: out std_logic_vector(3 downto 0));
	end component;
	component notetabs------------------------------------note
		port(clk:in std_logic;
				toneindex:out integer range 0 to 15);
	end component;
	component tonetaba-------------------------------------tone
		port(index:in integer range 0 to 15;
				code:out std_logic_vector(3 downto 0);
				highi:out std_logic;
				tone:out std_logic_vector(10 downto 0));
	end component;
	component speakera------------------------------------speaker
		port(clk:in std_logic;
				tone:in std_logic_vector(10 downto 0);
				spks:out std_logic);
	end component;
	signal tone:std_logic_vector(10 downto 0);
	signal toneindex:integer range 0 to 15;
	signal A1:std_logic_vector(3 downto 0);
	
begin

code1<=A1;

u1:notetabs port map(clk=>clk1, toneindex=>toneindex);
u2:tonetaba port map(index=>toneindex, tone=>tone, highi=>high1,code=>A1);
u3:speakera port map(clk=>clk25mhz, tone=>tone, spks=>spkout);

end;