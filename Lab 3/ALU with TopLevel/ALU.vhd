library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
package harsh is
	component twobitmux is
		port (x,y,s: in std_logic; z : out std_logic);
   end component;
	component eightbitadder is
		port (x,y : in std_logic_vector( 7  downto 0 );
		z : out std_logic_vector ( 7  downto 0 ));
	end component;
	component eightbitsubtractor is
		port (x,y : in std_logic_vector( 7  downto 0 );
		z : out std_logic_vector ( 7  downto 0 ));
	end  component;
	component leftshift is
		port ( x,y : in std_logic_vector( 7  downto 0 );
		z: out std_logic_vector ( 7  downto 0 ));
	end component;
	component rightshift is
		port ( x,y : in std_logic_vector( 7  downto 0 );
		z: out std_logic_vector ( 7  downto 0 ));
	end component;
end harsh;


library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity twobitmux is
port( x,y,s : in std_logic; z : out std_logic);
end entity twobitmux;
architecture behave of twobitmux is
begin
z <= ((s and x) or ((not(s)) and y));
end behave;


library work;
use work.harsh.all;
library std ;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity eightbitadder is
port (x,y : in std_logic_vector( 7  downto 0 );
z : out std_logic_vector ( 7  downto 0 ));
end entity;
architecture behave of eightbitadder is
signal c : std_logic_vector(7 downto 0);
begin
z(0) <= x(0) xor y(0);
c(0) <= x(0) and y(0);
z(1) <= (x(1) xor y(1)) xor c(0);
c(1) <= (x(1) and y(1)) or (x(1) and c(0)) or (y(1) and c(0));
z(2) <= (x(2) xor y(2)) xor c(1);
c(2) <= (x(2) and y(2)) or (x(2) and c(1)) or (y(2) and c(1));
z(3) <= (x(3) xor y(3)) xor c(2);
c(3) <= (x(3) and y(3)) or (x(3) and c(2)) or (y(3) and c(2));
z(4) <= (x(4) xor y(4)) xor c(3);
c(4) <= (x(4) and y(4)) or (x(4) and c(3)) or (y(4) and c(3));
z(5) <= (x(5) xor y(5)) xor c(4);
c(5) <= (x(5) and y(5)) or (x(5) and c(4)) or (y(5) and c(4));
z(6) <= (x(6) xor y(6)) xor c(5);
c(6) <= (x(6) and y(6)) or (x(6) and c(5)) or (y(6) and c(5));
z(7) <= (x(7) xor y(7)) xor c(6);
--c(7) <= (x(7) and y(7)) and (x(7) and c(6)) and (y(7) and c(6));
end behave;

library work;
use work.harsh.all;
library std;
use  std.standard.all;
library ieee;
use  ieee.std_logic_1164.all;
entity eightbitsubtractor is
port (x,y : in std_logic_vector( 7  downto 0 );
z : out std_logic_vector ( 7  downto 0 ));
end  entity;
architecture behave of eightbitsubtractor is
signal ycc,yc,o,cc,c: std_logic_vector(7 downto 0);
Begin
yc(0) <= not(y(0));
yc(1) <= not(y(1));
yc(2) <= not(y(2));
yc(3) <= not(y(3));
yc(4) <= not(y(4));
yc(5) <= not(y(5));
yc(6) <= not(y(6));
yc(7) <= not(y(7));
ycc(0) <= not yc(0);
cc(0) <= yc(0);
ycc(1) <= yc(1) xor cc(0);
cc(1) <= cc(0) and yc(1);
ycc(2) <= yc(2) xor cc(1);
cc(2) <= cc(1) and yc(2);
ycc(3) <= yc(3) xor cc(2);
cc(3) <= cc(2) and yc(3);
ycc(4) <= yc(4) xor cc(3);
cc(4) <= cc(3) and yc(4);
ycc(5) <= yc(5) xor cc(4);
cc(5) <= cc(4) and yc(5);
ycc(6) <= yc(6) xor cc(5);
cc(6) <= cc(5) and yc(6);
ycc(7) <= yc(7) xor cc(6);
--cc(1) <= cc(6) and yc(0);
z(0) <= x(0) xor ycc(0);
c(0) <= x(0) and ycc(0);
z(1) <= (x(1) xor ycc(1)) xor c(0);
c(1) <= (x(1) and ycc(1)) or (x(1) and c(0)) or (ycc(1) and c(0));
z(2) <= (x(2) xor ycc(2)) xor c(1);
c(2) <= (x(2) and ycc(2)) or (x(2) and c(1)) or (ycc(2) and c(1));
z(3) <= (x(3) xor ycc(3)) xor c(2);
c(3) <= (x(3) and ycc(3)) or (x(3) and c(2)) or (ycc(3) and c(2));
z(4) <= (x(4) xor ycc(4)) xor c(3);
c(4) <= (x(4) and ycc(4)) or (x(4) and c(3)) or (ycc(4) and c(3));
z(5) <= (x(5) xor ycc(5)) xor c(4);
c(5) <= (x(5) and ycc(5)) or (x(5) and c(4)) or (ycc(5) and c(4));
z(6) <= (x(6) xor ycc(6)) xor c(5);
c(6) <= (x(6) and ycc(6)) or (x(6) and c(5)) or (ycc(6) and c(5));
z(7) <= (x(7) xor ycc(7)) xor c(6);
end  behave;

