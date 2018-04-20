library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
package harsh is
	component D_FFp is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	component D_FFn is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	component modfive is
		port ( inclk , reset : in std_logic ; outclk : out std_logic);
	end component;
	component modtwo is
		port ( inclk , reset : in std_logic ; clkout : out std_logic);
	end component;
	component modten is
		port ( inclk , reset : in std_logic ; outclk : out std_logic);
	end component;	
	component onebitadder is
		port(x,y,cin: in std_logic ; s,cout: out std_logic);
	end component;
	component elevenbitadder is
		port (x,y : in std_logic_vector( 10  downto 0 );
		z : out std_logic_vector ( 10  downto 0 ));
	end component;
	component DelayAdder is
		port (clk,reset : in std_logic;
		z : out std_logic_vector ( 10  downto 0 ));
	end component;
	component dbtwo is
		port (inclk, reset: in std_logic; outclk: out std_logic);
	end component;
	component oneclock is
		port (inclk, reset: in std_logic; outclk: out std_logic);
	end component;
	component lcd_controller is
		port (clk    : in std_logic;                          
      rst    : in std_logic;                          -- reset
      erase : in       std_logic;                  --- clear position
      put_char : in std_logic;
      write_data : in std_logic_vector(7 downto 0) ;
      write_row : in std_logic_vector(0 downto 0);
      write_column : in std_logic_vector(3 downto 0);
      ack : out std_logic;
      lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_rs : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);
      b11 : out std_logic;
      b12 : out std_logic);     --data line
	end component;
end harsh;
library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity D_FFp is
  port (D, CLK, reset: in std_logic; Q: out std_logic);
end entity; 
architecture WhatDoYouCare of D_FFp is
begin 
   process (CLK , reset) 
   	begin
		if (reset = '1') then
			Q <= '0';
		elsif CLK'event and (CLK = '1') then
	    		Q <= D;
		end if;
   end process;	
end WhatDoYouCare;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity dbtwo is
  port (inclk, reset: in std_logic; outclk: out std_logic);
end entity;
architecture struct of dbtwo is

signal nq, q: std_logic;
begin
nq<=(not(q) and not (reset));
D_FF1 : D_FFn port map ( D => nq, CLK => inclk, reset=>reset, Q => q);
outclk<= q and not(reset);
end struct;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity oneclock is
port (inclk, reset: in std_logic; outclk: out std_logic);
end entity;
architecture struct of oneclock is --15 instead of 2
signal Z: std_logic_vector(16 downto 0);
begin
Z(0)<=inclk;
Q1: for I in 0 to 15 generate
dbtwox : dbtwo port map(inclk => Z(I),reset => reset,outclk => Z(I+1));
end generate;
outclk<=Z(16);
end struct;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity D_FFn is
  port (D, CLK, reset: in std_logic; Q: out std_logic);
end entity; 
architecture WhatDoYouCare of D_FFn is
begin 
   process (CLK , reset) 
   	begin
		if (reset = '1') then
			Q <= '0';
		elsif CLK'event and (CLK = '0') then
	    		Q <= D;
		end if;
   end process;	
end WhatDoYouCare;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity modfive is
port ( inclk , reset : in std_logic ; outclk : out std_logic);
end entity;
architecture paach of modfive is
signal nq,q,nq0,nq1,nq2,q0,q1,q2 : std_logic;
begin
dff0 : D_FFn port map (D=>nq0 , reset => reset, clk => inclk , Q=>q0);
dff1 : D_FFn port map (D=>nq1 , reset => reset, clk => inclk , Q=>q1);
dff2 : D_FFn port map (D=>nq2 , reset => reset, clk => inclk , Q=>q2);
nq0 <= not(q0) and not(q2);
nq1 <= not(q2) and ((not(q1) and q0) or (q1 and not(q0)));
nq2 <= not(q2) and q1 and q0;
--dffo : D_FFn port map (D=>nq , reset => reset , clk => nq2 , Q => q);
--nq <= not(q);
--outclk <= q;
outclk <= q2;
end paach;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity modtwo is
port ( inclk , reset : in std_logic ; clkout : out std_logic);
end entity;
architecture do of modtwo is
signal outclk : std_logic;
begin
process(reset,inclk)
begin
	if ( reset = '1' ) then 
	outclk <= '0';
	elsif ( inclk'event and inclk = '0') then
		outclk <= not(outclk);
	end if;
end process;	
clkout <= outclk ;
end do;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Practice is
port(switch1,inclk,reset,lcdreset : in std_logic; z1 : out std_logic_vector(10 downto 0);
lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_rs : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);
      b11 : out std_logic;
      b12 : out std_logic;
		go : out std_logic);
