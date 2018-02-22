library std;
use std.textio.all;
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
entity Testbench is
end entity;
architecture Behave of Testbench is
component StringRecognizer is
 port(X4,X3,X2,X1,X0: in std_logic; W: out std_logic;clk,reset: in std_logic);
end component;

	signal input_vec_tb : bit_vector(6 downto 0);
	signal temp : std_logic_vector(0 downto 0);
	signal output_tb : bit;
	signal std_output : std_logic;
	signal X4,X3,X2,X1,X0,clk,reset : std_logic;
function to_string(x: string) return string is
      variable ret_val: string(1 to x'length);
      alias lx : string (1 to x'length) is x;
  begin  
      ret_val := lx;
      return(ret_val);
  end to_string;

begin
	process
		variable err : boolean := false;
		File INFILE: text open read_mode is "/media/harsh/8CFC3022FC30094A/IIT/Digital Lab/Digital Lab 4/tracefile1.txt";
		FILE OUTFILE: text  open write_mode is "/media/harsh/8CFC3022FC30094A/IIT/Digital Lab/Digital Lab 4/outputs.txt";
	variable input_var : bit_vector(6 downto 0);
	variable output_var : bit;
	variable mask :  bit;
	variable comp : bit;
	constant Z : bit := '0';

 	variable INPUT_LINE: Line;
    	variable OUTPUT_LINE: Line;
    	variable LINE_COUNT: integer := 0;

	begin

	while not endfile(INFILE) loop 

		LINE_COUNT := LINE_COUNT + 1;
		readLine (INFILE, INPUT_LINE);
          	read (INPUT_LINE, input_var);
          	read (INPUT_LINE, output_var);
          	read (INPUT_LINE, mask);
		input_vec_tb <= input_var;
		wait for 30 ns;
		
		comp := (mask and (output_var xor output_tb));
		--wait for 10 ns;
		if(comp /= Z) then
			write(OUTPUT_LINE,to_string("ERROR: line "));
             		write(OUTPUT_LINE, LINE_COUNT);
             		writeline(OUTFILE, OUTPUT_LINE);
             		err := true;
		end if;

		write(OUTPUT_LINE, input_vec_tb);
         	write(OUTPUT_LINE, to_string(" "));
          	write(OUTPUT_LINE, output_tb);
		write(OUTPUT_LINE, to_string(" "));
          	write(OUTPUT_LINE, output_var);
          	writeline(OUTFILE, OUTPUT_LINE);

		wait for 20 ns;
	end loop;

	assert (err) report "SUCCESS, all tests passed." severity note;
    	assert (not err) report "FAILURE, some tests failed." severity error;

    	wait;
  end process;
		reset <= to_stdlogicvector(input_vec_tb)(6);
		clk <= to_stdlogicvector(input_vec_tb)(5);
		X4 <= to_stdlogicvector(input_vec_tb)(4);
		X3 <= to_stdlogicvector(input_vec_tb)(3);
		X2 <= to_stdlogicvector(input_vec_tb)(2);
		X1 <= to_stdlogicvector(input_vec_tb)(1);
		X0 <= to_stdlogicvector(input_vec_tb)(0);
		temp(0) <= std_output;
		--wait for 10 ns;
		output_tb <= to_bitvector(temp)(0);
		--output_tb <= to_bit(std_output);
		--wait for 20 ns;
dut : StringRecognizer port map ( X4=>X4 , X3=>X3 , X2=>X2 , X1=>X1 , X0=>X0 , clk=>clk , reset=>reset , W => std_output );
end Behave;