library work;
use work.harsh.all;
library std ;
use std .standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity leftshift is
port ( x,y : in std_logic_vector( 7  downto 0 );
z: out std_logic_vector ( 7  downto 0 ));
end entity;
architecture behave of leftshift is
signal c : std_logic ;
signal i,j,k : std_logic_vector( 7 downto 0 );
Begin
c <= y(3) or y(4) or y(5) or y(6) or y(7);
m1 : twobitmux port map ( x => '0' , y => x(0) , s => y(0) , z=> i(0) );
m2 : twobitmux port map ( x => x(0) , y => x(1) , s => y(0) , z=> i(1) );
m3 : twobitmux port map ( x => x(1) , y => x(2) , s => y(0) , z=> i(2) );
m4 : twobitmux port map ( x => x(2) , y => x(3) , s => y(0) , z=> i(3) );
m5 : twobitmux port map ( x => x(3) , y => x(4) , s => y(0) , z=> i(4) );
m6 : twobitmux port map ( x => x(4) , y => x(5) , s => y(0) , z=> i(5) );
m7 : twobitmux port map ( x => x(5) , y => x(6) , s => y(0) , z=> i(6) );
m8 : twobitmux port map ( x => x(6) , y => x(7) , s => y(0) , z=> i(7) );

mm1 : twobitmux port map ( x => '0' , y => i(0) , s => y(1) , z=> j(0) );
mm2 : twobitmux port map ( x => '0' , y => i(1) , s => y(1) , z=> j(1) );
mm3 : twobitmux port map ( x => i(0) , y => i(2) , s => y(1) , z=> j(2) );
mm4 : twobitmux port map ( x => i(1) , y => i(3) , s => y(1) , z=> j(3) );
mm5 : twobitmux port map ( x => i(2) , y => i(4) , s => y(1) , z=> j(4) );
mm6 : twobitmux port map ( x => i(3) , y => i(5) , s => y(1) , z=> j(5) );
mm7 : twobitmux port map ( x => i(4) , y => i(6) , s => y(1) , z=> j(6) );
mm8 : twobitmux port map ( x => i(5) , y => i(7) , s => y(1) , z=> j(7) );

mmm1 : twobitmux port map ( x => '0' , y => j(0) , s => y(2) , z=> k(0) );
mmm2 : twobitmux port map ( x => '0' , y => j(1) , s => y(2) , z=> k(1) );
mmm3 : twobitmux port map ( x => '0' , y => j(2) , s => y(2) , z=> k(2) );
mmm4 : twobitmux port map ( x => '0' , y => j(3) , s => y(2) , z=> k(3) );
mmm5 : twobitmux port map ( x => j(0) , y => j(4) , s => y(2) , z=> k(4) );
mmm6 : twobitmux port map ( x => j(1) , y => j(5) , s => y(2) , z=> k(5) );
mmm7 : twobitmux port map ( x => j(2) , y => j(6) , s => y(2) , z=> k(6) );
mmm8 : twobitmux port map ( x => j(3) , y => j(7) , s => y(2) , z=> k(7) );

mmmm1 : twobitmux port map ( x => '0' , y => k(7) , s => c , z=> z(7) );
mmmm2 : twobitmux port map ( x => '0' , y => k(6) , s => c , z=> z(6) );
mmmm3 : twobitmux port map ( x => '0' , y => k(5) , s => c , z=> z(5) );
mmmm4 : twobitmux port map ( x => '0' , y => k(4) , s => c , z=> z(4) );
mmmm5 : twobitmux port map ( x => '0' , y => k(3) , s => c , z=> z(3) );
mmmm6 : twobitmux port map ( x => '0' , y => k(2) , s => c , z=> z(2) );
mmmm7 : twobitmux port map ( x => '0' , y => k(1) , s => c , z=> z(1) );
mmmm8 : twobitmux port map ( x => '0' , y => k(0) , s => c , z=> z(0) );

end behave;