end entity;
architecture fu of Practice is
signal intclk,clkout,fivekhzclk,lcdclk,resetd,clkoutd : std_logic;
signal z2 : std_logic_vector(10 downto 0);
signal z : std_logic_vector(11 downto 0);
signal clocks : std_logic_vector( 7 downto 0);
type dataarr1 is array (0 to 17) of std_logic_vector(7 downto 0);
type intarr is array (3 downto 0) of integer range 0 to 9;
signal j,i : integer := 0; 
signal dig : intarr ;
signal erase,ack1,ohzclk,switch,gameon,nn : std_logic;
signal put_char,temp3 :  std_logic:='1' ;
signal write_data :  std_logic_vector(7 downto 0) ;
signal write_row :  std_logic_vector(0 downto 0);
signal write_column :  std_logic_vector(3 downto 0) := "0000";
constant lcd_data1 : dataarr1 := (x"30",x"31",x"32",x"33",x"34",x"35",x"36",x"37",x"38",x"39",x"41",x"42",x"43",x"44",x"45",x"46",x"53",x"4F"); 
begin
go <= gameon;
switch <= not switch1;
dffg : D_FFp port map ( D=> nn , reset=>reset , clk=>switch , Q=>gameon);
nn <= not(gameon);
--erase <= '0';
--put_char <= '1';
z1 <= z2;
random : for i in 0 to 6 generate 
	m10 : modten port map ( inclk=>clocks(i) , reset=>reset , outclk =>clocks(i+1));
end generate;
clocks(0) <= inclk;
mff : modfive port map (inclk => clocks(7) , reset=>reset , outclk=>clkout);	
--outclk <= clkout ;
clkoutd <= clkout and gameon and not(reset);
resetd <= reset;
timecalc : DelayAdder port map (clk => clkoutd,reset=>resetd,z=>z2);
z(0) <= z2 (0) ;z(1) <= z2 (1) ;z(2) <= z2 (2) ;z(3) <= z2 (3) ;z(4) <= z2 (4) ;z(5) <= z2 (5) ;z(6) <= z2 (6) ;z(7) <= z2 (7) ;z(8) <= z2 (8) ;z(9) <= z2 (9) ;z(10) <= z2 (10) ;z(11) <= '0';
dig(0) <= to_integer(unsigned(z(3 downto 0)));
dig(1) <= to_integer(unsigned(z(7 downto 4))) ;
dig(2) <= to_integer(unsigned(z(11 downto 8)));
ondded : oneclock port map ( inclk => inclk , reset => reset , outclk => lcdclk);
--fivekhzclk <= clocks(4);
--mff2 : modfive port map (inclk => fivekhzclk , reset => reset , outclk => ohzclk);
display : lcd_controller port map (clk => lcdclk,rst => lcdreset,erase => erase,put_char => put_char,write_data => lcd_data1(i),write_row => write_row,write_column => write_column,lcd_rw => lcd_rw,lcd_en => lcd_en,lcd_rs => lcd_rs,lcd1 => lcd1,b11 => b11,b12 => b12,ack => ack1);
process (lcdclk,lcdreset,ack1) 
begin
if (rising_edge(lcdclk)) then
erase <= '0';
if(ack1 = '1')then 
	if (j = 0) then
		write_column <= "0010";
--		if (go1 = '1')then
--		i <= 14; --E
--		else
		i <= dig(0);--dig(0);
--		end if;
		put_char <= '1';
		write_row <= "0";
	elsif (j = 1)then
		write_column <= "0001";
--		if (go1 = '1')then
--		i <= 16; --S
--		else
		i <= dig(1);--dig(1);
--		end if;
		put_char <= '1';
		write_row <= "0";
	elsif (j = 2)then
		write_column <= "0000";
--		if (go1 = '1')then
--		i <= 17; -- O
--		else
		i <= dig(2); --dig(2);
--		end if;
		put_char <= '1';
		write_row <= "0";
--	elsif (j = 3)then
--		write_column <= "0000";
----		if (go1 = '1')then
----		i <= 15; --L
----		else
--		i <= dig(3);
----		end if;
--		put_char <= '1';
--		write_row <= "0";
	end if;
	
	if(j = 2 )then
		j <= 0;
	elsif( j >2 ) then
		j <= 0;
	else 
		j <= j + 1;	
	end if;
end if;	
end if;

