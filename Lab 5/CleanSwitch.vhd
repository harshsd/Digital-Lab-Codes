library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
package harsh is
	component D_FF is
		port (D, CLK, reset: in std_logic; Q: out std_logic);
	end component;
	component d_two is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
	end component;
	component d_four is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
	end component;
	component CleanSwitch is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
	end component;
	component two_19 is 
	port (reset , clkin : in std_logic ; clkout : out std_logic);
	end component;
end harsh;
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
entity d_two is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
end entity;
architecture twod of d_two is
signal q,nq : std_logic;
begin
	nq <= not(q) and not(reset);
	D_FF1 : D_FF port map ( D => nq , CLK => clkin, reset => reset , Q => q);
	clkout <= q and not(reset);
end twod	;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity d_four is
	port (reset,clkin: in std_logic ; clkout:out std_logic);
end entity;
architecture fourd of d_four is
signal clkit : std_logic;
begin
	d1 : d_two port map ( reset => reset , clkin => clkin , clkout => clkit);
	d2 : d_two port map ( reset => reset , clkin => clkit , clkout => clkout);
end fourd;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity two_19 is 
	port (reset , clkin : in std_logic ; clkout : out std_logic);
end entity;
architecture t19 of two_19 is
signal a: std_logic_vector(19 downto 0);
begin
a(0) <= clkin;
random : for I in 0 to 18 generate
	twox: d_two port map(reset => reset, clkin => a(I), clkout => a(I+1));
	end generate;
clkout <= a(19);	
end t19;
	

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity CleanSwitch is
	port (reset,xin, clkin: in std_logic ; xout,xins,xout1:out std_logic);
end entity;
architecture cs of CleanSwitch is
signal q1,q0,nq1,nq0,clkout : std_logic;
begin
t_19 : two_19 port map ( reset => reset, clkin => clkin, clkout=> clkout);
D_ff0 : D_FF port map ( D=> nq0 , CLK => clkout , reset => reset , Q=>q0 );
D_ff1 : D_FF port map ( D=> nq1 , CLK => clkout , reset => reset , Q=>q1 );
nq0 <= xin;
nq1 <= (not(q1) and q0 and xin) or (q1 and q0) or (q1 and not(q0) and xin);
xout <= (q1 and q0) or (not(q0) and q1) ;
xins <= xin;
xout1 <= (q1 and q0) or (not(q0) and q1);
end cs;