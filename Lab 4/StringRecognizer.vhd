library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
package harsh is
	component DFF is
		port (D, CLK: in std_logic; Q: out std_logic);
	end component;
	component banduk is
		port (X4,X3,X2,X1,X0,clk,reset: in std_logic ; Wgun: out std_logic);
	end component;
	component aatank is
		port (X4,X3,X2,X1,X0,clk,reset: in std_logic ; Wterror: out std_logic);
	end component;
	component dhamaka is
		port (X4,X3,X2,X1,X0,clk,reset: in std_logic ; Wbomb: out std_logic);
	end component;
	component chaku is
		port (X4,X3,X2,X1,X0,clk,reset: in std_logic ; Wknife: out std_logic);
	end component;
end harsh;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity DFF is
  port (D, CLK: in std_logic; Q: out std_logic);
end entity;
architecture WhatDoYouCare of DFF is
begin 
   process (CLK) 
   	begin
		if CLK'event and (CLK = '1') then
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
entity banduk is
	port (X4,X3,X2,X1,X0,clk,reset: in std_logic ; Wgun: out std_logic);
end entity;
architecture goli of banduk is
signal q1,q0,nq1,nq0,g,u,n : std_logic;
begin
	--q1 <= '0';
	--q0 <= '0';
	g <= (not(X4) and not(X3) and X2 and X1 and X0);
	u <= (X4 and not(X3) and X2 and not(X1) and X0);
	n <= (not(X4) and X3 and X2 and X1 and not(X0));
	nq1 <= (((not(q1) and not(q0) and g) or (q1 and not(q0) and not(u))) and not(reset));
	nq0 <= (((q1 and not(q0) and u) or (not(q1) and q0 and not(n))) and not(reset));
	Wgun <= ( not(q1) and q0 and n);
	dff1 : DFF port map ( D => nq1 , CLK => clk , Q => q1);
	dff2 : DFF port map ( D => nq0 , CLK => clk , Q => q0); 
end goli; 

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity aatank is
	port (X4,X3,X2,X1,X0,clk,reset: in std_logic ; Wterror: out std_logic);
end entity;
architecture aatankwadi of aatank is
signal q2,q1,q0,nq2,nq1,nq0,t,e,r,o,qq1,qq2,qq0,tt,ee,rr,oo : std_logic;
begin
	qq1 <= not(q1);
	qq2 <= not(q2);
	qq0 <= not(q0);
	t <= ( X4 AND not(X3) AND X2 AND not(X1) AND not(X0));
	e <= ( not(X4) AND not(X3) AND X2 AND not(X1) AND X0);
	r <= ( X4 AND not(X3) AND not(X2) AND X1 AND not(X0));
	o <= ( not(X4) AND X3 AND X2 AND X1 AND X0);
	ee <= not(e);
	tt <= not(t);
	oo <= not(o);
	rr <= not(r);
	nq0 <= (qq2 and qq1 and qq0 and t) or (qq2 and q1 and qq0 and r) or (q2 and q1 and qq0 and o) or (qq2 and qq1 and q0 and ee) or (q2 and 		qq1 and q0 and rr) or (q2 and q1 and q0 and rr);
	nq1 <= (qq2 and qq1 and q0 and e) or (qq2 and q1 and qq0 and rr) or (q2 and qq1 and q0 ) or (q2 and q1 and qq0 and o) or (q2 and q1 and q0 			and rr);
	nq2 <= (qq2 and q1 and qq0 and r) or (q2 and qq1 and q0) or (q2 and q1 and qq0) or (q1 and q2 and q0 and rr);
 	Wterror <= q2 and q1 and q0 and r;
	dff1 : DFF port map ( D => nq1 , CLK => clk , Q => q1);
	dff2 : DFF port map ( D => nq0 , CLK => clk , Q => q0);  
	dff3 : DFF port map ( D => nq2 , CLK => clk , Q => q2);
end aatankwadi;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity chaku is
	port (X4,X3,X2,X1,X0,clk,reset: in std_logic ; Wknife: out std_logic);
