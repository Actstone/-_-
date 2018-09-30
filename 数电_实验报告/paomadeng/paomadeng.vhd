library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity led is
port(clk:in std_logic;----时钟信号
		rst:in std_logic;----系统复位信号
		q:out std_logic_vector(7 downto 0));----接LED1~LED8
end;
architecture one of led is
	type states is(s0,s1,s2,s3);----定义四种模式
	signal present : states;
	signal q1:std_logic_vector(7 downto 0);
	signal count:std_logic_vector(3 downto 0);
begin
process (clk,rst)
begin
if rst='1' then----系统复位
	present <= s0;
	q1<=(others=>'0');
elsif clk 'event and clk ='1'then
	case present is
	when s0=>if q1="00000000" then----s0模式：从左到右逐个点亮LED
			q1<="10000000";
		else
			if count="0111"then
				count<=(others=>'0');
				q1<="00000001";
				present<=s1;
			else q1<=q1(0)&q1(7 downto 1);
					count<=count+1;
					present<=s0;
			end if;
		end if;
	when s1 => if count="0111" then----s1模式：从右到左逐个点亮LED
					count<=(others=>'0');
					q1<="10000001";
					present<=s2;
			else q1<=q1(6 downto 0)&q1(7);
					count<=count+1;
					present<=s1;
			end if;
	when s2 => if count="0011" then----s2模式：从两边到中间逐个点亮LED 
					count<=(others=>'0');
					q1<="00011000";
					present<=s3;
			else q1(7 downto 4)<=q1(4)&q1(7 downto 5);
					q1(3 downto 0)<=q1(2 downto 0)&q1(3);
					count<=count+1;
					present<=s2;
			end if;
	when s3 => if count="0011" then----s3模式：从中间到两边逐个点亮LED 
					count<=(others=>'0');
					q1<="10000000";
					present<=s0;
			else q1(7 downto 4)<=q1(6 downto 4)&q1(7);
					q1(3 downto 0)<=q1(0)&q1(3 downto 1);
					count<=count+1;
					present<=s3;
			end if;
		end case;
	end if;
	end process;
		q<=q1;
	end;