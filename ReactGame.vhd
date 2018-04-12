--////////////////////////////////////////////
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
package harsh is
component ThreeBitCounter is
port (clk,reset : in std_logic;
z : out std_logic_vector (2 downto 0));
end component;
	component threebitadder is
		port (x,y : in std_logic_vector( 2  downto 0 );
		z : out std_logic_vector ( 2  downto 0 ));
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
	component D_FF is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	component countercheck is
		port(masterclock , reset : in std_logic ; rand : in std_logic_vector(10 downto 0) ; 
				vec : out std_logic_vector(10 downto 0));
	end component;
	component dbtwo is
		port (inclk, reset: in std_logic; outclk: out std_logic);
	end component;
	component oneclock is
		port (inclk, reset: in std_logic; outclk: out std_logic);
	end component;
	component lfsr is
		port (clk, pwreset: in std_logic; a1:out std_logic_vector(10 downto 0));
	end component ;
	component ledfsm is
		port (switch, check, clk, reset: in std_logic ; led:  out std_logic);
	end component;	
end harsh;
--
library work;
use work.harsh.all;
library std ;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity ReactGame is
port ( switch1 , masterclock , pwreset , reset1 : in std_logic ; 
tottime : out std_logic_vector(10 downto 0) ; led1 : out std_logic;count : out std_logic_vector(2 downto 0));--
end entity;
architecture behave of ReactGame is
signal curr,rand,rand3 : std_logic_vector(10 downto 0);
signal dd : std_logic_vector(2 downto 0);
signal switch,check,addclock, checkerreset,oneeclock, reset,led, sample,endd, ledclk : std_logic;
begin
count <= dd;
tbc : ThreeBitCounter port map(clk=>led,reset=> reset ,z =>dd );
endd <= not (dd(2) and dd(1) and dd(0));
switch <= not switch1;
led1 <= led;
reset <= reset1 or pwreset;
sample <= switch or not reset1;
ledclk <= masterclock and endd;
--ledclk <= masterclock;
checkerreset <= reset or switch;
onclk : oneclock port map (inclk => masterclock , reset => reset, outclk => oneeclock);
random : for i in 0 to 10 generate
	twox: D_FF port map(D => rand(i), CLK => sample,reset => reset, Q => rand3(i));
end generate;
rand1 : lfsr port map (clk => masterclock , pwreset => pwreset , a1 => rand);
--//////////////////////////////////
checker1 : countercheck port map ( masterclock => masterclock , reset => checkerreset , rand=>rand3 , vec=>curr );
check <= not ((rand(0) xor curr(0)) or (rand(1) xor curr(1)) or (rand(2) xor curr(2)) or (rand(3) xor curr(3)) or (rand(4) xor curr(4)) or (rand(5) xor curr(5)) or (rand(6) xor curr(6)) or (rand(7) xor curr(7)) or (rand(8) xor curr(8)) or (rand(9) xor curr(9)) or (rand(10) xor curr(10))); 
ledfsm1 : ledfsm port map (switch=>switch , clk=>ledclk , reset=>reset ,check=>check ,led => led);
addclock <= oneeclock and led and not(switch);
da : DelayAdder port map( clk => addclock , reset=>reset , Z => tottime);
end behave;

library work;
use work.harsh.all;
library std ;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity countercheck is
port( masterclock , reset : in std_logic ; rand : in std_logic_vector(10 downto 0) ; 
vec : out std_logic_vector(10 downto 0));
end entity;
architecture checkkk of countercheck is
signal curr : std_logic_vector( 10 downto 0);
signal clock: std_logic;
begin
clock1 : oneclock port map ( reset => reset , inclk => masterclock , outclk => clock);
counter1 : DelayAdder port map ( clk => clock , reset => reset , z => curr);
--
--check <= not ((rand(0) xor curr(0)) or (rand(1) xor curr(1)) or (rand(2) xor curr(2)) or (rand(3) xor curr(3)) or (rand(4) xor curr(4)) or (rand(5) xor curr(5)) or (rand(6) xor curr(6)) or (rand(7) xor curr(7)) or (rand(8) xor curr(8)) or (rand(9) xor curr(9)) or (rand(10) xor curr(10))); 
vec <= curr;
end checkkk;

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
	twox: D_FF port map(D => y1(i), CLK => clk,reset => reset,  Q => y(i));
	x1(i) <= x(i) and not(reset);
end generate;
add1: elevenbitadder port map (x => x1 , y => y, z => y1);	
z <= y1;
end behave;

	
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
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity D_FF is
  port (D, CLK, reset: in std_logic; Q: out std_logic);