end entity;
architecture churra of chaku is
signal q2,q1,q0,nq2,nq1,nq0,k,n,i,f,e,qq1,qq2,qq0,kk,nn,ii,ff,ee : std_logic;
begin
	qq1 <= not(q1);
	qq2 <= not(q2);
	qq0 <= not(q0);
	k <= ( not(X4) and X3 and not(X2) and X1 and X0 );
	n <= (not(X4) and X3 and X2 and X1 and not(X0));
	i <= ( not(X4) AND X3 AND not(X2) AND not(X1) AND X0);
	f <= ( not(X4) AND not(X3) AND X2 AND X1 AND not(X0));
	e <= ( not(X4) AND not(X3) AND X2 AND not(X1) AND X0);
	kk <= not(k);
	nn <= not(n);
	ii <= not(i);
	ff <= not(f);
	ee <= not(e);
	nq0 <= (qq2 and qq1 and qq0 and k) or (qq2 and qq1 and q0) or (qq2 and q1 and q0) or (q1 and q2 and q0 and ff);
	nq1 <= (qq2 and qq1 and q0 and n) or (qq2 and q1 and q0 ) or (q2 and q1 and q0) or (q1 and q2 and qq0 and ee);
	nq2 <= (qq2 and q1 and q0 and i) or (q2 and q1 and q0) or (q1 and q2 and qq0 and ee);
 	Wknife <= (q2 and q1 and qq0 and e);
	dff1 : DFF port map ( D => nq1 , CLK => clk , Q => q1);
	dff2 : DFF port map ( D => nq0 , CLK => clk , Q => q0);  
	dff3 : DFF port map ( D => nq2 , CLK => clk , Q => q2);
end churra;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity dhamaka is
	port (X4,X3,X2,X1,X0,clk,reset: in std_logic ; Wbomb: out std_logic);
end entity;
architecture boom of dhamaka is
signal q1,q0,nq1,nq0,b,o,m,qq1,qq0,bb,oo,mm : std_logic;
begin
	qq1 <= not(q1);
	qq0 <= not(q0);
	b <= (not(X4) and not(X3) and not(X2) and X1 and not(X0));
	o <= ( not(X4) AND X3 AND X2 AND X1 AND X0);
	m <= (not(X4) and X3 and X2 and not(X1) and X0);
	bb <= not(b);
	oo <= not(o);
	mm <= not(m);
	nq1 <= (qq1 and q0 and o) or (q1 and q0) or (q1 and qq0 and bb) ;
	nq0 <= (qq1 and qq0 and b) or (qq1 and q0) or (q1 and q0 and mm);
	Wbomb <= (q1 and qq0 and b);
	dff1 : DFF port map ( D => nq1 , CLK => clk , Q => q1);
	dff2 : DFF port map ( D => nq0 , CLK => clk , Q => q0); 
end boom;

library work;
use work.harsh.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity StringRecognizer is
 port(X4,X3,X2,X1,X0: in std_logic; W: out std_logic;clk,reset: in std_logic);
end entity StringRecognizer;
architecture behave of StringRecognizer is
signal master_reset , Wterror , Wbomb, Wgun , Wknife : std_logic;
begin
	str1 : dhamaka port map (X4 => X4 , X3 => X3 , X2 => X2 , X1 => X1 , X0 => X0 , clk => clk , reset => reset , Wbomb => Wbomb);
	str2 : chaku port map (X4 => X4 , X3 => X3 , X2 => X2 , X1 => X1 , X0 => X0 , clk => clk , reset => reset , Wknife => Wknife);
	str3 : aatank port map (X4 => X4 , X3 => X3 , X2 => X2 , X1 => X1 , X0 => X0 , clk => clk , reset => reset , Wterror => Wterror);
	str4 : banduk port map (X4 => X4 , X3 => X3 , X2 => X2 , X1 => X1 , X0 => X0 , clk => clk , reset => reset , Wgun => Wgun);
	W <= Wterror or Wbomb or Wgun or Wknife;
end behave;  
