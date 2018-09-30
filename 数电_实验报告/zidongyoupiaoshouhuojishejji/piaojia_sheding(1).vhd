
library ieee;----------------------------------------------票价设定模块VHDL程序
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity piaojiasheding is
	port(clk,en,rd1:in std_logic;
			q:out std_logic_vector(4 downto 0));
end piaojiasheding;

architecture one of piaojiasheding is
signal qn:std_logic_vector(4 downto 0);
begin
		q<=qn;
	process(clk,rd1)
	begin
		if(rd1='0')then------------------rd1为0时，当前价格qn被清零。
			qn<="00000";
			elsif(clk'event and clk='1')then------------------
				if(en='0')then
					if(qn="11111")then
						qn<="00000";
					else
						qn<=qn+1;-------------------en为0，票价随时钟clk的脉冲从0开始逐渐加1
				end if;
			end if;
		end if;
	end process;
end one;
------------------上面的程序中，rd1是清零键（如果对当前的价格不满意，按下清零键，票价为0，可以重新设定）
------------------en票价设定键，当en为0时，票价随时钟clk的脉冲从0开始逐渐加1，最大票价规定为3元（因此程序中
------------------q和qn用5位二进制数表示，5位二进制数最大为11111，即十进制的31，但是当qn达到11111时，立即被置00000，
------------------所以qn最大为11110，即十进制的30，对应3元）。票价为3元后，又重新开始从0逐渐增加，直到选择到满意的票价，
------------------立即将en键变为1。因此票价设定时，要对en键进行手工操作，所以时钟clk的频率不能太高，这里选择1Hz。




library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;---------------------------邮票类型选择模块

entity youpiao_xuanze is
	port(clk,rd3:in std_logic;
			k:in std_logic;
			pa,pb:in std_logic_vector(4 downto 0);
			a,b,e:out std_logic;
			q:out std_logic_vector(4 downto 0));
end youpiao_xuanze;
architecture a of youpiao_xuanze is
type state_m is(s0,s1,s2,s3);
signal state:state_m;
signal nextstate:state_m;
begin
		reg1:process(rd3,clk)
				begin
					if rd3='0'then----------------------------------------当rd3为0时，状态恢复为s0
						state<=s0;
						elsif(clk'event and clk='1')then-------------------当rd3为1时，状态随着clk的变化而变化。
							state<=nextstate;
						end if;
		end process reg1;
		reg2:process(k,state)
				begin
					case state is
						when s0=>if k='0'then nextstate <=s1;-------------由k的取值决定，四种状态s0,s1,s2,s3
									else nextstate<=s0;
									end if;
						when s1=>if k='1'then nextstate <=s2;
									else nextstate<=s1;
									end if;
						when s2=>if k='0'then nextstate <=s3;
									else nextstate<=s2;
									end if;
						when s3=>if k='1'then nextstate <=s0;
									else nextstate<=s3;
									end if;
						when others=>state<=s0;
					end case;
		end process reg2;
		reg3:process(state)
			begin
				case nextstate is
				when s0=>q<="00000";a<='0';b<='0';e<='1';--------------不同状态下的情况
					when s1=>q<=pa;a<='1';b<='0';e<='0';
					when s2=>q<=pb;a<='0';b<='1';e<='0';
					when s3=>q<="00000";a<='0';b<='0';e<='1';
					when others=>null;
				end case;
		end process reg3;
end a;		

	----------------------------------以上程序选择用到四种状态s0,s1,s2,s3。在第一个进程reg1:process(rd3,clk)，当rd3为0时，恢复到s0状态。
	----------------------------------当rd3为1时，状态随着时钟的变化而变化。在第二个进程reg2:process(k,state)，通过k值的改变，形成四个状态
	----------------------------------的循环。在第三个进程中reg3:process(state),定义了四种状态的输出情况。
	----------------------------------在s0状态下，执行q<="00000";a<='0';b<='0';e<='1';
	----------------------------------在s1状态下，执行q<=pa;a<='1';b<='0';e<='0';此时输出A票的票价。
	----------------------------------在s2状态下，执行q<=pb;a<='0';b<='1';e<='0';此时输出B票的票价。
	----------------------------------在s3状态下，执行q<="00000";a<='0';b<='0';e<='1';
	
	
	
	
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;---------------------------点阵票型显示模块，但是如何在FPGA板上显示？
entity dianzhen is
	port(clk,a,b,e:in std_logic;
			sela:out std_logic_vector(2 downto 0);
			rowa:out std_logic_vector(0 to 7));
end dianzhen;
architecture one of dianzhen is
signal seel:std_logic_vector(2 downto 0);
	begin
		sela<=seel;
		process(clk,seel)
			begin
				if(clk'event and clk='1')then
					if seel=7 then-------------------当seel为7，立即回到“000”
						seel<="000";
							else
								seel<=seel+1;
							end if;
						end if;
					end process;
					process(clk)
						begin
							if(clk'event and clk='1')then
								if a='1'then-----------------------------------显示字“A”
									case seel is
										when "000"=>rowa<="00000010";
										when "001"=>rowa<="00001000";
										when "010"=>rowa<="00101000";
										when "011"=>rowa<="10001000";
										when "100"=>rowa<="00101000";
										when "101"=>rowa<="00001000";
										when "110"=>rowa<="00000010";
										when "111"=>rowa<="00000000";
										when others=>rowa<="00000000";
									end case;
								elsif b='1'then--------------------------------显示字“B”
									case seel is
										when "000"=>rowa<="00000000";
										when "001"=>rowa<="00000000";
										when "010"=>rowa<="11111110";
										when "011"=>rowa<="10010010";
										when "100"=>rowa<="10010010";
										when "101"=>rowa<="01101100";
										when "110"=>rowa<="00000000";
										when "111"=>rowa<="00000000";
										when others=>rowa<="00000000";
									end case;
								elsif e='1'then--------------------------------显示字“X”
									case seel is
										when "000"=>rowa<="00000000";
										when "001"=>rowa<="01000010";
										when "010"=>rowa<="00100100";
										when "011"=>rowa<="00011000";
										when "100"=>rowa<="00011000";
										when "101"=>rowa<="00100100";
										when "110"=>rowa<="01000010";
										when "111"=>rowa<="00000000";
										when others=>rowa<="00000000";
									end case;
								else-------------------------------------------当a，b，e均为0时，显示0
									case seel is
										when "000"=>rowa<="00000000";
										when "001"=>rowa<="00000000";
										when "010"=>rowa<="00000000";
										when "011"=>rowa<="00000000";
										when "100"=>rowa<="00000000";
										when "101"=>rowa<="00000000";
										when "110"=>rowa<="00000000";
										when "111"=>rowa<="00000000";
										when others=>rowa<="00000000";
									end case;
							end if;
				end if;
		end process;
end one;
	------------------------------------------时钟clk可以用1kHz脉冲信号，程序中seel是为点阵的动态扫描设定的，它的值从0到7随时钟信号
	------------------------------------------不断循环变化。a=1时，使点阵显示“A”；b=1时，使点阵显示“B”字；e=1时，使点阵显示“X”。
	------------------------------------------通过上述代码得到的图形，a，b，e是选择邮票类型的输入信号。当a为1且b，e均为0时，点阵显示“A”。
	------------------------------------------当b为1且a，e为0时，点阵显示“B”字。当e为1且a，b为0时，点阵显示“X”字。输出端sela时点阵动态扫描时
	------------------------------------------选择行的输出信号，rowa是输出点阵每行的显示信息。
										
									
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;---------------------------邮票数量设定模块
entity shuliang is
	port(clk,rd6:in std_logic;
			k:in std_logic;
			c:out std_logic_vector(4 downto 0));
end shuliang;
architecture one of shuliang is
type state_m is(s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);
signal state:state_m;
signal nextstate:state_m;
signal p:std_logic_vector(4 downto 0);
begin
	c<=p;
	process(rd6,clk,k,state)
		begin
			if(rd6='0')then-----------------------------当rd6为0时，状态恢复为s0
				state<=s0;
			elsif(clk'event and clk='1')then
				state<=nextstate;
			end if;
case state is
	when s0=>if k='1'then nextstate<=s1;--------------k为1时，变为下一个状态；k为0时，当前状态不变。
				else nextstate<=s0;
				end if;
	when s1=>if k='1'then nextstate<=s2;
				else nextstate<=s1;
				end if;
	when s2=>if k='1'then nextstate<=s3;
				else nextstate<=s2;
				end if;
	when s3=>if k='1'then nextstate<=s4;
				else nextstate<=s3;
				end if;
	when s4=>if k='1'then nextstate<=s5;
				else nextstate<=s4;
				end if;
	when s5=>if k='1'then nextstate<=s6;
				else nextstate<=s5;
				end if;
	when s6=>if k='1'then nextstate<=s7;
				else nextstate<=s6;
				end if;
	when s7=>if k='1'then nextstate<=s8;
				else nextstate<=s7;
				end if;
	when s8=>if k='1'then nextstate<=s9;
				else nextstate<=s8;
				end if;
	when s9=>if k='1'then nextstate<=s0;
				else nextstate<=s9;
				end if;
	when others=>state<=s0;
end case;
case nextstate is
	when s0=>p<="00000";
	when s1=>p<="00001";
	when s2=>p<="00010";
	when s3=>p<="00011";
	when s4=>p<="00100";
	when s5=>p<="00101";
	when s6=>p<="00110";
	when s7=>p<="00111";
	when s8=>p<="01000";
	when s9=>p<="01001";
	when others=>null;
end case;
end process;
end one;
-----------------------------------------------以上程序中，clk是时钟信号，使用1Hz脉冲信号。rd6为0时，状态恢复到s0。k键的功能就是改变
-----------------------------------------------程序中的状态，k从0变为1或从1变为0时，程序的状态都会改变。输出信号c[4...0]，在这10个状
-----------------------------------------------态下，对应输出不同的数值，这些数值在0到9之间。
-----------------------------------------------在得到的原理图中，清零信号rd6为高电平，状态state随着时钟信号clk的变化而变化，共有9个状态。
-----------------------------------------------当开关k从0变为1或者从1变为0时，输出端c的状态也会改变。


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;--------------------------------------------邮票购买模块
entity buy is
	port(clk,m01,m05,m10,rd4,get,finish:in std_logic;
			pri:in std_logic_vector(4 downto 0);
			shuliang:in std_logic_vector(4 downto 0);
			b01,b05,b10,chu:out std_logic;
			q:out std_logic_vector(9 downto 0));
end;
architecture one of buy is
signal coin,c:std_logic_vector(9 downto 0);
signal price:std_logic_vector(9 downto 0);
	begin
		q<=coin;
		price<=pri*shuliang;
		process(rd4,clk)
			begin
				if(rd4='0')then-------------------------------------------------清零
					coin<="0000000000";
				elsif(clk'event and clk='1')then--------------------------------时钟来了初始化
					b01<='0';b05<='0';b10<='0';chu<='0';c<=coin;
						if(m01='0')then
							if(coin>"11110")then
								coin<="0000000000";
							else
								coin<=coin+1;
							end if;
						elsif(m05='0')then
							if(coin>"11110")then
								coin<="0000000000";
							else
								coin<=coin+5;
							end if;
						elsif(m10='0')then
							if(coin>"11110")then
								coin<="0000000000";
							else
								coin<=coin+10;
							end if;
						elsif get='0' then
							if c>=price then
								coin<=c-price;
								chu<='1';
							end if;
						elsif finish='0' then
							if coin>"01001" then
								coin<=coin-10;
								b10<='1';
							elsif coin>"00100" then
								coin<=coin-5;
								b05<='1';
							elsif coin>"00000" then
								coin<=coin-1;
								b01<='1';
							end if;
						end if;
				end if;
		end process;
end one;
-------------------------------------------------以上程序中，输入端有clk,m01,m05,m10,rd4,get,finish,pri[4...0],shuliang[4...0]。
-------------------------------------------------clk是时钟信号，采用1Hz的脉冲信号。m01，m05，m10分别代表0.1元，0.5元，1.0元的投币输入。
-------------------------------------------------rd4是清零键，可以对误操作进行清零操作，低电平有效（即rd4为0时有效），当处于高电平，为可购买状态。
-------------------------------------------------get为取票功能键，状态为0时，进入取票状态。finish为找零功能键，状态为0时，进入找零状态。
-------------------------------------------------pri[4...0]是输入的票价。shuliang[4...0]是输入的要购买邮票的数量。



-------------------------------------------------




library ieee;----------------------------------------数据转换模块
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity piaojiazhuanhuan is
	port(price:in std_logic_vector(4 downto 0);
	p_h,p_1:out std_logic_vector(4 downto 0));
end piaojiazhuanhuan;
architecture rt1 of piaojiazhuanhuan is
begin
	process(price)
		begin
		if price<"01010"then
			p_h<="00000";
			p_1<=price;
		elsif price="01010"then
			p_h<="00001";
			p_1<="00000";
		elsif price>"01001" and price<"10100"then
			p_h<="00001";
			p_1<=price-10;
		elsif price="10100"then
			p_h<="00010";
			p_1<="00000";
		elsif price>"10100" and price<"11110"then
			p_h<="00010";
			p_1<=price-20;
		elsif price="11110"then
			p_h<="00011";
			p_1<="00000";
		else
			p_h<="00000";
			p_1<="00000";
		end if;
	end process;
end rt1;
------------------------------------------------------从上面的程序可以看出，票价的高位最多为3。



library ieee;-----------------------------------------动态扫描模块
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity dongtaism is
	port(clk:in std_logic;
			msh,msl,sh,sl,mh,ml:in std_logic_vector(4 downto 0);
			dp:out std_logic;
			daout:out std_logic_vector(4 downto 0);
			sel:out std_logic_vector(2 downto 0));
end;
architecture one of dongtaism is
signal tmp:std_logic_vector(4 downto 0);
signal se:std_logic_vector(2 downto 0);
	begin
sel<=se;
daout<=tmp;
process(clk,se)
	begin
		if(clk'event and clk='1')then
			if se="111"then
				tmp<="00000";
				se<="000";
			else
	se<=se+1;
					case se is
						when "101"=>tmp<=msh;dp<='1';
						when "110"=>tmp<=msl;dp<='0';
						when "011"=>tmp<=sh;dp<='0';
						when "100"=>tmp<=sl;dp<='0';
						when "001"=>tmp<=mh;dp<='1';
						when "010"=>tmp<=ml;dp<='0';
						when others=>tmp<="00000";dp<='0';
					end case;
				end if;
			end if;
		end process;
end;




library ieee;-------------------------------------数码管显示程序
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
entity youpiaoqiduan is
	port(d:in std_logic_vector(4 downto 0);
			seg:out std_logic_vector(6 downto 0));
end youpiaoqiduan;
architecture a of youpiaoqiduan is
	begin
		seg<="0111111"when d=0 else
			"0000110"when d=1 else
			"1011011"when d=2 else
			"1001111"when d=3 else
			"1100110"when d=4 else
			"1101101"when d=5 else
			"1111101"when d=6 else
			"0000111"when d=7 else
			"1111111"when d=8 else
			"1101111"when d=9 else
			"0000000";
end a;
			




	


								
				
					


































	
	
	
	
	
	
	
	