library work;
use work.harsh.all;
library std ;
use std .standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity rightshift is
port ( x,y : in std_logic_vector( 7  downto 0 );
z: out std_logic_vector ( 7  downto 0 ));
end entity;
architecture behave of rightshift is
--...
signal c: std_logic;
signal i,j,k : std_logic_vector( 7 downto 0 );
Begin
c <= y(3) or y(4) or y(5) or y(6) or y(7);
m1 : twobitmux port map ( x => '0' , y => x(7) , s => y(0) , z=> i(7) );
m2 : twobitmux port map ( x => x(7) , y => x(6) , s => y(0) , z=> i(6) );
m3 : twobitmux port map ( x => x(6) , y => x(5) , s => y(0) , z=> i(5) );
m4 : twobitmux port map ( x => x(5) , y => x(4) , s => y(0) , z=> i(4) );
m5 : twobitmux port map ( x => x(4) , y => x(3) , s => y(0) , z=> i(3) );
m6 : twobitmux port map ( x => x(3) , y => x(2) , s => y(0) , z=> i(2) );
m7 : twobitmux port map ( x => x(2) , y => x(1) , s => y(0) , z=> i(1) );
m8 : twobitmux port map ( x => x(1) , y => x(0) , s => y(0) , z=> i(0) );

mm1 : twobitmux port map ( x => '0' , y => i(7) , s => y(1) , z=> j(7) );
mm2 : twobitmux port map ( x => '0' , y => i(6) , s => y(1) , z=> j(6) );
mm3 : twobitmux port map ( x => i(7) , y => i(5) , s => y(1) , z=> j(5) );
mm4 : twobitmux port map ( x => i(6) , y => i(4) , s => y(1) , z=> j(4) );
mm5 : twobitmux port map ( x => i(5) , y => i(3) , s => y(1) , z=> j(3) );
mm6 : twobitmux port map ( x => i(4) , y => i(2) , s => y(1) , z=> j(2) );
mm7 : twobitmux port map ( x => i(3) , y => i(1) , s => y(1) , z=> j(1) );
mm8 : twobitmux port map ( x => i(2) , y => i(0) , s => y(1) , z=> j(0) );

mmm1 : twobitmux port map ( x => '0' , y => j(7) , s => y(2) , z=> k(7) );
mmm2 : twobitmux port map ( x => '0' , y => j(6) , s => y(2) , z=> k(6) );
mmm3 : twobitmux port map ( x => '0' , y => j(5) , s => y(2) , z=> k(5) );
mmm4 : twobitmux port map ( x => '0' , y => j(4) , s => y(2) , z=> k(4) );
mmm5 : twobitmux port map ( x => j(7) , y => j(3) , s => y(2) , z=> k(3) );
mmm6 : twobitmux port map ( x => j(6) , y => j(2) , s => y(2) , z=> k(2) );
mmm7 : twobitmux port map ( x => j(5) , y => j(1) , s => y(2) , z=> k(1) );
mmm8 : twobitmux port map ( x => j(4) , y => j(0) , s => y(2) , z=> k(0) );

mmmm1 : twobitmux port map ( x => '0' , y => k(7) , s => c , z=> z(7) );
mmmm2 : twobitmux port map ( x => '0' , y => k(6) , s => c , z=> z(6) );
mmmm3 : twobitmux port map ( x => '0' , y => k(5) , s => c , z=> z(5) );
mmmm4 : twobitmux port map ( x => '0' , y => k(4) , s => c , z=> z(4) );
mmmm5 : twobitmux port map ( x => '0' , y => k(3) , s => c , z=> z(3) );
mmmm6 : twobitmux port map ( x => '0' , y => k(2) , s => c , z=> z(2) );
mmmm7 : twobitmux port map ( x => '0' , y => k(1) , s => c , z=> z(1) );
mmmm8 : twobitmux port map ( x => '0' , y => k(0) , s => c , z=> z(0) );

end behave;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity alu is
port( X,Y : in std_logic_vector(7 downto 0); x0,x1 : in std_logic ;
Z: out std_logic_vector(7 downto 0));
end entity;
architecture behave of alu is
--...
signal add,dif,r,l : std_logic_vector(7 downto 0);
signal x0c,x1c,x0a,x1a : std_logic_vector(7 downto 0);
begin
--...
x0a(0)<=x0;x0a(1)<=x0;x0a(2)<=x0;x0a(3)<=x0;x0a(4)<=x0;x0a(5)<=x0;x0a(6)<=x0;x0a(7)<=x0;
x1a(0)<=x1;x1a(1)<=x1;x1a(2)<=x1;x1a(3)<=x1;x1a(4)<=x1;x1a(5)<=x1;x1a(6)<=x1;x1a(7)<=x1;
add1 :  eightbitadder port map ( x=>X , y=>Y , z=>add);
sub1 :  eightbitsubtractor port map ( x=>X , y=>Y , z=>dif);
r1 :  rightshift port map (x=>X , y=>Y , z=>r);
l1 : leftshift port map (x=>X , y=>Y , z=>l);
x0c <= not x0a; x1c <= not x1a;
Z <= (x0c and x1c and add) or (x0a and x1c and r) or (x1a and x0a and l) or (x0c and x1a and dif);
--Z <= add;
end behave;