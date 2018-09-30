library ieee;------------------------------数字钟
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity counter is
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
end counter;
architecture mc of counter is
SIGNAL seccnt1,seccnt0:std_logic_vector(3 downto 0);
SIGNAL mincnt1,mincnt0:std_logic_vector(3 downto 0);
SIGNAL houcnt1,houcnt0:std_logic_vector(3 downto 0);
SIGNAL secc,minc:std_logic;
begin
process(clk)
begin
if(clr='0' or set='0')then
if(clr='0')then
   seccnt0<="0000";
   seccnt1<="0000";
end if;
if(set='0')then
   seccnt0<="0101";
   seccnt1<="0101";
end if;
   elsif(clk'event and clk='1')then
     if(secen='1')then
       if seccnt1="0101" and seccnt0="1000" then
          seccarry<='1';
          seccnt0<="1001";
        elsif seccnt0<"1001" then
              seccnt0<=(seccnt0+1);
             else
               seccnt0<="0000";
               if seccnt1<"0101"then
                  seccnt1<=seccnt1+1;
                  else
                    seccnt1<="0000";
                    seccarry<='0';
               end if;
         end if;
     end if;
end if;
sechigh <= seccnt1;
seclow <= seccnt0;
secc <= seccarry;
end process;

process(secc)
begin
if(clr='0' or set='0')then
if(clr='0')then
   mincnt0<="0000";
   mincnt1<="0000";
end if;
if(set='0')then
   mincnt0<="1001";
   mincnt1<="0101";
end if;
   elsif(secc'event and secc='0')then
     if(minen='1')then
       if mincnt1="0101" and mincnt0="1000" then
          mincarry<='1';
          mincnt0<="1001";
        elsif mincnt0<"1001" then
              mincnt0<=(mincnt0+1);
             else
               mincnt0<="0000";
               if mincnt1<"0101"then
                  mincnt1<=mincnt1+1;
                  else
                    mincnt1<="0000";
                    mincarry<='0';
               end if;
         end if;
     end if;
end if;
minhigh <= mincnt1;
minlow <= mincnt0;
minc <= mincarry;
end process;

process(minc)
begin
if(clr='0' or set='0')then
if(clr='0')then
   houcnt0<="0000"; 
   houcnt1<="0000";
end if;
if(set='0')then
   houcnt0<="0000"; 
   houcnt1<="0000";
end if;
   elsif(minc'event and minc='0')then
     speaker<='0';
     if(houen='1')then
       if houcnt1="0010" and houcnt0="0011" then
          houcnt0<="0000";
			 houcnt1<="0000";
        elsif houcnt0<"1001" then
              houcnt0<=(houcnt0+1);
             else
               houcnt0<="0000";
					houcnt1 <= (houcnt1+1);
         end if;
     end if;
end if;
speaker<='1';
houhigh <= houcnt1;
houlow <= houcnt0;
end process;
end mc;  
