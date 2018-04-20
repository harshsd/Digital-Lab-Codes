library std;
use std.textio.all;

library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity testbench1 is
end entity;
architecture Behave of testbench1 is

  ----------------------------------------------------------------
  --  edit the following lines to set the number of i/o's of your
  --  DUT.
  ----------------------------------------------------------------
  constant number_of_inputs  : integer := 18;  -- # input bits to your design. 
  constant number_of_outputs : integer := 8;  -- # output bits from your design.

  -- component port widths..
  component alu is
   port(x : in std_logic_vector(7 downto 0);
	y : in std_logic_vector(7 downto 0);    
       	z11 : out std_logic_vector(number_of_outputs-1 downto 0);
	a1 : in std_logic;
	a0 : in std_logic);
  end component;

  -- end editing.
  ----------------------------------------------------------------
  ----------------------------------------------------------------

  signal input_vector_tb  : bit_vector(number_of_inputs-1 downto 0);
  signal output_vector_tb : bit_vector(number_of_outputs-1 downto 0);
  signal std_output_vector : std_logic_vector(number_of_outputs-1 downto 0);
	signal x1_tb , x0_tb : std_logic;

  -- create a constrained string outof
  function to_string(x: string) return string is
      variable ret_val: string(1 to x'length);
      alias lx : string (1 to x'length) is x;
  begin  
      ret_val := lx;
      return(ret_val);
  end to_string;

begin
  process 
	
    variable err_flag : boolean := false;
    File INFILE: text open read_mode is "/home/puneet/LAB_3/alu_TRACEFILE.txt";
   FILE OUTFILE: text  open write_mode is "/home/puneet/LAB_3/alu_OUTPUTS.txt";

    ---------------------------------------------------
    -- edit the next two lines to customize
    ---------------------------------------------------
    variable input_vector_var: bit_vector (number_of_inputs-1 downto 0);
    variable output_vector_var: bit_vector (number_of_outputs-1 downto 0);
    variable output_mask_var: bit_vector (number_of_outputs-1 downto 0);
    variable output_comp_var: bit_vector (number_of_outputs-1 downto 0);
    constant ZZZZ : bit_vector(number_of_outputs-1 downto 0) := (others => '0');
    ----------------------------------------------------

    variable INPUT_LINE: Line;
    variable OUTPUT_LINE: Line;
    variable LINE_COUNT: integer := 0;

    
  begin
	x1_tb <= to_stdlogicvector(input_vector_tb(17 downto 16))(1);
	x0_tb <= to_stdlogicvector(input_vector_tb(17 downto 16))(0);
    while not endfile(INFILE) loop 
	  -- will read a new line every 5ns, apply input,
	  -- wait for 1 ns for circuit to settle.
	  -- read output.


          LINE_COUNT := LINE_COUNT + 1;


	  -- read input at current time.
	  readLine (INFILE, INPUT_LINE);
          read (INPUT_LINE, input_vector_var);
          read (INPUT_LINE, output_vector_var);
          read (INPUT_LINE, output_mask_var);
	
	  -- apply input.
          input_vector_tb <= input_vector_var;
	x1_tb <= to_stdlogicvector(input_vector_tb(17 downto 16))(1);
	x0_tb <= to_stdlogicvector(input_vector_tb(17 downto 16))(0);

	  -- wait for the circuit to settle 
	  wait for 100 ns;

	  -- check output.
          output_comp_var := (output_mask_var and (output_vector_tb xor output_vector_var));
	  if (output_comp_var  /= ZZZZ) then
             write(OUTPUT_LINE,to_string("ERROR: line "));
             write(OUTPUT_LINE, LINE_COUNT);
             writeline(OUTFILE, OUTPUT_LINE);
             err_flag := true;
          end if;

          write(OUTPUT_LINE, input_vector_tb);
          write(OUTPUT_LINE, to_string(" "));
          write(OUTPUT_LINE, output_vector_tb);
          writeline(OUTFILE, OUTPUT_LINE);

	  -- advance time by 4 ns.
	  wait for 4 ns;
    end loop;

    assert (err_flag) report "SUCCESS, all tests passed." severity note;
    assert (not err_flag) report "FAILURE, some tests failed." severity error;

    wait;
  end process;

	output_vector_tb <= to_bitvector(std_output_vector);

  dut1: alu 
     	port map(x => to_stdlogicvector(input_vector_tb(15 downto 8)), y => to_stdlogicvector(input_vector_tb(7 downto 0)), z11 => std_output_vector , a1 => x0_tb, a0 => x1_tb );

end Behave;
