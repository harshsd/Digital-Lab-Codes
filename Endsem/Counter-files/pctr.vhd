library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;


entity DFF2 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end entity;

architecture WhatDoYouCare of DFF2 is
begin 

   process (CLK,reset) 
   begin
	
	   if (reset='1') then
	     Q <= '0';
		  
		else if CLK'event and (CLK = '0') then
		  Q <= D;
		end if;
		  
	end if;
   end process;

end WhatDoYouCare;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;


entity DFF1 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end entity;

architecture WhatDoYouCare of DFF1 is
begin 

   process (CLK,reset) 
   begin
	
	   if (reset='1') then
	     Q <= '0';
		  
		else if CLK'event and (CLK = '1') then
		  Q <= D;
		end if;
		  
	end if;
   end process;

end WhatDoYouCare;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;


entity mod2 is 
 port (CLK,reset: in std_logic; Y0: out std_logic);
end entity;

architecture behave of mod2 is

component DFF2 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;

signal q0: std_logic ;
signal nq0: std_logic;

begin

nq0 <= (not q0); --and (not reset);

dut11: DFF2 port map (D => nq0,reset => reset, CLK => CLK, Q => q0);

Y0 <= q0;

end behave;

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;



entity mod4 is 
 port (CLK,reset: in std_logic; Y1,Y0: out std_logic);
end entity;

architecture behave of mod4 is


component mod2 is 
 port (CLK,reset: in std_logic; Y0: out std_logic);
end component;

signal a1: std_logic;

begin
Y0 <= a1;

dut12: mod2 port map ( CLK => CLK, reset => reset, Y0 => a1) ;
dut13: mod2 port map ( CLK => a1, reset => reset, Y0 => Y1);

end behave;



library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity mod5 is
port ( inclk , reset : in std_logic ; Y2,Y1,Y0: out std_logic);
end entity;

architecture behave of mod5 is

component DFF2 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;

signal nq,q,nq0,nq1,nq2,q0,q1,q2 : std_logic;

begin

dff0 : DFF2 port map (D=>nq0 , reset => reset, clk => inclk , Q=>q0);
dff1 : DFF2 port map (D=>nq1 , reset => reset, clk => inclk , Q=>q1);
dff3 : DFF2 port map (D=>nq2 , reset => reset, clk => inclk , Q=>q2);

nq0 <= not(q0) and not(q2);
nq1 <= not(q2) and ((not(q1) and q0) or (q1 and not(q0)));
nq2 <= not(q2) and q1 and q0;

Y2 <= q2;
Y1 <= q1;
Y0 <= q0;
 

--outclk <= q2;

end behave;



library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;


entity mod10 is
port ( inclk , reset : in std_logic ; Y3,Y2,Y1,Y0: out std_logic);
end entity;

architecture behave of mod10 is


component mod5 is
port ( inclk , reset : in std_logic ; Y2,Y1,Y0: out std_logic);
end component;


component mod2 is 
 port (CLK,reset: in std_logic; Y0: out std_logic);
end component;

signal a:std_logic;
signal b:std_logic;
signal c:std_logic;
signal d:std_logic;
signal rest: std_logic;

begin

Y0 <= a;
Y1 <= b;
Y2 <= c;
Y3 <= d;
--ck <= d;

rest <= reset or (d and (not c) and b and (not a));

dut1: mod2 port map (CLK => inclk, reset => rest, Y0 => a);
dut2: mod2 port map (CLK => a, reset => rest, Y0 => b);
dut3: mod2 port map (CLK => b, reset => rest, Y0 => c);
dut4: mod2 port map (CLK => c, reset => rest, Y0 => d);

end behave; 


library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;



entity mod110 is
port ( inclk , reset : in std_logic ; ck: out std_logic);
end entity;

architecture behave of mod110 is


component mod5 is
port ( inclk , reset : in std_logic ; Y2,Y1,Y0: out std_logic);
end component;


component mod2 is 
 port (CLK,reset: in std_logic; Y0: out std_logic);
end component;

signal a:std_logic;
signal b:std_logic;
signal c:std_logic;
signal d:std_logic;
signal rest: std_logic;

begin

ck <= d;

rest <= reset or (d and (not c) and b and (not a));

dut1: mod2 port map (CLK => inclk, reset => rest, Y0 => a);
dut2: mod2 port map (CLK => a, reset => rest, Y0 => b);
dut3: mod2 port map (CLK => b, reset => rest, Y0 => c);
dut4: mod2 port map (CLK => c, reset => rest, Y0 => d);

end behave; 