end process;
end fu;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity modten is
port(inclk,reset : in std_logic; outclk : out std_logic);
end entity;
architecture fu of modten is
signal intclk : std_logic;
begin
mf : modfive port map (inclk => inclk , reset=>reset , outclk => intclk);
mt : modtwo  port map (inclk => intclk , reset=>reset , clkout => outclk);
end fu;

library work;
use work.harsh.all;
library std ;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity onebitadder is
port(x,y,cin: in std_logic ; s,cout: out std_logic);
end entity;
architecture bbeeh of onebitadder  is
signal cc1,cc2,cc3,ss,orr1 : std_logic;
begin
--xorr1 : XOR_2 port map( a=>x , b=>y , c=>ss);
ss<= x xor y;
--xorr2 : XOR_2 port map (a=>ss , b=>cin , c=>s);
s <= ss xor cin;
--annd1 : AND_2 port map (a=>x , b=>y , c=>cc1);
cc1 <= x and y;
--annd3 : AND_2 port map (a=>x , b=>cin , c=>cc2);
cc2 <= x and cin;
--annd2 : AND_2 port map (a=>cin , b=>y , c=>cc3);
cc3 <= cin and y;
--oorr1 : OR_2 port map (a=>cc1 , b=>cc2 , c=>orr1);
orr1 <= cc1 or cc2;
--oorr2 : OR_2 port map (a=>orr1 , b=>cc3 , c=>cout);
cout <= orr1 or cc3;
end bbeeh;

library work;
use work.harsh.all;
library std ;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity elevenbitadder is
port (x,y : in std_logic_vector( 10  downto 0 );
z : out std_logic_vector ( 10  downto 0 ));
end entity;
architecture behave of elevenbitadder is
signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11 : std_logic;
begin
oobbaad1 : onebitadder port map ( x=>x(0) , y=>y(0) , cin=>'0' , s=>z(0) , cout=>c1);
oobbaad2 : onebitadder port map ( x=>x(1) , y=>y(1) , cin=>c1 , s=>z(1) , cout=>c2);
oobbaad3 : onebitadder port map ( x=>x(2) , y=>y(2) , cin=>c2 , s=>z(2) , cout=>c3);
oobbaad4 : onebitadder port map ( x=>x(3) , y=>y(3) , cin=>c3 , s=>z(3) , cout=>c4);
oobbaad5 : onebitadder port map ( x=>x(4) , y=>y(4) , cin=>c4 , s=>z(4) , cout=>c5);
oobbaad6 : onebitadder port map ( x=>x(5) , y=>y(5) , cin=>c5 , s=>z(5) , cout=>c6);
oobbaad7 : onebitadder port map ( x=>x(6) , y=>y(6) , cin=>c6 , s=>z(6) , cout=>c7);
oobbaad8 : onebitadder port map ( x=>x(7) , y=>y(7) , cin=>c7 , s=>z(7) , cout=>c8);
oobbaad9 : onebitadder port map ( x=>x(8) , y=>y(8) , cin=>c8 , s=>z(8) , cout=>c9);
oobbaad10 : onebitadder port map ( x=>x(9) , y=>y(9) , cin=>c9 , s=>z(9) , cout=>c10);
oobbaad11 : onebitadder port map ( x=>x(10) , y=>y(10) , cin=>c10 , s=>z(10) , cout=>c11);

end behave;

library work;
use work.harsh.all;
library std ;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity DelayAdder is
port (clk,reset : in std_logic;
z : out std_logic_vector ( 10  downto 0 ));
end entity;
architecture behave of DelayAdder is
signal y : std_logic_vector(10 downto 0);
signal y1 : std_logic_vector(10 downto 0);
signal x1 : std_logic_vector(10 downto 0);
signal x: std_logic_vector(10 downto 0);
begin
x(0) <= '1' ; x(10) <= '0';
x(1) <= '0' ;x(2) <= '0' ;x(3) <= '0' ;x(4) <= '0' ;x(5) <= '0' ;x(6) <= '0' ;x(7) <= '0' ;x(8) <= '0' ;x(9) <= '0' ;
random : for i in 0 to 10 generate
	twox: D_FFp port map(D => y1(i), CLK => clk,reset => reset,  Q => y(i));
	x1(i) <= x(i) and not(reset);
end generate;
add1: elevenbitadder port map (x => x1 , y => y, z => y1);	
z <= y1;
end behave;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity lcd_controller is
port (clk    : in std_logic;                          
      rst    : in std_logic;                          -- reset
      erase : in std_logic;                  --- clear position
      put_char : in std_logic;
      write_data : in std_logic_vector(7 downto 0) ;
      write_row : in std_logic_vector(0 downto 0);
      write_column : in std_logic_vector(3 downto 0);
      ack : out std_logic;
      lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_rs : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);
      b11 : out std_logic;
      b12 : out std_logic);     --data line
