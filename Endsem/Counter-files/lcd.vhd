-- USE CLOCK BETWEEN 100 HZ TO 10K
--df:= to_integer(unsigned(score))

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity lcd is
port ( CLK   : in std_logic;                          --use clock between 100hz to 10khz 
      reset    : in std_logic;	--reset
      lcd_rw : out std_logic;                         --read & write control
      lcd_en : out std_logic;                         --enable control
      lcd_rs : out std_logic;                         --data or command control
      lcd1  : out std_logic_vector(7 downto 0);		 --see pin planning in krypton manual 
		b11 : out std_logic;
		b12 	: out std_logic;
		k1: out std_logic_vector(3 downto 0);
		ck1: out std_logic);     --data line
end entity;

architecture behave of lcd is 


component mod10 is
port ( inclk , reset : in std_logic ; Y3,Y2,Y1,Y0: out std_logic);
end component;


component mod110 is
port ( inclk , reset : in std_logic ; ck: out std_logic);
end component;

component lcd_controller is
port ( clk    : in std_logic;                          --clock i/p
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
end component lcd_controller;


component final2 is 
        port (CLK,reset: in std_logic; Y: out std_logic);
end component;

type dataarr1 is array (0 to 17) of std_logic_vector(7 downto 0);
constant lcd_data1 : dataarr1 := (x"30",x"31",x"32",x"33",x"34",x"35",x"36",x"37",x"38",x"39",x"41",x"42",x"43",x"44",x"45",x"46",x"4B",x"55");   

--signal itg : integer;	
signal erase : std_logic := '0';                  --- clear position
signal put_char :  std_logic := '1';
  --write_data : in std_logic_vector(7 downto 0) ;
signal write_row : std_logic_vector( 0 downto 0) := "0";
signal write_column : std_logic_vector(3 downto 0) ;--:= "0000";

signal clock_slow : std_logic; 
signal p1 : std_logic; 
signal p2 : std_logic; 
signal p3 : std_logic; 
signal s1,s11 : std_logic_vector ( 3 downto 0) := "0000"; -- S1 IS WRITE_COLUMN
signal i,j : integer := 0; 
signal ack,o2: std_logic;
--signal ap : integer;
--signal bp : integer;
--signal cp : integer;
--signal dp : integer;
--signal an: unsigned(7 downto 0);
--signal bn: unsigned(7 downto 0);
--signal cn: unsigned(7 downto 0);
--signal dn: unsigned(7 downto 0);
--signal a: std_logic_vector(7 downto 0);
--signal b: std_logic_vector(7 downto 0);
--signal c: std_logic_vector(7 downto 0);
--signal d: std_logic_vector(7 downto 0);
signal lcd2: std_logic_vector(14 downto 0);
signal lcd3: std_logic_vector(15 downto 0);
signal gameover: std_logic;
signal k : integer := 0; 
signal dig: std_logic_vector(3 downto 0);
signal reset11: std_logic;
signal rst: std_logic;
signal sw1: std_logic;
signal u1,u2,u3,u4 : integer ;

begin


-- HOW TO USE LCD CONTROLLER MODULE
lcd_instance1 : lcd_controller port map (
					clk => clock_slow, rst => reset, erase => erase , put_char => put_char , write_data => lcd_data1(i), write_row => write_row,
					write_column => write_column , ack => ack, lcd_rw => lcd_rw, lcd_en => lcd_en, lcd_rs => lcd_rs,
					lcd1 => lcd1, b11 => b11, b12 => b12);	
					
reset11 <= not reset;
clock_instance : final2 port map ( clk => clk , reset => reset11, Y => clock_slow);
clock_instance1 : mod110 port map ( inclk => clock_slow, reset => reset11, ck => p1); 
clock_instance2 : mod110 port map ( inclk => p1, reset => reset11, ck => p2); 
clock_instance3 : mod110 port map ( inclk => p2, reset => reset11, ck => p3); 

ck1 <= p3;

main: mod10 port map( inclk => p3, reset => reset11, Y3 => dig(3),Y2 => dig(2),Y1 => dig(1),Y0 => dig(0));
k1 <= dig;
u1 <= to_integer(unsigned(dig(3 downto 0)));



process(ack,reset,clock_slow)

begin

if (rising_edge(clock_slow)) then
erase <= '0';
if(ack = '1')then 
	if (k = 0) then
		write_column <= "0011";
--		if (gameover = '1')then
--		i <= 16;
		i <= u4+1;
		--end if;
		put_char <= '1';
		write_row <= "0";
	elsif (k = 1)then
		write_column <= "0010";
--		if (gameOver = '1')then
--		i <= 16;
		i <= u3+1;
		--end if;
		put_char <= '1';
		write_row <= "0";
	elsif (k = 2)then
		write_column <= "0001";
--		if (gameOver = '1')then
--		i <= 16;
		
		i <= u2+1;
		--end if;
		put_char <= '1';
		write_row <= "0";
	elsif (k = 3)then
		write_column <= "0000";
--		if (gameOver = '1')then
--		i <= 16;
		
		i <= u1+1;
		--end if;
		put_char <= '1';
		write_row <= "0";
	end if;
	
	if(k = 3 )then
		k <= 0;
	else 
		k <= k + 1;	
	end if;
end if;	
end if;

end process;

u3 <= u1;
u4 <= u1;
u2 <= u1;


end behave;