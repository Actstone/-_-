library ieee;
use ieee.std_logic_1164.all;

entity shumaguan_shuchu is
	port(code_1:in std_logic_vector(3 downto 0);
			Clk12: in std_logic;
			xuanze_shumaguan: out std_logic_vector(2 downto 0);
			shuju_shumaguan: out std_logic_vector(7 downto 0);
			load1: out std_logic
			);
end;

architecture one of shumaguan_shuchu is
	
	
	
	
	component digit_led
		port(
		digit_cs: in std_logic_vector(2 downto 0);-------------xuanze_shumaguan
		digit_data: in std_logic_vector(7 downto 0);-------------
		digit_data_out: out std_logic_vector(7 downto 0);
		digit_cs_out: out std_logic_vector(3 downto 0);
		CLK,load: in std_logic-----------------------------------------load1
		);
end component;

	signal jianjie1:std_logic_vector(3 downto 0);----------code_1
	signal jianjie2:std_logic;-----------------------------clk12
	
	signal digit_data_out:std_logic_vector(7 downto 0) := "00000000";
	
	signal state: std_logic_vector(1 downto 0) := "00";
begin
	
	
	shuju_shumaguan <= digit_data_out;
	process(code_1, CLK12) begin
		load1 <= '0';
		xuanze_shumaguan <= "0" & state;
		if (CLK12'EVENT AND CLK12  = '0') then
			case state is
				when "00" => digit_data_out(0) <= code_1(0); state <= "01";load1 <='1';
				when "01" => digit_data_out(0) <= code_1(1); state <= "10";load1 <='1';
				when "10" => digit_data_out(0) <= code_1(2); state <= "11";load1 <='1';
				when "11" => digit_data_out(0) <= code_1(3); state <= "00";load1 <='1';
			end case;
		end if;
	end process;

end;

