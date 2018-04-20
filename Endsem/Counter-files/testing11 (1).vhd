

library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity ctrr4 is
     port (CLK,reset: in std_logic; Y1,Y2: out std_logic);
end entity;

architecture behave of ctrr4 is

component DFF1 is
  port (D, CLK,reset: in std_logic; Q: out std_logic);
end component;

signal q0: std_logic ;
signal q1: std_logic ;

signal nq0: std_logic;
signal nq1: std_logic;


begin

nq0 <= (not reset) and (not q0);
nq1 <=  (not reset) and ((q1 and (not q0)) or (q0 and (not q1)));

dut1: DFF1 port map (D => nq0,reset => reset, CLK => CLK, Q => q0);
dut2: DFF1 port map (D => nq1,reset => reset, CLK => CLK, Q => q1);

Y1 <= nq0;
Y2 <= nq1;

end behave;




library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity final2 is 
        port (CLK,reset: in std_logic; Y: out std_logic);
end entity;

architecture behave of final2 is

component ctrr4 is
     port (CLK,reset: in std_logic; Y1,Y2: out std_logic);
end component;

signal y11: std_logic;
signal y12: std_logic;
signal y13: std_logic;
signal y14: std_logic;
signal y15: std_logic;
signal y16: std_logic;
signal y17: std_logic;
signal y18: std_logic;
signal y19: std_logic;
signal y110: std_logic;
signal y111: std_logic;
signal y112: std_logic;
signal y113: std_logic;

signal x11: std_logic;
signal x12: std_logic;
signal x13: std_logic;
signal x14: std_logic;
signal x15: std_logic;
signal x16: std_logic;
signal x17: std_logic;
signal x18: std_logic;
signal x19: std_logic;
signal x110: std_logic;
signal x111: std_logic;
signal x112: std_logic;
signal x113: std_logic;
signal x114: std_logic;



begin


duta: ctrr4 port map ( CLK => CLK,reset => reset, Y2 => y11,Y1 => x11);
dutb: ctrr4 port map ( CLK => y11,reset => reset,Y2 => y12,Y1 => x12 );
dutc: ctrr4 port map ( CLK => y12,reset => reset, Y2 => y13 ,Y1 => x13);
dutd: ctrr4 port map ( CLK => y13,reset => reset, Y2 => y14,Y1 => x14 );
dute: ctrr4 port map ( CLK => y14,reset => reset, Y2 => y15 ,Y1 => x15);
dutf: ctrr4 port map ( CLK => y15,reset => reset, Y2 => y16 ,Y1 => x16);
dutg: ctrr4 port map ( CLK => y16,reset => reset, Y2 => y17 ,Y1 => x17);
duth: ctrr4 port map ( CLK => y17,reset => reset,Y2 => Y ,Y1 => x18);



end behave;



	  