end entity; 
architecture WhatDoYouCare of D_FF is
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
entity oneclock is
port (inclk, reset: in std_logic; outclk: out std_logic);
end entity;
architecture struct of oneclock is --15 instead of 2
signal Z: std_logic_vector(2 downto 0);
begin
Z(0)<=inclk;
Q1: for I in 0 to 1 generate
dbtwox : dbtwo port map(inclk => Z(I),reset => reset,outclk => Z(I+1));
end generate;
outclk<=Z(2);
end struct;
--
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
D_FF1 : D_FF port map ( D => nq, CLK => inclk, reset=>reset, Q => q);
outclk<= q and not(reset);
end struct;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity lfsr is
  port (clk, pwreset: in std_logic; a1:out std_logic_vector(10 downto 0));
end entity lfsr;
architecture struct of lfsr is
signal x , nq : std_logic_vector(9 downto 0); 
 --signal a1 , a2 : std_logic_vector(10 downto 0);
signal a, b, c : std_logic;
begin
nq(0)<=x(0);
nq(1)<=x(1);
nq(2)<=x(2);
nq(3)<=x(3);
nq(4)<=x(4);
nq(5)<=x(5);
nq(6)<=x(6);
nq(7)<=x(7);
nq(8)<=x(8);
nq(9)<=x(9);
a<=(x(4) xnor x(0));
b<=(x(5) xnor x(0));
c<=(x(6) xnor x(0));
dff0 : D_FF port map ( D => x(1), CLK => clk, reset=>pwreset, Q => x(0));
dff1 : D_FF port map ( D => x(2), CLK => clk, reset=>pwreset, Q => x(1));
dff2 : D_FF port map ( D => x(3), CLK => clk, reset=>pwreset, Q => x(2));
dff3 : D_FF port map ( D => a, CLK => clk, reset=>pwreset, Q => x(3));
dff4 : D_FF port map ( D => b, CLK => clk, reset=>pwreset, Q => x(4));
dff5 : D_FF port map ( D => c, CLK => clk, reset=>pwreset, Q => x(5));
dff6 : D_FF port map ( D => x(7), CLK => clk, reset=>pwreset, Q => x(6));
dff7 : D_FF port map ( D => x(8), CLK => clk, reset=>pwreset, Q => x(7));
dff8 : D_FF port map ( D => x(9), CLK => clk, reset=>pwreset, Q => x(8));
dff9 : D_FF port map ( D => x(0), CLK => clk, reset=>pwreset, Q => x(9));
a1(0) <= nq(0);a1(1) <= nq(1);a1(2) <= nq(2);a1(3) <= nq(3);a1(4) <= nq(4);a1(5) <= nq(5);a1(6) <= nq(6);a1(7) <= nq(7);a1(8) <= nq(8);a1(9) <= nq(9);a1(10) <= '1';
end struct;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity ledfsm is
    port (switch, check, clk, reset: in std_logic ; led:  out std_logic);
end entity;
architecture struct of ledfsm is
signal q1,q0,nq1,nq0: std_logic;
begin

    dutr2: D_FF port map (D => nq0,reset => reset, CLK => clk, Q => q0); 
dutr3: D_FF port map (D => nq1,reset => reset, CLK => clk, Q => q1); 



nq0 <= (not reset) and ((not switch) and (q0 or check));
nq1 <= (not reset) and (switch and (q0 or q1));

led <= (not reset) and ((check and (not switch)) or ((not q1) and q0) or (q1 and switch));  
end struct;

library work;
use work.harsh.all;
library std ;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity threebitadder is
port (x,y : in std_logic_vector( 2  downto 0 );
z : out std_logic_vector ( 2  downto 0 ));
end entity;
architecture behave of threebitadder is
signal c : std_logic_vector(2 downto 0);
begin
a1 : onebitadder port map ( x=>x(0) , y=>y(0) , cin=>'0' , s=>z(0) , cout=>c(0));
a2 : onebitadder port map ( x=>x(1) , y=>y(1) , cin=>c(0) , s=>z(1) , cout=>c(1));
a3 : onebitadder port map ( x=>x(2) , y=>y(2) , cin=>c(1) , s=>z(2) , cout=>c(2));

end behave;

library work;
use work.harsh.all;
library std ;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity ThreeBitCounter is
port (clk,reset : in std_logic;
z : out std_logic_vector (2 downto 0));
end entity;
architecture behave of ThreeBitCounter is
signal y : std_logic_vector(2 downto 0);
signal y1 : std_logic_vector(2 downto 0);
signal x1 : std_logic_vector(2 downto 0);
signal x: std_logic_vector(2 downto 0);
begin
x(0) <= '1' ; 
x(1) <= '0' ;
x(2) <= '0' ;
random : for i in 0 to 2 generate
    twox: D_FF port map(D => y1(i), CLK => clk,reset => reset,  Q => y(i));
    x1(i) <= x(i) and not(reset);
end generate;
add1: threebitadder port map (x => x1 , y => y, z => y1);    
z <= y1;
end behave;