end lcd_controller;


architecture Behavioral of lcd_controller is 

type arr is array (0 to 4) of std_logic_vector(7 downto 0);
 constant lcd_cmd : arr := (x"38",x"01",x"0C",x"80",x"04");  -- cmd for LCD

 
signal lcd : std_logic_vector ( 7 downto 0);
signal count_next_cmd, count_cmd :integer range 0 to 5;
signal count_next_data, count_data :integer range 0 to 6;
signal count_next_data1, count_data1 :integer range 0 to 4;
signal cmd_line, cmd_line_next :integer range 0 to 10;
signal cmd_position : std_logic_vector(7 downto 0);
signal data_dis : std_logic_vector(7 downto 0);


type state_type is ( S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11 );
signal state : state_type := S0;

begin

count_next_cmd <= count_cmd + 1;
count_next_data <= count_data + 1;
count_next_data1 <= count_data1 + 1;
cmd_line_next <= cmd_line + 1;
b11 <= '1';
b12 <= '0';
lcd1 <= lcd;

process(clk)
begin
if rising_edge(clk) then
if (write_row(0) = '0') then          -- first row
   cmd_position <= x"80" + write_column ;
   elsif (write_row(0) = '1') then        -- second row
    cmd_position <= x"C0" + write_column ;
end if;
end if;
end process;


PROCESS(clk)

BEGIN

if rising_edge(clk) then

if (rst='0') then
		state <= S0;
		count_cmd <= 0;
		count_data <= 0;
		count_data1 <= 0;
		cmd_line <= 0;
		ack <= '0';
	else
	
	case state is	
	
		when S0=>		-- S0 to S2: Send LCD commands	
			if (count_cmd < 5) then		
				lcd <= lcd_cmd(count_cmd);
				lcd_rs <= '0';
				lcd_rw <= '0';
				lcd_en <= '0';
				ack <= '0';
				state <= S1;
			else 
				state <= S3;				
			end if;
							
		when S1=>	
			lcd <= lcd_cmd (count_cmd);
			lcd_rs <= '0';
			lcd_rw <= '0';
			lcd_en <= '1';
			ack <= '0';
			state <= S2;		
		
			
		when S2 =>	
			lcd <= lcd_cmd (count_cmd);
			lcd_rs <= '0';
			lcd_rw <= '0';
			lcd_en <= '0';
			ack <= '0';
			state <= S0;
			count_cmd <= count_next_cmd;
		
							
		when S3 =>	            -- S3 to S5: Send LCD command position
			lcd <= cmd_position;
			lcd_rs <= '0';
			lcd_rw <= '0';
			lcd_en <= '0';
			ack <= '0';
			state <= S4;	
			
		when S4 =>
			lcd <= cmd_position;
			lcd_rs <= '0';
			lcd_rw <= '0';
			lcd_en <= '1';
			ack <= '0';
			state <= S5;
		
							
		when S5 =>		
			lcd <= cmd_position;
			lcd_rs <= '0';
			lcd_rw <= '0';
			lcd_en <= '0';	
			ack <= '0';
			state <= S6;
			
	when S6=>                     -- S6 to S8: Send LCD data or clear
		   if (erase = '1' ) then
		      data_dis <= x"20";  -- to clear the data
			   lcd <=  data_dis;
			   lcd_rs <= '1';
			   lcd_rw <= '0';
			   lcd_en <= '0';
			   ack <= '0';
			   state <= S7;
			elsif ( put_char = '1') then
			   data_dis <= write_data;       -- lcd data
				lcd <=  data_dis;
			   lcd_rs <= '1';
			   lcd_rw <= '0';
			   lcd_en <= '0';
			   ack <= '0';
			   state <= S7;				
			elsif ( erase = '0' and put_char = '0') then
			   state <= S3;
			end if; 
			
	when S7=>
			lcd <= data_dis ;
			lcd_rs <= '1';
			lcd_rw <= '0';
			lcd_en <= '1';
			ack <= '0';
			state <= S8;
		   
			
	when S8=>		
			lcd <= data_dis  ;
			lcd_rs <= '1';
			lcd_rw <= '0';
			lcd_en <= '0';
			ack <= '1';     
			state <= S9;

	when S9 =>
		   ack <= '0';
		   state <= s3;
			
	when others =>
			state <= S0;
			count_cmd <= 0;		
							
	end case;
	end if;
   end if;
end process;

end Behavioral;