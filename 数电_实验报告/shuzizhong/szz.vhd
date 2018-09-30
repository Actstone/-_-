library ieee;
use ieee.std_logic_1164.all;
library altera;
use altera.altera_syn_attributes.all;

entity szz is
	port
	(
		clk_in,clr,set: in std_logic;
		speaker:out std_logic;
		led_dig : out std_logic_vector(7 downto 0);
		led_sel : out std_logic_vector(5 downto 0)
	);
end szz;

architecture Behavioral of szz is
signal clk_1Hz,clk_1KHz:std_logic;
signal led_sel_temp:std_logic_vector(5 downto 0);
signal s1,s2,m1,m2,h1,h2:std_logic_vector(3 downto 0);
signal secc,minc:std_logic;
signal en1,en2,en3:std_logic;
component freq_div is----------------------------------------------------------------------------------freq_div
  port(clk_in_50MHz:in std_logic;
       clk_out_1Hz:out std_logic;
		 clk_out_1KHz:out std_logic);
end component;		 


component scanner is-----------------------------------------------------------------------------------scanner
  port(clk_in:in std_logic;
       led_sel:out std_logic_vector(5 downto 0));
end component;

component counter is------------------------------------------------------------------------------------counter
port (clk,clr,set:in std_logic; 
      secen:in std_logic;
	  minen:in std_logic;
	  houen:in std_logic;
      sechigh,seclow:out std_logic_vector(3 downto 0);
	  minhigh,minlow:out std_logic_vector(3 downto 0);
	  houhigh,houlow:out std_logic_vector(3 downto 0);
	  speaker:out std_logic;
      seccarry:BUFFER std_logic;
	  mincarry:BUFFER std_logic); 
end component;


component display is------------------------------------------------------------------------------------display
  port(led_sel_in:in std_logic_vector(5 downto 0);
       sec_one,sec_ten,min_one,min_ten,hou_one,hou_ten:in std_logic_vector(3 downto 0);
		 led_dig:out std_logic_vector(7 downto 0);
		 led_sel_out:out std_logic_vector(5 downto 0));
end component;

begin
en1<= '1';
en2<= '1';
en3<= '1';
u1:freq_div port map(clk_in,clk_1Hz,clk_1KHz);
u2:scanner port map(clk_1KHz,led_sel_temp);
u3:counter port map(clk_1Hz,clr,set,en1,en2,en3,s2,s1,m2,m1,h2,h1,speaker,secc,minc);
u4:display port map(led_sel_temp,s1,s2,m1,m2,h1,h2,led_dig,led_sel);
end Behavioral;
