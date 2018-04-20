-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/21/2018 03:36:49"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Practice IS
    PORT (
	switch1 : IN std_logic;
	inclk : IN std_logic;
	reset : IN std_logic;
	lcdreset : IN std_logic;
	z1 : OUT std_logic_vector(10 DOWNTO 0);
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd1 : OUT std_logic_vector(7 DOWNTO 0);
	b11 : OUT std_logic;
	b12 : OUT std_logic;
	go : OUT std_logic
	);
END Practice;

-- Design Ports Information


ARCHITECTURE structure OF Practice IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch1 : std_logic;
SIGNAL ww_inclk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_lcdreset : std_logic;
SIGNAL ww_z1 : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b11 : std_logic;
SIGNAL ww_b12 : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL \timecalc|random:10:twox|Q~regout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inclk~combout\ : std_logic;
SIGNAL \random:0:m10|mf|dff0|Q~regout\ : std_logic;
SIGNAL \random:0:m10|mf|dff1|Q~regout\ : std_logic;
SIGNAL \random:0:m10|mf|dff2|Q~regout\ : std_logic;
SIGNAL \random:0:m10|mt|outclk~regout\ : std_logic;
SIGNAL \random:1:m10|mf|dff0|Q~regout\ : std_logic;
SIGNAL \random:1:m10|mf|dff1|Q~regout\ : std_logic;
SIGNAL \random:1:m10|mf|dff2|Q~regout\ : std_logic;
SIGNAL \random:1:m10|mt|outclk~regout\ : std_logic;
SIGNAL \random:2:m10|mf|dff0|Q~regout\ : std_logic;
SIGNAL \random:2:m10|mf|dff1|Q~regout\ : std_logic;
SIGNAL \random:2:m10|mf|dff2|Q~regout\ : std_logic;
SIGNAL \random:2:m10|mt|outclk~regout\ : std_logic;
SIGNAL \random:3:m10|mf|dff0|Q~regout\ : std_logic;
SIGNAL \random:3:m10|mf|dff1|Q~regout\ : std_logic;
SIGNAL \random:3:m10|mf|dff2|Q~regout\ : std_logic;
SIGNAL \random:3:m10|mt|outclk~regout\ : std_logic;
SIGNAL \random:4:m10|mf|dff0|Q~regout\ : std_logic;
SIGNAL \random:4:m10|mf|dff1|Q~regout\ : std_logic;
SIGNAL \random:4:m10|mf|dff2|Q~regout\ : std_logic;
SIGNAL \random:4:m10|mt|outclk~regout\ : std_logic;
SIGNAL \random:5:m10|mf|dff0|Q~regout\ : std_logic;
SIGNAL \random:5:m10|mf|dff1|Q~regout\ : std_logic;
SIGNAL \random:5:m10|mf|dff2|Q~regout\ : std_logic;
SIGNAL \random:5:m10|mt|outclk~regout\ : std_logic;
SIGNAL \random:6:m10|mf|dff0|Q~regout\ : std_logic;
SIGNAL \random:6:m10|mf|dff1|Q~regout\ : std_logic;
SIGNAL \random:6:m10|mf|dff2|Q~regout\ : std_logic;
SIGNAL \random:6:m10|mt|outclk~regout\ : std_logic;
SIGNAL \mff|dff0|Q~regout\ : std_logic;
SIGNAL \mff|dff1|Q~regout\ : std_logic;
SIGNAL \mff|dff2|Q~regout\ : std_logic;
SIGNAL \switch1~combout\ : std_logic;
SIGNAL \dffg|Q~regout\ : std_logic;
SIGNAL \clkoutd~combout\ : std_logic;
SIGNAL \timecalc|random:0:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad1|ss~combout\ : std_logic;
SIGNAL \timecalc|random:1:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad2|s~combout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad2|cc3\ : std_logic;
SIGNAL \timecalc|random:3:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|random:4:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|random:2:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad3|s~combout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad4|s\ : std_logic;
SIGNAL \timecalc|add1|oobbaad5|s\ : std_logic;
SIGNAL \timecalc|add1|oobbaad5|cc3\ : std_logic;
SIGNAL \timecalc|add1|oobbaad6|s\ : std_logic;
SIGNAL \timecalc|random:5:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad7|s\ : std_logic;
SIGNAL \timecalc|random:6:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad8|s\ : std_logic;
SIGNAL \timecalc|random:7:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad8|cc3~combout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad9|s\ : std_logic;
SIGNAL \timecalc|random:8:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad10|s\ : std_logic;
SIGNAL \timecalc|random:9:twox|Q~regout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad11|s\ : std_logic;
SIGNAL \ondded|Q1:0:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:0:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:1:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:1:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:2:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:2:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:3:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:3:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:4:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:4:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:5:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:5:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:6:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:6:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:7:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:7:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:8:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:8:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:9:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:9:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:10:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:10:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:11:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:11:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:12:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:12:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:13:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:13:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:14:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:14:dbtwox|outclk~combout\ : std_logic;
SIGNAL \ondded|Q1:15:dbtwox|D_FF1|Q~regout\ : std_logic;
SIGNAL \ondded|Q1:15:dbtwox|outclk~combout\ : std_logic;
SIGNAL \lcdreset~combout\ : std_logic;
SIGNAL \display|state.S8~regout\ : std_logic;
SIGNAL \display|state.S9~regout\ : std_logic;
SIGNAL \display|state~27_combout\ : std_logic;
SIGNAL \display|state.S1~regout\ : std_logic;
SIGNAL \display|state.S2~regout\ : std_logic;
SIGNAL \display|state~31_combout\ : std_logic;
SIGNAL \display|state.S0~regout\ : std_logic;
SIGNAL \display|LessThan0~1_combout\ : std_logic;
SIGNAL \display|state.S3~regout\ : std_logic;
SIGNAL \display|state.S4~regout\ : std_logic;
SIGNAL \display|state.S5~regout\ : std_logic;
SIGNAL \display|state.S6~regout\ : std_logic;
SIGNAL \display|state~30_combout\ : std_logic;
SIGNAL \display|state.S7~regout\ : std_logic;
SIGNAL \display|Selector10~0_combout\ : std_logic;
SIGNAL \display|LessThan0~0_combout\ : std_logic;
SIGNAL \display|state~26_combout\ : std_logic;
SIGNAL \display|lcd_en~regout\ : std_logic;
SIGNAL \display|Selector8~1_combout\ : std_logic;
SIGNAL \display|Selector8~0_combout\ : std_logic;
SIGNAL \display|Selector8~2_combout\ : std_logic;
SIGNAL \display|lcd_rs~regout\ : std_logic;
SIGNAL \display|Selector7~0_combout\ : std_logic;
SIGNAL \display|ack~regout\ : std_logic;
SIGNAL \j[0]~1\ : std_logic;
SIGNAL \j[1]~61\ : std_logic;
SIGNAL \j[1]~61COUT1_66\ : std_logic;
SIGNAL \j[2]~3\ : std_logic;
SIGNAL \j[2]~3COUT1_67\ : std_logic;
SIGNAL \j[3]~5\ : std_logic;
SIGNAL \j[3]~5COUT1_68\ : std_logic;
SIGNAL \j[4]~7\ : std_logic;
SIGNAL \j[4]~7COUT1_69\ : std_logic;
SIGNAL \j[5]~9\ : std_logic;
SIGNAL \j[6]~11\ : std_logic;
SIGNAL \j[6]~11COUT1_70\ : std_logic;
SIGNAL \j[7]~13\ : std_logic;
SIGNAL \j[7]~13COUT1_71\ : std_logic;
SIGNAL \j[8]~15\ : std_logic;
SIGNAL \j[8]~15COUT1_72\ : std_logic;
SIGNAL \j[9]~17\ : std_logic;
SIGNAL \j[9]~17COUT1_73\ : std_logic;
SIGNAL \j[10]~19\ : std_logic;
SIGNAL \j[11]~21\ : std_logic;
SIGNAL \j[11]~21COUT1_74\ : std_logic;
SIGNAL \j[12]~23\ : std_logic;
SIGNAL \j[12]~23COUT1_75\ : std_logic;
SIGNAL \j[13]~25\ : std_logic;
SIGNAL \j[13]~25COUT1_76\ : std_logic;
SIGNAL \j[14]~27\ : std_logic;
SIGNAL \j[14]~27COUT1_77\ : std_logic;
SIGNAL \j[15]~29\ : std_logic;
SIGNAL \j[16]~31\ : std_logic;
SIGNAL \j[16]~31COUT1_78\ : std_logic;
SIGNAL \j[17]~33\ : std_logic;
SIGNAL \j[17]~33COUT1_79\ : std_logic;
SIGNAL \j[18]~35\ : std_logic;
SIGNAL \j[18]~35COUT1_80\ : std_logic;
SIGNAL \j[19]~37\ : std_logic;
SIGNAL \j[19]~37COUT1_81\ : std_logic;
SIGNAL \j[20]~39\ : std_logic;
SIGNAL \j[21]~41\ : std_logic;
SIGNAL \j[21]~41COUT1_82\ : std_logic;
SIGNAL \j[22]~43\ : std_logic;
SIGNAL \j[22]~43COUT1_83\ : std_logic;
SIGNAL \j[23]~45\ : std_logic;
SIGNAL \j[23]~45COUT1_84\ : std_logic;
SIGNAL \j[24]~47\ : std_logic;
SIGNAL \j[24]~47COUT1_85\ : std_logic;
SIGNAL \j[25]~49\ : std_logic;
SIGNAL \j[26]~51\ : std_logic;
SIGNAL \j[26]~51COUT1_86\ : std_logic;
SIGNAL \j[27]~53\ : std_logic;
SIGNAL \j[27]~53COUT1_87\ : std_logic;
SIGNAL \j[28]~57\ : std_logic;
SIGNAL \j[28]~57COUT1_88\ : std_logic;
SIGNAL \j[29]~59\ : std_logic;
SIGNAL \j[29]~59COUT1_89\ : std_logic;
SIGNAL \j[30]~55\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \j[15]~64_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \i[0]~0_combout\ : std_logic;
SIGNAL \Equal1~0\ : std_logic;
SIGNAL \Equal0~11\ : std_logic;
SIGNAL \i~1_combout\ : std_logic;
SIGNAL \i~5_combout\ : std_logic;
SIGNAL \i[3]~7_combout\ : std_logic;
SIGNAL \i~3_combout\ : std_logic;
SIGNAL \display|Selector3~2\ : std_logic;
SIGNAL \display|Selector7~1\ : std_logic;
SIGNAL \display|Selector6~0\ : std_logic;
SIGNAL \display|Selector5~1_combout\ : std_logic;
SIGNAL \display|Selector5~0_combout\ : std_logic;
SIGNAL \display|Selector4~0_combout\ : std_logic;
SIGNAL \display|Selector4~1_combout\ : std_logic;
SIGNAL \display|Selector3~3_combout\ : std_logic;
SIGNAL \display|lcd[4]~0_combout\ : std_logic;
SIGNAL \display|Selector3~4\ : std_logic;
SIGNAL \display|Selector0~0_combout\ : std_logic;
SIGNAL write_column : std_logic_vector(3 DOWNTO 0);
SIGNAL \display|data_dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL \display|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL j : std_logic_vector(31 DOWNTO 0);
SIGNAL \display|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_inclk~combout\ : std_logic;
SIGNAL \random:0:m10|mf|dff2|ALT_INV_Q~regout\ : std_logic;
SIGNAL \random:0:m10|mt|ALT_INV_outclk~regout\ : std_logic;
SIGNAL \random:1:m10|mf|dff2|ALT_INV_Q~regout\ : std_logic;
SIGNAL \random:1:m10|mt|ALT_INV_outclk~regout\ : std_logic;
SIGNAL \random:2:m10|mf|dff2|ALT_INV_Q~regout\ : std_logic;
SIGNAL \random:2:m10|mt|ALT_INV_outclk~regout\ : std_logic;
SIGNAL \random:3:m10|mf|dff2|ALT_INV_Q~regout\ : std_logic;
SIGNAL \random:3:m10|mt|ALT_INV_outclk~regout\ : std_logic;
SIGNAL \random:4:m10|mf|dff2|ALT_INV_Q~regout\ : std_logic;
SIGNAL \random:4:m10|mt|ALT_INV_outclk~regout\ : std_logic;
SIGNAL \random:5:m10|mf|dff2|ALT_INV_Q~regout\ : std_logic;
SIGNAL \random:5:m10|mt|ALT_INV_outclk~regout\ : std_logic;
SIGNAL \random:6:m10|mf|dff2|ALT_INV_Q~regout\ : std_logic;
SIGNAL \random:6:m10|mt|ALT_INV_outclk~regout\ : std_logic;
SIGNAL \ALT_INV_switch1~combout\ : std_logic;
SIGNAL \ALT_INV_lcdreset~combout\ : std_logic;
SIGNAL \timecalc|add1|oobbaad1|ALT_INV_ss~combout\ : std_logic;

BEGIN

ww_switch1 <= switch1;
ww_inclk <= inclk;
ww_reset <= reset;
ww_lcdreset <= lcdreset;
z1 <= ww_z1;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
lcd1 <= ww_lcd1;
b11 <= ww_b11;
b12 <= ww_b12;
go <= ww_go;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inclk~combout\ <= NOT \inclk~combout\;
\random:0:m10|mf|dff2|ALT_INV_Q~regout\ <= NOT \random:0:m10|mf|dff2|Q~regout\;
\random:0:m10|mt|ALT_INV_outclk~regout\ <= NOT \random:0:m10|mt|outclk~regout\;
\random:1:m10|mf|dff2|ALT_INV_Q~regout\ <= NOT \random:1:m10|mf|dff2|Q~regout\;
\random:1:m10|mt|ALT_INV_outclk~regout\ <= NOT \random:1:m10|mt|outclk~regout\;
\random:2:m10|mf|dff2|ALT_INV_Q~regout\ <= NOT \random:2:m10|mf|dff2|Q~regout\;
\random:2:m10|mt|ALT_INV_outclk~regout\ <= NOT \random:2:m10|mt|outclk~regout\;
\random:3:m10|mf|dff2|ALT_INV_Q~regout\ <= NOT \random:3:m10|mf|dff2|Q~regout\;
\random:3:m10|mt|ALT_INV_outclk~regout\ <= NOT \random:3:m10|mt|outclk~regout\;
\random:4:m10|mf|dff2|ALT_INV_Q~regout\ <= NOT \random:4:m10|mf|dff2|Q~regout\;
\random:4:m10|mt|ALT_INV_outclk~regout\ <= NOT \random:4:m10|mt|outclk~regout\;
\random:5:m10|mf|dff2|ALT_INV_Q~regout\ <= NOT \random:5:m10|mf|dff2|Q~regout\;
\random:5:m10|mt|ALT_INV_outclk~regout\ <= NOT \random:5:m10|mt|outclk~regout\;
\random:6:m10|mf|dff2|ALT_INV_Q~regout\ <= NOT \random:6:m10|mf|dff2|Q~regout\;
\random:6:m10|mt|ALT_INV_outclk~regout\ <= NOT \random:6:m10|mt|outclk~regout\;
\ALT_INV_switch1~combout\ <= NOT \switch1~combout\;
\ALT_INV_lcdreset~combout\ <= NOT \lcdreset~combout\;
\timecalc|add1|oobbaad1|ALT_INV_ss~combout\ <= NOT \timecalc|add1|oobbaad1|ss~combout\;

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inclk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inclk,
	combout => \inclk~combout\);

-- Location: LC_X8_Y6_N5
\random:0:m10|mf|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \random:0:m10|mf|dff0|Q~regout\ = DFFEAS((!\random:0:m10|mf|dff2|Q~regout\ & (((!\random:0:m10|mf|dff0|Q~regout\)))), !GLOBAL(\inclk~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inclk~combout\,
	dataa => \random:0:m10|mf|dff2|Q~regout\,
	datac => \random:0:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:0:m10|mf|dff0|Q~regout\);

-- Location: LC_X8_Y6_N3
\random:0:m10|mf|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \random:0:m10|mf|dff1|Q~regout\ = DFFEAS((!\random:0:m10|mf|dff2|Q~regout\ & ((\random:0:m10|mf|dff0|Q~regout\ $ (\random:0:m10|mf|dff1|Q~regout\)))), !GLOBAL(\inclk~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inclk~combout\,
	dataa => \random:0:m10|mf|dff2|Q~regout\,
	datac => \random:0:m10|mf|dff0|Q~regout\,
	datad => \random:0:m10|mf|dff1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:0:m10|mf|dff1|Q~regout\);

-- Location: LC_X8_Y6_N6
\random:0:m10|mf|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \random:0:m10|mf|dff2|Q~regout\ = DFFEAS((!\random:0:m10|mf|dff2|Q~regout\ & (((\random:0:m10|mf|dff0|Q~regout\ & \random:0:m10|mf|dff1|Q~regout\)))), !GLOBAL(\inclk~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inclk~combout\,
	dataa => \random:0:m10|mf|dff2|Q~regout\,
	datac => \random:0:m10|mf|dff0|Q~regout\,
	datad => \random:0:m10|mf|dff1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:0:m10|mf|dff2|Q~regout\);

-- Location: LC_X8_Y6_N9
\random:0:m10|mt|outclk\ : maxv_lcell
-- Equation(s):
-- \random:0:m10|mt|outclk~regout\ = DFFEAS((((!\random:0:m10|mt|outclk~regout\))), !\random:0:m10|mf|dff2|Q~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:0:m10|mf|dff2|ALT_INV_Q~regout\,
	datad => \random:0:m10|mt|outclk~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:0:m10|mt|outclk~regout\);

-- Location: LC_X8_Y5_N9
\random:1:m10|mf|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \random:1:m10|mf|dff0|Q~regout\ = DFFEAS((((!\random:1:m10|mf|dff2|Q~regout\ & !\random:1:m10|mf|dff0|Q~regout\))), !GLOBAL(\random:0:m10|mt|outclk~regout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:0:m10|mt|ALT_INV_outclk~regout\,
	datac => \random:1:m10|mf|dff2|Q~regout\,
	datad => \random:1:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:1:m10|mf|dff0|Q~regout\);

-- Location: LC_X8_Y5_N5
\random:1:m10|mf|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \random:1:m10|mf|dff1|Q~regout\ = DFFEAS((!\random:1:m10|mf|dff2|Q~regout\ & ((\random:1:m10|mf|dff1|Q~regout\ $ (\random:1:m10|mf|dff0|Q~regout\)))), !GLOBAL(\random:0:m10|mt|outclk~regout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:0:m10|mt|ALT_INV_outclk~regout\,
	dataa => \random:1:m10|mf|dff2|Q~regout\,
	datac => \random:1:m10|mf|dff1|Q~regout\,
	datad => \random:1:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:1:m10|mf|dff1|Q~regout\);

-- Location: LC_X8_Y5_N7
\random:1:m10|mf|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \random:1:m10|mf|dff2|Q~regout\ = DFFEAS((!\random:1:m10|mf|dff2|Q~regout\ & (((\random:1:m10|mf|dff1|Q~regout\ & \random:1:m10|mf|dff0|Q~regout\)))), !GLOBAL(\random:0:m10|mt|outclk~regout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:0:m10|mt|ALT_INV_outclk~regout\,
	dataa => \random:1:m10|mf|dff2|Q~regout\,
	datac => \random:1:m10|mf|dff1|Q~regout\,
	datad => \random:1:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:1:m10|mf|dff2|Q~regout\);

-- Location: LC_X7_Y5_N5
\random:1:m10|mt|outclk\ : maxv_lcell
-- Equation(s):
-- \random:1:m10|mt|outclk~regout\ = DFFEAS((((!\random:1:m10|mt|outclk~regout\))), !\random:1:m10|mf|dff2|Q~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:1:m10|mf|dff2|ALT_INV_Q~regout\,
	datac => \random:1:m10|mt|outclk~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:1:m10|mt|outclk~regout\);

-- Location: LC_X7_Y5_N9
\random:2:m10|mf|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \random:2:m10|mf|dff0|Q~regout\ = DFFEAS((((!\random:2:m10|mf|dff2|Q~regout\ & !\random:2:m10|mf|dff0|Q~regout\))), !\random:1:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:1:m10|mt|ALT_INV_outclk~regout\,
	datac => \random:2:m10|mf|dff2|Q~regout\,
	datad => \random:2:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:2:m10|mf|dff0|Q~regout\);

-- Location: LC_X7_Y5_N7
\random:2:m10|mf|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \random:2:m10|mf|dff1|Q~regout\ = DFFEAS(((!\random:2:m10|mf|dff2|Q~regout\ & (\random:2:m10|mf|dff1|Q~regout\ $ (\random:2:m10|mf|dff0|Q~regout\)))), !\random:1:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:1:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:2:m10|mf|dff1|Q~regout\,
	datac => \random:2:m10|mf|dff2|Q~regout\,
	datad => \random:2:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:2:m10|mf|dff1|Q~regout\);

-- Location: LC_X7_Y5_N4
\random:2:m10|mf|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \random:2:m10|mf|dff2|Q~regout\ = DFFEAS(((\random:2:m10|mf|dff0|Q~regout\ & (\random:2:m10|mf|dff1|Q~regout\ & !\random:2:m10|mf|dff2|Q~regout\))), !\random:1:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:1:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:2:m10|mf|dff0|Q~regout\,
	datac => \random:2:m10|mf|dff1|Q~regout\,
	datad => \random:2:m10|mf|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:2:m10|mf|dff2|Q~regout\);

-- Location: LC_X6_Y5_N3
\random:2:m10|mt|outclk\ : maxv_lcell
-- Equation(s):
-- \random:2:m10|mt|outclk~regout\ = DFFEAS((((!\random:2:m10|mt|outclk~regout\))), !\random:2:m10|mf|dff2|Q~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:2:m10|mf|dff2|ALT_INV_Q~regout\,
	datad => \random:2:m10|mt|outclk~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:2:m10|mt|outclk~regout\);

-- Location: LC_X6_Y5_N1
\random:3:m10|mf|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \random:3:m10|mf|dff0|Q~regout\ = DFFEAS(((!\random:3:m10|mf|dff2|Q~regout\ & ((!\random:3:m10|mf|dff0|Q~regout\)))), !\random:2:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:2:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:3:m10|mf|dff2|Q~regout\,
	datad => \random:3:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:3:m10|mf|dff0|Q~regout\);

-- Location: LC_X6_Y5_N5
\random:3:m10|mf|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \random:3:m10|mf|dff1|Q~regout\ = DFFEAS(((!\random:3:m10|mf|dff2|Q~regout\ & (\random:3:m10|mf|dff1|Q~regout\ $ (\random:3:m10|mf|dff0|Q~regout\)))), !\random:2:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:2:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:3:m10|mf|dff2|Q~regout\,
	datac => \random:3:m10|mf|dff1|Q~regout\,
	datad => \random:3:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:3:m10|mf|dff1|Q~regout\);

-- Location: LC_X6_Y5_N2
\random:3:m10|mf|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \random:3:m10|mf|dff2|Q~regout\ = DFFEAS(((\random:3:m10|mf|dff0|Q~regout\ & (\random:3:m10|mf|dff1|Q~regout\ & !\random:3:m10|mf|dff2|Q~regout\))), !\random:2:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:2:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:3:m10|mf|dff0|Q~regout\,
	datac => \random:3:m10|mf|dff1|Q~regout\,
	datad => \random:3:m10|mf|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:3:m10|mf|dff2|Q~regout\);

-- Location: LC_X7_Y6_N8
\random:3:m10|mt|outclk\ : maxv_lcell
-- Equation(s):
-- \random:3:m10|mt|outclk~regout\ = DFFEAS((((!\random:3:m10|mt|outclk~regout\))), !\random:3:m10|mf|dff2|Q~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:3:m10|mf|dff2|ALT_INV_Q~regout\,
	datad => \random:3:m10|mt|outclk~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:3:m10|mt|outclk~regout\);

-- Location: LC_X7_Y6_N7
\random:4:m10|mf|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \random:4:m10|mf|dff0|Q~regout\ = DFFEAS(((!\random:4:m10|mf|dff2|Q~regout\ & (!\random:4:m10|mf|dff0|Q~regout\))), !\random:3:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:3:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:4:m10|mf|dff2|Q~regout\,
	datac => \random:4:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:4:m10|mf|dff0|Q~regout\);

-- Location: LC_X7_Y6_N5
\random:4:m10|mf|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \random:4:m10|mf|dff1|Q~regout\ = DFFEAS(((!\random:4:m10|mf|dff2|Q~regout\ & (\random:4:m10|mf|dff0|Q~regout\ $ (\random:4:m10|mf|dff1|Q~regout\)))), !\random:3:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:3:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:4:m10|mf|dff0|Q~regout\,
	datac => \random:4:m10|mf|dff1|Q~regout\,
	datad => \random:4:m10|mf|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:4:m10|mf|dff1|Q~regout\);

-- Location: LC_X7_Y6_N0
\random:4:m10|mf|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \random:4:m10|mf|dff2|Q~regout\ = DFFEAS(((\random:4:m10|mf|dff0|Q~regout\ & (\random:4:m10|mf|dff1|Q~regout\ & !\random:4:m10|mf|dff2|Q~regout\))), !\random:3:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:3:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:4:m10|mf|dff0|Q~regout\,
	datac => \random:4:m10|mf|dff1|Q~regout\,
	datad => \random:4:m10|mf|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:4:m10|mf|dff2|Q~regout\);

-- Location: LC_X8_Y4_N5
\random:4:m10|mt|outclk\ : maxv_lcell
-- Equation(s):
-- \random:4:m10|mt|outclk~regout\ = DFFEAS((((!\random:4:m10|mt|outclk~regout\))), !\random:4:m10|mf|dff2|Q~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:4:m10|mf|dff2|ALT_INV_Q~regout\,
	datac => \random:4:m10|mt|outclk~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:4:m10|mt|outclk~regout\);

-- Location: LC_X8_Y4_N9
\random:5:m10|mf|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \random:5:m10|mf|dff0|Q~regout\ = DFFEAS((((!\random:5:m10|mf|dff2|Q~regout\ & !\random:5:m10|mf|dff0|Q~regout\))), !\random:4:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:4:m10|mt|ALT_INV_outclk~regout\,
	datac => \random:5:m10|mf|dff2|Q~regout\,
	datad => \random:5:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:5:m10|mf|dff0|Q~regout\);

-- Location: LC_X8_Y4_N7
\random:5:m10|mf|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \random:5:m10|mf|dff1|Q~regout\ = DFFEAS(((!\random:5:m10|mf|dff2|Q~regout\ & (\random:5:m10|mf|dff1|Q~regout\ $ (\random:5:m10|mf|dff0|Q~regout\)))), !\random:4:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:4:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:5:m10|mf|dff1|Q~regout\,
	datac => \random:5:m10|mf|dff2|Q~regout\,
	datad => \random:5:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:5:m10|mf|dff1|Q~regout\);

-- Location: LC_X8_Y4_N4
\random:5:m10|mf|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \random:5:m10|mf|dff2|Q~regout\ = DFFEAS(((\random:5:m10|mf|dff0|Q~regout\ & (\random:5:m10|mf|dff1|Q~regout\ & !\random:5:m10|mf|dff2|Q~regout\))), !\random:4:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:4:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:5:m10|mf|dff0|Q~regout\,
	datac => \random:5:m10|mf|dff1|Q~regout\,
	datad => \random:5:m10|mf|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:5:m10|mf|dff2|Q~regout\);

-- Location: LC_X7_Y4_N8
\random:5:m10|mt|outclk\ : maxv_lcell
-- Equation(s):
-- \random:5:m10|mt|outclk~regout\ = DFFEAS((((!\random:5:m10|mt|outclk~regout\))), !\random:5:m10|mf|dff2|Q~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:5:m10|mf|dff2|ALT_INV_Q~regout\,
	datad => \random:5:m10|mt|outclk~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:5:m10|mt|outclk~regout\);

-- Location: LC_X7_Y4_N9
\random:6:m10|mf|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \random:6:m10|mf|dff0|Q~regout\ = DFFEAS(((!\random:6:m10|mf|dff2|Q~regout\ & ((!\random:6:m10|mf|dff0|Q~regout\)))), !\random:5:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:5:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:6:m10|mf|dff2|Q~regout\,
	datad => \random:6:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:6:m10|mf|dff0|Q~regout\);

-- Location: LC_X7_Y4_N0
\random:6:m10|mf|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \random:6:m10|mf|dff1|Q~regout\ = DFFEAS(((!\random:6:m10|mf|dff2|Q~regout\ & (\random:6:m10|mf|dff1|Q~regout\ $ (\random:6:m10|mf|dff0|Q~regout\)))), !\random:5:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:5:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:6:m10|mf|dff2|Q~regout\,
	datac => \random:6:m10|mf|dff1|Q~regout\,
	datad => \random:6:m10|mf|dff0|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:6:m10|mf|dff1|Q~regout\);

-- Location: LC_X7_Y4_N1
\random:6:m10|mf|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \random:6:m10|mf|dff2|Q~regout\ = DFFEAS(((\random:6:m10|mf|dff0|Q~regout\ & (\random:6:m10|mf|dff1|Q~regout\ & !\random:6:m10|mf|dff2|Q~regout\))), !\random:5:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:5:m10|mt|ALT_INV_outclk~regout\,
	datab => \random:6:m10|mf|dff0|Q~regout\,
	datac => \random:6:m10|mf|dff1|Q~regout\,
	datad => \random:6:m10|mf|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:6:m10|mf|dff2|Q~regout\);

-- Location: LC_X6_Y4_N1
\random:6:m10|mt|outclk\ : maxv_lcell
-- Equation(s):
-- \random:6:m10|mt|outclk~regout\ = DFFEAS((((!\random:6:m10|mt|outclk~regout\))), !\random:6:m10|mf|dff2|Q~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:6:m10|mf|dff2|ALT_INV_Q~regout\,
	datad => \random:6:m10|mt|outclk~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \random:6:m10|mt|outclk~regout\);

-- Location: LC_X6_Y4_N4
\mff|dff0|Q\ : maxv_lcell
-- Equation(s):
-- \mff|dff0|Q~regout\ = DFFEAS((((!\mff|dff0|Q~regout\ & !\mff|dff2|Q~regout\))), !\random:6:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:6:m10|mt|ALT_INV_outclk~regout\,
	datac => \mff|dff0|Q~regout\,
	datad => \mff|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mff|dff0|Q~regout\);

-- Location: LC_X6_Y4_N7
\mff|dff1|Q\ : maxv_lcell
-- Equation(s):
-- \mff|dff1|Q~regout\ = DFFEAS(((!\mff|dff2|Q~regout\ & (\mff|dff1|Q~regout\ $ (\mff|dff0|Q~regout\)))), !\random:6:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:6:m10|mt|ALT_INV_outclk~regout\,
	datab => \mff|dff1|Q~regout\,
	datac => \mff|dff0|Q~regout\,
	datad => \mff|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mff|dff1|Q~regout\);

-- Location: LC_X6_Y4_N3
\mff|dff2|Q\ : maxv_lcell
-- Equation(s):
-- \mff|dff2|Q~regout\ = DFFEAS(((\mff|dff1|Q~regout\ & (\mff|dff0|Q~regout\ & !\mff|dff2|Q~regout\))), !\random:6:m10|mt|outclk~regout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \random:6:m10|mt|ALT_INV_outclk~regout\,
	datab => \mff|dff1|Q~regout\,
	datac => \mff|dff0|Q~regout\,
	datad => \mff|dff2|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mff|dff2|Q~regout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch1,
	combout => \switch1~combout\);

-- Location: LC_X5_Y4_N1
\dffg|Q\ : maxv_lcell
-- Equation(s):
-- \dffg|Q~regout\ = DFFEAS((((!\dffg|Q~regout\))), !\switch1~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_switch1~combout\,
	datad => \dffg|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dffg|Q~regout\);

-- Location: LC_X10_Y4_N8
clkoutd : maxv_lcell
-- Equation(s):
-- \clkoutd~combout\ = LCELL(((\mff|dff2|Q~regout\ & ((\dffg|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mff|dff2|Q~regout\,
	datad => \dffg|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clkoutd~combout\);

-- Location: LC_X6_Y7_N2
\timecalc|random:0:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|random:0:twox|Q~regout\ = DFFEAS((!\timecalc|add1|oobbaad1|ss~combout\), GLOBAL(\clkoutd~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \timecalc|add1|oobbaad1|ss~combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timecalc|random:0:twox|Q~regout\);

-- Location: LC_X5_Y7_N2
\timecalc|add1|oobbaad1|ss\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad1|ss~combout\ = \reset~combout\ $ ((((\timecalc|random:0:twox|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \timecalc|random:0:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad1|ss~combout\);

-- Location: LC_X6_Y7_N8
\timecalc|random:1:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad2|cc3\ = (!\reset~combout\ & (((C3_Q & \timecalc|random:0:twox|Q~regout\))))
-- \timecalc|random:1:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad2|cc3\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , \timecalc|add1|oobbaad2|s~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \reset~combout\,
	datac => \timecalc|add1|oobbaad2|s~combout\,
	datad => \timecalc|random:0:twox|Q~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad2|cc3\,
	regout => \timecalc|random:1:twox|Q~regout\);

-- Location: LC_X5_Y7_N7
\timecalc|add1|oobbaad2|s\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad2|s~combout\ = (\timecalc|random:1:twox|Q~regout\ $ (((!\reset~combout\ & \timecalc|random:0:twox|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \timecalc|random:0:twox|Q~regout\,
	datad => \timecalc|random:1:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad2|s~combout\);

-- Location: LC_X6_Y7_N0
\timecalc|random:3:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad4|s\ = (C5_Q $ (((\timecalc|add1|oobbaad2|cc3\ & \timecalc|random:2:twox|Q~regout\))))
-- \timecalc|random:3:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad4|s\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \timecalc|add1|oobbaad2|cc3\,
	datad => \timecalc|random:2:twox|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad4|s\,
	regout => \timecalc|random:3:twox|Q~regout\);

-- Location: LC_X6_Y7_N3
\timecalc|random:4:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad5|s\ = C6_Q $ (((\timecalc|add1|oobbaad2|cc3\ & (\timecalc|random:3:twox|Q~regout\ & \timecalc|random:2:twox|Q~regout\))))
-- \timecalc|random:4:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad5|s\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \timecalc|add1|oobbaad2|cc3\,
	datab => \timecalc|random:3:twox|Q~regout\,
	datad => \timecalc|random:2:twox|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad5|s\,
	regout => \timecalc|random:4:twox|Q~regout\);

-- Location: LC_X6_Y7_N9
\timecalc|random:2:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad5|cc3\ = (\timecalc|add1|oobbaad2|cc3\ & (\timecalc|random:3:twox|Q~regout\ & (C4_Q & \timecalc|random:4:twox|Q~regout\)))
-- \timecalc|random:2:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad5|cc3\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , \timecalc|add1|oobbaad3|s~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \timecalc|add1|oobbaad2|cc3\,
	datab => \timecalc|random:3:twox|Q~regout\,
	datac => \timecalc|add1|oobbaad3|s~combout\,
	datad => \timecalc|random:4:twox|Q~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad5|cc3\,
	regout => \timecalc|random:2:twox|Q~regout\);

-- Location: LC_X6_Y7_N4
\timecalc|add1|oobbaad3|s\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad3|s~combout\ = \timecalc|random:2:twox|Q~regout\ $ (((!\reset~combout\ & (\timecalc|random:0:twox|Q~regout\ & \timecalc|random:1:twox|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \timecalc|random:2:twox|Q~regout\,
	datac => \timecalc|random:0:twox|Q~regout\,
	datad => \timecalc|random:1:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad3|s~combout\);

-- Location: LC_X6_Y7_N6
\timecalc|random:5:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad6|s\ = (\timecalc|add1|oobbaad5|cc3\ $ ((C7_Q)))
-- \timecalc|random:5:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad6|s\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	datab => \timecalc|add1|oobbaad5|cc3\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad6|s\,
	regout => \timecalc|random:5:twox|Q~regout\);

-- Location: LC_X6_Y7_N7
\timecalc|random:6:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad7|s\ = C8_Q $ (((\timecalc|random:5:twox|Q~regout\ & (\timecalc|add1|oobbaad5|cc3\))))
-- \timecalc|random:6:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad7|s\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \timecalc|random:5:twox|Q~regout\,
	datab => \timecalc|add1|oobbaad5|cc3\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad7|s\,
	regout => \timecalc|random:6:twox|Q~regout\);

-- Location: LC_X6_Y7_N5
\timecalc|random:7:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad8|s\ = C9_Q $ (((\timecalc|random:5:twox|Q~regout\ & (\timecalc|add1|oobbaad5|cc3\ & \timecalc|random:6:twox|Q~regout\))))
-- \timecalc|random:7:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad8|s\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \timecalc|random:5:twox|Q~regout\,
	datab => \timecalc|add1|oobbaad5|cc3\,
	datad => \timecalc|random:6:twox|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad8|s\,
	regout => \timecalc|random:7:twox|Q~regout\);

-- Location: LC_X5_Y7_N3
\timecalc|add1|oobbaad8|cc3\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad8|cc3~combout\ = (\timecalc|random:5:twox|Q~regout\ & (\timecalc|random:7:twox|Q~regout\ & (\timecalc|add1|oobbaad5|cc3\ & \timecalc|random:6:twox|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timecalc|random:5:twox|Q~regout\,
	datab => \timecalc|random:7:twox|Q~regout\,
	datac => \timecalc|add1|oobbaad5|cc3\,
	datad => \timecalc|random:6:twox|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad8|cc3~combout\);

-- Location: LC_X5_Y7_N8
\timecalc|random:8:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad9|s\ = ((C10_Q $ (\timecalc|add1|oobbaad8|cc3~combout\)))
-- \timecalc|random:8:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad9|s\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	datad => \timecalc|add1|oobbaad8|cc3~combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad9|s\,
	regout => \timecalc|random:8:twox|Q~regout\);

-- Location: LC_X5_Y7_N4
\timecalc|random:9:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad10|s\ = (C11_Q $ (((\timecalc|random:8:twox|Q~regout\ & \timecalc|add1|oobbaad8|cc3~combout\))))
-- \timecalc|random:9:twox|Q~regout\ = DFFEAS(\timecalc|add1|oobbaad10|s\, GLOBAL(\clkoutd~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \timecalc|random:8:twox|Q~regout\,
	datad => \timecalc|add1|oobbaad8|cc3~combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad10|s\,
	regout => \timecalc|random:9:twox|Q~regout\);

-- Location: LC_X5_Y7_N1
\timecalc|random:10:twox|Q\ : maxv_lcell
-- Equation(s):
-- \timecalc|add1|oobbaad11|s\ = C12_Q $ (((\timecalc|random:8:twox|Q~regout\ & (\timecalc|random:9:twox|Q~regout\ & \timecalc|add1|oobbaad8|cc3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "78f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clkoutd~combout\,
	dataa => \timecalc|random:8:twox|Q~regout\,
	datab => \timecalc|random:9:twox|Q~regout\,
	datad => \timecalc|add1|oobbaad8|cc3~combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timecalc|add1|oobbaad11|s\,
	regout => \timecalc|random:10:twox|Q~regout\);

-- Location: LC_X8_Y6_N8
\ondded|Q1:0:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:0:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:0:dbtwox|D_FF1|Q~regout\))), !GLOBAL(\inclk~combout\), !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inclk~combout\,
	datad => \ondded|Q1:0:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:0:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y6_N6
\ondded|Q1:0:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:0:dbtwox|outclk~combout\ = LCELL((((\reset~combout\)) # (!\ondded|Q1:0:dbtwox|D_FF1|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ondded|Q1:0:dbtwox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:0:dbtwox|outclk~combout\);

-- Location: LC_X6_Y6_N7
\ondded|Q1:1:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:1:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:1:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:0:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:0:dbtwox|outclk~combout\,
	datac => \ondded|Q1:1:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:1:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y6_N3
\ondded|Q1:1:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:1:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:1:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ondded|Q1:1:dbtwox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:1:dbtwox|outclk~combout\);

-- Location: LC_X6_Y6_N6
\ondded|Q1:2:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:2:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:2:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:1:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:1:dbtwox|outclk~combout\,
	datac => \ondded|Q1:2:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:2:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X6_Y6_N5
\ondded|Q1:2:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:2:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:2:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ondded|Q1:2:dbtwox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:2:dbtwox|outclk~combout\);

-- Location: LC_X6_Y7_N1
\ondded|Q1:3:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:3:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:3:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:2:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:2:dbtwox|outclk~combout\,
	datad => \ondded|Q1:3:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:3:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y7_N3
\ondded|Q1:3:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:3:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:3:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ondded|Q1:3:dbtwox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:3:dbtwox|outclk~combout\);

-- Location: LC_X7_Y7_N4
\ondded|Q1:4:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:4:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:4:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:3:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:3:dbtwox|outclk~combout\,
	datac => \ondded|Q1:4:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:4:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X7_Y7_N1
\ondded|Q1:4:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:4:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:4:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \ondded|Q1:4:dbtwox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:4:dbtwox|outclk~combout\);

-- Location: LC_X7_Y7_N7
\ondded|Q1:5:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:5:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:5:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:4:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:4:dbtwox|outclk~combout\,
	datac => \ondded|Q1:5:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:5:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y7_N4
\ondded|Q1:5:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:5:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:5:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:5:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:5:dbtwox|outclk~combout\);

-- Location: LC_X9_Y7_N9
\ondded|Q1:6:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:6:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:6:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:5:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:5:dbtwox|outclk~combout\,
	datad => \ondded|Q1:6:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:6:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X9_Y7_N5
\ondded|Q1:6:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:6:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:6:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:6:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:6:dbtwox|outclk~combout\);

-- Location: LC_X9_Y7_N8
\ondded|Q1:7:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:7:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:7:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:6:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:6:dbtwox|outclk~combout\,
	datad => \ondded|Q1:7:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:7:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y7_N9
\ondded|Q1:7:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:7:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:7:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:7:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:7:dbtwox|outclk~combout\);

-- Location: LC_X8_Y7_N8
\ondded|Q1:8:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:8:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:8:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:7:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:7:dbtwox|outclk~combout\,
	datad => \ondded|Q1:8:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:8:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y7_N7
\ondded|Q1:8:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:8:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:8:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:8:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:8:dbtwox|outclk~combout\);

-- Location: LC_X8_Y7_N3
\ondded|Q1:9:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:9:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:9:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:8:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:8:dbtwox|outclk~combout\,
	datad => \ondded|Q1:9:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:9:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y5_N6
\ondded|Q1:9:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:9:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:9:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:9:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:9:dbtwox|outclk~combout\);

-- Location: LC_X8_Y5_N2
\ondded|Q1:10:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:10:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:10:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:9:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:9:dbtwox|outclk~combout\,
	datad => \ondded|Q1:10:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:10:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X8_Y5_N0
\ondded|Q1:10:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:10:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:10:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:10:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:10:dbtwox|outclk~combout\);

-- Location: LC_X9_Y4_N1
\ondded|Q1:11:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:11:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:11:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:10:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:10:dbtwox|outclk~combout\,
	datad => \ondded|Q1:11:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:11:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X9_Y4_N9
\ondded|Q1:11:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:11:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:11:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:11:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:11:dbtwox|outclk~combout\);

-- Location: LC_X9_Y4_N3
\ondded|Q1:12:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:12:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:12:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:11:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:11:dbtwox|outclk~combout\,
	datad => \ondded|Q1:12:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:12:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X9_Y4_N8
\ondded|Q1:12:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:12:dbtwox|outclk~combout\ = LCELL((((\reset~combout\) # (!\ondded|Q1:12:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:12:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:12:dbtwox|outclk~combout\);

-- Location: LC_X10_Y4_N1
\ondded|Q1:13:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:13:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:13:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:12:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:12:dbtwox|outclk~combout\,
	datad => \ondded|Q1:13:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:13:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X10_Y4_N7
\ondded|Q1:13:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:13:dbtwox|outclk~combout\ = LCELL((((\reset~combout\)) # (!\ondded|Q1:13:dbtwox|D_FF1|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ondded|Q1:13:dbtwox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:13:dbtwox|outclk~combout\);

-- Location: LC_X10_Y4_N9
\ondded|Q1:14:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:14:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:14:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:13:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:13:dbtwox|outclk~combout\,
	datad => \ondded|Q1:14:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:14:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X10_Y4_N4
\ondded|Q1:14:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:14:dbtwox|outclk~combout\ = LCELL((((\reset~combout\)) # (!\ondded|Q1:14:dbtwox|D_FF1|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ondded|Q1:14:dbtwox|D_FF1|Q~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:14:dbtwox|outclk~combout\);

-- Location: LC_X11_Y4_N7
\ondded|Q1:15:dbtwox|D_FF1|Q\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:15:dbtwox|D_FF1|Q~regout\ = DFFEAS((((!\ondded|Q1:15:dbtwox|D_FF1|Q~regout\))), \ondded|Q1:14:dbtwox|outclk~combout\, !\reset~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:14:dbtwox|outclk~combout\,
	datac => \ondded|Q1:15:dbtwox|D_FF1|Q~regout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ondded|Q1:15:dbtwox|D_FF1|Q~regout\);

-- Location: LC_X12_Y3_N2
\ondded|Q1:15:dbtwox|outclk\ : maxv_lcell
-- Equation(s):
-- \ondded|Q1:15:dbtwox|outclk~combout\ = LCELL((((!\reset~combout\ & \ondded|Q1:15:dbtwox|D_FF1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \ondded|Q1:15:dbtwox|D_FF1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ondded|Q1:15:dbtwox|outclk~combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lcdreset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lcdreset,
	combout => \lcdreset~combout\);

-- Location: LC_X10_Y6_N1
\display|state.S8\ : maxv_lcell
-- Equation(s):
-- \display|state.S8~regout\ = DFFEAS(((\display|state.S7~regout\ & (\lcdreset~combout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => \display|state.S7~regout\,
	datac => \lcdreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S8~regout\);

-- Location: LC_X11_Y6_N5
\display|state.S9\ : maxv_lcell
-- Equation(s):
-- \display|state.S9~regout\ = DFFEAS((((\lcdreset~combout\ & \display|state.S8~regout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datac => \lcdreset~combout\,
	datad => \display|state.S8~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S9~regout\);

-- Location: LC_X12_Y5_N3
\display|count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- \display|count_cmd\(0) = DFFEAS((\display|state.S2~regout\ $ (((\display|count_cmd\(0))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , !\lcdreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => \display|state.S2~regout\,
	datad => \display|count_cmd\(0),
	aclr => GND,
	sclr => \ALT_INV_lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|count_cmd\(0));

-- Location: LC_X12_Y5_N2
\display|count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- \display|count_cmd\(1) = DFFEAS((\display|count_cmd\(1) $ (((\display|count_cmd\(0))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~31_combout\, , , !\lcdreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => \display|count_cmd\(1),
	datad => \display|count_cmd\(0),
	aclr => GND,
	sclr => \ALT_INV_lcdreset~combout\,
	ena => \display|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|count_cmd\(1));

-- Location: LC_X12_Y5_N1
\display|count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- \display|count_cmd\(2) = DFFEAS(\display|count_cmd\(2) $ (((\display|count_cmd\(0) & ((\display|count_cmd\(1)))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~31_combout\, , , !\lcdreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(2),
	datad => \display|count_cmd\(1),
	aclr => GND,
	sclr => \ALT_INV_lcdreset~combout\,
	ena => \display|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|count_cmd\(2));

-- Location: LC_X12_Y5_N5
\display|state~27\ : maxv_lcell
-- Equation(s):
-- \display|state~27_combout\ = (!\display|state.S0~regout\ & (((!\display|count_cmd\(0) & !\display|count_cmd\(1))) # (!\display|count_cmd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0307",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(2),
	datac => \display|state.S0~regout\,
	datad => \display|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|state~27_combout\);

-- Location: LC_X11_Y5_N7
\display|state.S1\ : maxv_lcell
-- Equation(s):
-- \display|state.S1~regout\ = DFFEAS((((\lcdreset~combout\ & \display|state~27_combout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datac => \lcdreset~combout\,
	datad => \display|state~27_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S1~regout\);

-- Location: LC_X11_Y5_N2
\display|state.S2\ : maxv_lcell
-- Equation(s):
-- \display|state.S2~regout\ = DFFEAS(((\display|state.S1~regout\ & (\lcdreset~combout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => \display|state.S1~regout\,
	datac => \lcdreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S2~regout\);

-- Location: LC_X12_Y5_N0
\display|state~31\ : maxv_lcell
-- Equation(s):
-- \display|state~31_combout\ = (((\display|state.S2~regout\) # (!\lcdreset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcdreset~combout\,
	datad => \display|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|state~31_combout\);

-- Location: LC_X12_Y5_N4
\display|state.S0\ : maxv_lcell
-- Equation(s):
-- \display|state.S0~regout\ = DFFEAS((((!\display|state~31_combout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datac => \display|state~31_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S0~regout\);

-- Location: LC_X12_Y6_N8
\display|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \display|LessThan0~1_combout\ = (((!\display|count_cmd\(1) & !\display|count_cmd\(0))) # (!\display|count_cmd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|count_cmd\(2),
	datac => \display|count_cmd\(1),
	datad => \display|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|LessThan0~1_combout\);

-- Location: LC_X11_Y6_N0
\display|state.S3\ : maxv_lcell
-- Equation(s):
-- \display|state.S3~regout\ = DFFEAS((\lcdreset~combout\ & ((\display|state.S9~regout\) # ((!\display|state.S0~regout\ & !\display|LessThan0~1_combout\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0b0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state.S9~regout\,
	datab => \display|state.S0~regout\,
	datac => \lcdreset~combout\,
	datad => \display|LessThan0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S3~regout\);

-- Location: LC_X11_Y6_N3
\display|state.S4\ : maxv_lcell
-- Equation(s):
-- \display|state.S4~regout\ = DFFEAS(((\display|state.S3~regout\ & (\lcdreset~combout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => \display|state.S3~regout\,
	datac => \lcdreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S4~regout\);

-- Location: LC_X11_Y6_N1
\display|state.S5\ : maxv_lcell
-- Equation(s):
-- \display|state.S5~regout\ = DFFEAS((((\lcdreset~combout\ & \display|state.S4~regout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datac => \lcdreset~combout\,
	datad => \display|state.S4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S5~regout\);

-- Location: LC_X10_Y6_N2
\display|state.S6\ : maxv_lcell
-- Equation(s):
-- \display|state.S6~regout\ = DFFEAS((((\lcdreset~combout\ & \display|state.S5~regout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datac => \lcdreset~combout\,
	datad => \display|state.S5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|state.S6~regout\);

-- Location: LC_X10_Y6_N5
\display|state~30\ : maxv_lcell
-- Equation(s):
-- \display|state~30_combout\ = (((\lcdreset~combout\ & \display|state.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcdreset~combout\,
	datad => \display|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|state~30_combout\);

-- Location: LC_X10_Y6_N7
\display|state.S7\ : maxv_lcell
-- Equation(s):
-- \display|Selector3~2\ = ((!\display|state.S8~regout\ & (!D1_state.S7 & !\display|state.S6~regout\)))
-- \display|state.S7~regout\ = DFFEAS(\display|Selector3~2\, GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , \display|state~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => \display|state.S8~regout\,
	datac => \display|state~30_combout\,
	datad => \display|state.S6~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector3~2\,
	regout => \display|state.S7~regout\);

-- Location: LC_X11_Y5_N9
\display|Selector10~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector10~0_combout\ = (((\display|state.S7~regout\) # (\display|state.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|state.S7~regout\,
	datad => \display|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector10~0_combout\);

-- Location: LC_X12_Y5_N6
\display|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \display|LessThan0~0_combout\ = ((!\display|count_cmd\(1) & ((!\display|count_cmd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \display|count_cmd\(1),
	datad => \display|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|LessThan0~0_combout\);

-- Location: LC_X12_Y5_N7
\display|state~26\ : maxv_lcell
-- Equation(s):
-- \display|state~26_combout\ = (!\display|state.S9~regout\ & (((\display|state.S0~regout\) # (\display|LessThan0~0_combout\)) # (!\display|count_cmd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|state.S9~regout\,
	datab => \display|count_cmd\(2),
	datac => \display|state.S0~regout\,
	datad => \display|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|state~26_combout\);

-- Location: LC_X11_Y5_N8
\display|lcd_en\ : maxv_lcell
-- Equation(s):
-- \display|lcd_en~regout\ = DFFEAS((\display|Selector10~0_combout\) # ((\display|state.S1~regout\) # ((\display|lcd_en~regout\ & !\display|state~26_combout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \lcdreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd_en~regout\,
	datab => \display|Selector10~0_combout\,
	datac => \display|state.S1~regout\,
	datad => \display|state~26_combout\,
	aclr => GND,
	ena => \lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd_en~regout\);

-- Location: LC_X11_Y5_N4
\display|Selector8~1\ : maxv_lcell
-- Equation(s):
-- \display|Selector8~1_combout\ = (((!\display|state.S1~regout\ & !\display|state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \display|state.S1~regout\,
	datad => \display|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector8~1_combout\);

-- Location: LC_X11_Y6_N4
\display|Selector8~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector8~0_combout\ = (!\display|state.S4~regout\ & (((!\display|state.S3~regout\ & !\display|state.S5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|state.S4~regout\,
	datac => \display|state.S3~regout\,
	datad => \display|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector8~0_combout\);

-- Location: LC_X12_Y6_N9
\display|Selector8~2\ : maxv_lcell
-- Equation(s):
-- \display|Selector8~2_combout\ = (\display|Selector8~1_combout\ & (\display|Selector8~0_combout\ & ((\display|lcd_rs~regout\) # (!\display|state.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|Selector8~1_combout\,
	datab => \display|Selector8~0_combout\,
	datac => \display|lcd_rs~regout\,
	datad => \display|state.S9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector8~2_combout\);

-- Location: LC_X12_Y6_N0
\display|lcd_rs\ : maxv_lcell
-- Equation(s):
-- \display|lcd_rs~regout\ = DFFEAS((\display|Selector8~2_combout\ & ((\display|state.S0~regout\) # ((!\display|LessThan0~1_combout\ & \display|lcd_rs~regout\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \lcdreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state.S0~regout\,
	datab => \display|LessThan0~1_combout\,
	datac => \display|lcd_rs~regout\,
	datad => \display|Selector8~2_combout\,
	aclr => GND,
	ena => \lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd_rs~regout\);

-- Location: LC_X12_Y6_N6
\display|Selector7~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector7~0_combout\ = (\display|count_cmd\(0) & (!\display|count_cmd\(1) & ((\display|state~27_combout\) # (!\display|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|Selector8~1_combout\,
	datab => \display|count_cmd\(0),
	datac => \display|count_cmd\(1),
	datad => \display|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector7~0_combout\);

-- Location: LC_X11_Y6_N2
\display|ack\ : maxv_lcell
-- Equation(s):
-- \display|ack~regout\ = DFFEAS((\display|state.S8~regout\) # ((!\display|state.S0~regout\ & (D1_ack & !\display|LessThan0~1_combout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , !\lcdreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccdc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state.S0~regout\,
	datab => \display|state.S8~regout\,
	datad => \display|LessThan0~1_combout\,
	aclr => GND,
	sclr => \ALT_INV_lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|ack~regout\);

-- Location: LC_X5_Y10_N4
\j[0]\ : maxv_lcell
-- Equation(s):
-- j(0) = DFFEAS((!j(0)), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[0]~1\ = CARRY((j(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(0),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(0),
	cout => \j[0]~1\);

-- Location: LC_X5_Y10_N5
\j[1]\ : maxv_lcell
-- Equation(s):
-- j(1) = DFFEAS(j(1) $ ((((\j[0]~1\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[1]~61\ = CARRY(((!\j[0]~1\)) # (!j(1)))
-- \j[1]~61COUT1_66\ = CARRY(((!\j[0]~1\)) # (!j(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(1),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(1),
	cout0 => \j[1]~61\,
	cout1 => \j[1]~61COUT1_66\);

-- Location: LC_X5_Y10_N6
\j[2]\ : maxv_lcell
-- Equation(s):
-- j(2) = DFFEAS(j(2) $ ((((!(!\j[0]~1\ & \j[1]~61\) # (\j[0]~1\ & \j[1]~61COUT1_66\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[2]~3\ = CARRY((j(2) & ((!\j[1]~61\))))
-- \j[2]~3COUT1_67\ = CARRY((j(2) & ((!\j[1]~61COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(2),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[0]~1\,
	cin0 => \j[1]~61\,
	cin1 => \j[1]~61COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(2),
	cout0 => \j[2]~3\,
	cout1 => \j[2]~3COUT1_67\);

-- Location: LC_X5_Y10_N7
\j[3]\ : maxv_lcell
-- Equation(s):
-- j(3) = DFFEAS((j(3) $ (((!\j[0]~1\ & \j[2]~3\) # (\j[0]~1\ & \j[2]~3COUT1_67\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[3]~5\ = CARRY(((!\j[2]~3\) # (!j(3))))
-- \j[3]~5COUT1_68\ = CARRY(((!\j[2]~3COUT1_67\) # (!j(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(3),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[0]~1\,
	cin0 => \j[2]~3\,
	cin1 => \j[2]~3COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(3),
	cout0 => \j[3]~5\,
	cout1 => \j[3]~5COUT1_68\);

-- Location: LC_X5_Y10_N8
\j[4]\ : maxv_lcell
-- Equation(s):
-- j(4) = DFFEAS(j(4) $ ((((!(!\j[0]~1\ & \j[3]~5\) # (\j[0]~1\ & \j[3]~5COUT1_68\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[4]~7\ = CARRY((j(4) & ((!\j[3]~5\))))
-- \j[4]~7COUT1_69\ = CARRY((j(4) & ((!\j[3]~5COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(4),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[0]~1\,
	cin0 => \j[3]~5\,
	cin1 => \j[3]~5COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(4),
	cout0 => \j[4]~7\,
	cout1 => \j[4]~7COUT1_69\);

-- Location: LC_X5_Y10_N9
\j[5]\ : maxv_lcell
-- Equation(s):
-- j(5) = DFFEAS((j(5) $ (((!\j[0]~1\ & \j[4]~7\) # (\j[0]~1\ & \j[4]~7COUT1_69\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[5]~9\ = CARRY(((!\j[4]~7COUT1_69\) # (!j(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(5),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[0]~1\,
	cin0 => \j[4]~7\,
	cin1 => \j[4]~7COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(5),
	cout => \j[5]~9\);

-- Location: LC_X6_Y10_N0
\j[6]\ : maxv_lcell
-- Equation(s):
-- j(6) = DFFEAS((j(6) $ ((!\j[5]~9\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[6]~11\ = CARRY(((j(6) & !\j[5]~9\)))
-- \j[6]~11COUT1_70\ = CARRY(((j(6) & !\j[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(6),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(6),
	cout0 => \j[6]~11\,
	cout1 => \j[6]~11COUT1_70\);

-- Location: LC_X6_Y10_N1
\j[7]\ : maxv_lcell
-- Equation(s):
-- j(7) = DFFEAS((j(7) $ (((!\j[5]~9\ & \j[6]~11\) # (\j[5]~9\ & \j[6]~11COUT1_70\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[7]~13\ = CARRY(((!\j[6]~11\) # (!j(7))))
-- \j[7]~13COUT1_71\ = CARRY(((!\j[6]~11COUT1_70\) # (!j(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(7),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[5]~9\,
	cin0 => \j[6]~11\,
	cin1 => \j[6]~11COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(7),
	cout0 => \j[7]~13\,
	cout1 => \j[7]~13COUT1_71\);

-- Location: LC_X6_Y10_N2
\j[8]\ : maxv_lcell
-- Equation(s):
-- j(8) = DFFEAS((j(8) $ ((!(!\j[5]~9\ & \j[7]~13\) # (\j[5]~9\ & \j[7]~13COUT1_71\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[8]~15\ = CARRY(((j(8) & !\j[7]~13\)))
-- \j[8]~15COUT1_72\ = CARRY(((j(8) & !\j[7]~13COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(8),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[5]~9\,
	cin0 => \j[7]~13\,
	cin1 => \j[7]~13COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(8),
	cout0 => \j[8]~15\,
	cout1 => \j[8]~15COUT1_72\);

-- Location: LC_X6_Y10_N3
\j[9]\ : maxv_lcell
-- Equation(s):
-- j(9) = DFFEAS(j(9) $ (((((!\j[5]~9\ & \j[8]~15\) # (\j[5]~9\ & \j[8]~15COUT1_72\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[9]~17\ = CARRY(((!\j[8]~15\)) # (!j(9)))
-- \j[9]~17COUT1_73\ = CARRY(((!\j[8]~15COUT1_72\)) # (!j(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(9),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[5]~9\,
	cin0 => \j[8]~15\,
	cin1 => \j[8]~15COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(9),
	cout0 => \j[9]~17\,
	cout1 => \j[9]~17COUT1_73\);

-- Location: LC_X6_Y10_N4
\j[10]\ : maxv_lcell
-- Equation(s):
-- j(10) = DFFEAS(j(10) $ ((((!(!\j[5]~9\ & \j[9]~17\) # (\j[5]~9\ & \j[9]~17COUT1_73\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[10]~19\ = CARRY((j(10) & ((!\j[9]~17COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(10),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[5]~9\,
	cin0 => \j[9]~17\,
	cin1 => \j[9]~17COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(10),
	cout => \j[10]~19\);

-- Location: LC_X6_Y10_N5
\j[11]\ : maxv_lcell
-- Equation(s):
-- j(11) = DFFEAS(j(11) $ ((((\j[10]~19\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[11]~21\ = CARRY(((!\j[10]~19\)) # (!j(11)))
-- \j[11]~21COUT1_74\ = CARRY(((!\j[10]~19\)) # (!j(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(11),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[10]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(11),
	cout0 => \j[11]~21\,
	cout1 => \j[11]~21COUT1_74\);

-- Location: LC_X6_Y10_N6
\j[12]\ : maxv_lcell
-- Equation(s):
-- j(12) = DFFEAS(j(12) $ ((((!(!\j[10]~19\ & \j[11]~21\) # (\j[10]~19\ & \j[11]~21COUT1_74\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[12]~23\ = CARRY((j(12) & ((!\j[11]~21\))))
-- \j[12]~23COUT1_75\ = CARRY((j(12) & ((!\j[11]~21COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(12),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[10]~19\,
	cin0 => \j[11]~21\,
	cin1 => \j[11]~21COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(12),
	cout0 => \j[12]~23\,
	cout1 => \j[12]~23COUT1_75\);

-- Location: LC_X6_Y10_N7
\j[13]\ : maxv_lcell
-- Equation(s):
-- j(13) = DFFEAS((j(13) $ (((!\j[10]~19\ & \j[12]~23\) # (\j[10]~19\ & \j[12]~23COUT1_75\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[13]~25\ = CARRY(((!\j[12]~23\) # (!j(13))))
-- \j[13]~25COUT1_76\ = CARRY(((!\j[12]~23COUT1_75\) # (!j(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(13),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[10]~19\,
	cin0 => \j[12]~23\,
	cin1 => \j[12]~23COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(13),
	cout0 => \j[13]~25\,
	cout1 => \j[13]~25COUT1_76\);

-- Location: LC_X6_Y10_N8
\j[14]\ : maxv_lcell
-- Equation(s):
-- j(14) = DFFEAS(j(14) $ ((((!(!\j[10]~19\ & \j[13]~25\) # (\j[10]~19\ & \j[13]~25COUT1_76\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[14]~27\ = CARRY((j(14) & ((!\j[13]~25\))))
-- \j[14]~27COUT1_77\ = CARRY((j(14) & ((!\j[13]~25COUT1_76\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(14),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[10]~19\,
	cin0 => \j[13]~25\,
	cin1 => \j[13]~25COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(14),
	cout0 => \j[14]~27\,
	cout1 => \j[14]~27COUT1_77\);

-- Location: LC_X6_Y10_N9
\j[15]\ : maxv_lcell
-- Equation(s):
-- j(15) = DFFEAS((j(15) $ (((!\j[10]~19\ & \j[14]~27\) # (\j[10]~19\ & \j[14]~27COUT1_77\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[15]~29\ = CARRY(((!\j[14]~27COUT1_77\) # (!j(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(15),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[10]~19\,
	cin0 => \j[14]~27\,
	cin1 => \j[14]~27COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(15),
	cout => \j[15]~29\);

-- Location: LC_X7_Y10_N0
\j[16]\ : maxv_lcell
-- Equation(s):
-- j(16) = DFFEAS((j(16) $ ((!\j[15]~29\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[16]~31\ = CARRY(((j(16) & !\j[15]~29\)))
-- \j[16]~31COUT1_78\ = CARRY(((j(16) & !\j[15]~29\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(16),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[15]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(16),
	cout0 => \j[16]~31\,
	cout1 => \j[16]~31COUT1_78\);

-- Location: LC_X7_Y10_N1
\j[17]\ : maxv_lcell
-- Equation(s):
-- j(17) = DFFEAS((j(17) $ (((!\j[15]~29\ & \j[16]~31\) # (\j[15]~29\ & \j[16]~31COUT1_78\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[17]~33\ = CARRY(((!\j[16]~31\) # (!j(17))))
-- \j[17]~33COUT1_79\ = CARRY(((!\j[16]~31COUT1_78\) # (!j(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(17),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[15]~29\,
	cin0 => \j[16]~31\,
	cin1 => \j[16]~31COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(17),
	cout0 => \j[17]~33\,
	cout1 => \j[17]~33COUT1_79\);

-- Location: LC_X7_Y10_N2
\j[18]\ : maxv_lcell
-- Equation(s):
-- j(18) = DFFEAS((j(18) $ ((!(!\j[15]~29\ & \j[17]~33\) # (\j[15]~29\ & \j[17]~33COUT1_79\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[18]~35\ = CARRY(((j(18) & !\j[17]~33\)))
-- \j[18]~35COUT1_80\ = CARRY(((j(18) & !\j[17]~33COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(18),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[15]~29\,
	cin0 => \j[17]~33\,
	cin1 => \j[17]~33COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(18),
	cout0 => \j[18]~35\,
	cout1 => \j[18]~35COUT1_80\);

-- Location: LC_X7_Y10_N3
\j[19]\ : maxv_lcell
-- Equation(s):
-- j(19) = DFFEAS(j(19) $ (((((!\j[15]~29\ & \j[18]~35\) # (\j[15]~29\ & \j[18]~35COUT1_80\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[19]~37\ = CARRY(((!\j[18]~35\)) # (!j(19)))
-- \j[19]~37COUT1_81\ = CARRY(((!\j[18]~35COUT1_80\)) # (!j(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(19),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[15]~29\,
	cin0 => \j[18]~35\,
	cin1 => \j[18]~35COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(19),
	cout0 => \j[19]~37\,
	cout1 => \j[19]~37COUT1_81\);

-- Location: LC_X7_Y10_N4
\j[20]\ : maxv_lcell
-- Equation(s):
-- j(20) = DFFEAS(j(20) $ ((((!(!\j[15]~29\ & \j[19]~37\) # (\j[15]~29\ & \j[19]~37COUT1_81\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[20]~39\ = CARRY((j(20) & ((!\j[19]~37COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(20),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[15]~29\,
	cin0 => \j[19]~37\,
	cin1 => \j[19]~37COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(20),
	cout => \j[20]~39\);

-- Location: LC_X7_Y10_N5
\j[21]\ : maxv_lcell
-- Equation(s):
-- j(21) = DFFEAS(j(21) $ ((((\j[20]~39\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[21]~41\ = CARRY(((!\j[20]~39\)) # (!j(21)))
-- \j[21]~41COUT1_82\ = CARRY(((!\j[20]~39\)) # (!j(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(21),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[20]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(21),
	cout0 => \j[21]~41\,
	cout1 => \j[21]~41COUT1_82\);

-- Location: LC_X7_Y10_N6
\j[22]\ : maxv_lcell
-- Equation(s):
-- j(22) = DFFEAS(j(22) $ ((((!(!\j[20]~39\ & \j[21]~41\) # (\j[20]~39\ & \j[21]~41COUT1_82\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[22]~43\ = CARRY((j(22) & ((!\j[21]~41\))))
-- \j[22]~43COUT1_83\ = CARRY((j(22) & ((!\j[21]~41COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(22),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[20]~39\,
	cin0 => \j[21]~41\,
	cin1 => \j[21]~41COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(22),
	cout0 => \j[22]~43\,
	cout1 => \j[22]~43COUT1_83\);

-- Location: LC_X7_Y10_N7
\j[23]\ : maxv_lcell
-- Equation(s):
-- j(23) = DFFEAS((j(23) $ (((!\j[20]~39\ & \j[22]~43\) # (\j[20]~39\ & \j[22]~43COUT1_83\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[23]~45\ = CARRY(((!\j[22]~43\) # (!j(23))))
-- \j[23]~45COUT1_84\ = CARRY(((!\j[22]~43COUT1_83\) # (!j(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(23),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[20]~39\,
	cin0 => \j[22]~43\,
	cin1 => \j[22]~43COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(23),
	cout0 => \j[23]~45\,
	cout1 => \j[23]~45COUT1_84\);

-- Location: LC_X7_Y10_N8
\j[24]\ : maxv_lcell
-- Equation(s):
-- j(24) = DFFEAS(j(24) $ ((((!(!\j[20]~39\ & \j[23]~45\) # (\j[20]~39\ & \j[23]~45COUT1_84\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[24]~47\ = CARRY((j(24) & ((!\j[23]~45\))))
-- \j[24]~47COUT1_85\ = CARRY((j(24) & ((!\j[23]~45COUT1_84\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(24),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[20]~39\,
	cin0 => \j[23]~45\,
	cin1 => \j[23]~45COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(24),
	cout0 => \j[24]~47\,
	cout1 => \j[24]~47COUT1_85\);

-- Location: LC_X7_Y10_N9
\j[25]\ : maxv_lcell
-- Equation(s):
-- j(25) = DFFEAS((j(25) $ (((!\j[20]~39\ & \j[24]~47\) # (\j[20]~39\ & \j[24]~47COUT1_85\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[25]~49\ = CARRY(((!\j[24]~47COUT1_85\) # (!j(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(25),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[20]~39\,
	cin0 => \j[24]~47\,
	cin1 => \j[24]~47COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(25),
	cout => \j[25]~49\);

-- Location: LC_X8_Y10_N0
\j[26]\ : maxv_lcell
-- Equation(s):
-- j(26) = DFFEAS((j(26) $ ((!\j[25]~49\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[26]~51\ = CARRY(((j(26) & !\j[25]~49\)))
-- \j[26]~51COUT1_86\ = CARRY(((j(26) & !\j[25]~49\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(26),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[25]~49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(26),
	cout0 => \j[26]~51\,
	cout1 => \j[26]~51COUT1_86\);

-- Location: LC_X8_Y10_N1
\j[27]\ : maxv_lcell
-- Equation(s):
-- j(27) = DFFEAS((j(27) $ (((!\j[25]~49\ & \j[26]~51\) # (\j[25]~49\ & \j[26]~51COUT1_86\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[27]~53\ = CARRY(((!\j[26]~51\) # (!j(27))))
-- \j[27]~53COUT1_87\ = CARRY(((!\j[26]~51COUT1_86\) # (!j(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(27),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[25]~49\,
	cin0 => \j[26]~51\,
	cin1 => \j[26]~51COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(27),
	cout0 => \j[27]~53\,
	cout1 => \j[27]~53COUT1_87\);

-- Location: LC_X8_Y10_N2
\j[28]\ : maxv_lcell
-- Equation(s):
-- j(28) = DFFEAS((j(28) $ ((!(!\j[25]~49\ & \j[27]~53\) # (\j[25]~49\ & \j[27]~53COUT1_87\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[28]~57\ = CARRY(((j(28) & !\j[27]~53\)))
-- \j[28]~57COUT1_88\ = CARRY(((j(28) & !\j[27]~53COUT1_87\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => j(28),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[25]~49\,
	cin0 => \j[27]~53\,
	cin1 => \j[27]~53COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(28),
	cout0 => \j[28]~57\,
	cout1 => \j[28]~57COUT1_88\);

-- Location: LC_X8_Y10_N3
\j[29]\ : maxv_lcell
-- Equation(s):
-- j(29) = DFFEAS(j(29) $ (((((!\j[25]~49\ & \j[28]~57\) # (\j[25]~49\ & \j[28]~57COUT1_88\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[29]~59\ = CARRY(((!\j[28]~57\)) # (!j(29)))
-- \j[29]~59COUT1_89\ = CARRY(((!\j[28]~57COUT1_88\)) # (!j(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(29),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[25]~49\,
	cin0 => \j[28]~57\,
	cin1 => \j[28]~57COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(29),
	cout0 => \j[29]~59\,
	cout1 => \j[29]~59COUT1_89\);

-- Location: LC_X8_Y10_N4
\j[30]\ : maxv_lcell
-- Equation(s):
-- j(30) = DFFEAS(j(30) $ ((((!(!\j[25]~49\ & \j[29]~59\) # (\j[25]~49\ & \j[29]~59COUT1_89\))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )
-- \j[30]~55\ = CARRY((j(30) & ((!\j[29]~59COUT1_89\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(30),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[25]~49\,
	cin0 => \j[29]~59\,
	cin1 => \j[29]~59COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(30),
	cout => \j[30]~55\);

-- Location: LC_X8_Y10_N5
\j[31]\ : maxv_lcell
-- Equation(s):
-- j(31) = DFFEAS(j(31) $ ((((\j[30]~55\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|ack~regout\, , , \j[15]~64_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(31),
	aclr => GND,
	sclr => \j[15]~64_combout\,
	ena => \display|ack~regout\,
	cin => \j[30]~55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => j(31));

-- Location: LC_X4_Y10_N6
\Equal0~5\ : maxv_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (!j(19) & (!j(18) & (!j(20) & !j(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(19),
	datab => j(18),
	datac => j(20),
	datad => j(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X4_Y10_N7
\Equal0~6\ : maxv_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (!j(24) & (!j(23) & (!j(25) & !j(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(24),
	datab => j(23),
	datac => j(25),
	datad => j(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X8_Y10_N7
\Equal0~7\ : maxv_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (((!j(26) & !j(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => j(26),
	datad => j(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X8_Y10_N8
\Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Equal0~8_combout\ = (!j(29) & (!j(28) & (!j(30) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(29),
	datab => j(28),
	datac => j(30),
	datad => \Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8_combout\);

-- Location: LC_X5_Y10_N0
\Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!j(9) & (!j(8) & (!j(6) & !j(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(9),
	datab => j(8),
	datac => j(6),
	datad => j(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X5_Y10_N2
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!j(2) & (!j(5) & (!j(3) & !j(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datab => j(5),
	datac => j(3),
	datad => j(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X5_Y10_N3
\Equal0~2\ : maxv_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (!j(13) & (!j(10) & (!j(12) & !j(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(13),
	datab => j(10),
	datac => j(12),
	datad => j(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X4_Y10_N8
\Equal0~3\ : maxv_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (!j(14) & (!j(15) & (!j(16) & !j(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(14),
	datab => j(15),
	datac => j(16),
	datad => j(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X4_Y10_N0
\Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X4_Y10_N1
\Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X4_Y10_N5
\j[15]~64\ : maxv_lcell
-- Equation(s):
-- \j[15]~64_combout\ = ((!j(31) & ((j(1)) # (!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => j(1),
	datac => j(31),
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \j[15]~64_combout\);

-- Location: LC_X4_Y10_N2
\Equal0~10\ : maxv_lcell
-- Equation(s):
-- \Equal0~10_combout\ = (((!j(31) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => j(31),
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10_combout\);

-- Location: LC_X4_Y10_N3
\i[0]~0\ : maxv_lcell
-- Equation(s):
-- \i[0]~0_combout\ = (\display|ack~regout\ & (\Equal0~10_combout\ & ((!j(1)) # (!j(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => j(0),
	datab => j(1),
	datac => \display|ack~regout\,
	datad => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i[0]~0_combout\);

-- Location: LC_X4_Y7_N8
\write_column[0]\ : maxv_lcell
-- Equation(s):
-- \Equal1~0\ = (!j(1) & (j(0) & (!j(31) & \Equal0~9_combout\)))
-- write_column(0) = DFFEAS(\Equal1~0\, GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(1),
	datab => j(0),
	datac => j(31),
	datad => \Equal0~9_combout\,
	aclr => GND,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0\,
	regout => write_column(0));

-- Location: LC_X4_Y7_N2
\write_column[1]\ : maxv_lcell
-- Equation(s):
-- \Equal0~11\ = (!j(1) & (!j(0) & (!j(31) & \Equal0~9_combout\)))
-- write_column(1) = DFFEAS(\Equal0~11\, GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => j(1),
	datab => j(0),
	datac => j(31),
	datad => \Equal0~9_combout\,
	aclr => GND,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~11\,
	regout => write_column(1));

-- Location: LC_X4_Y7_N0
\i~1\ : maxv_lcell
-- Equation(s):
-- \i~1_combout\ = (\Equal0~11\ & (!\timecalc|add1|oobbaad1|ss~combout\)) # (!\Equal0~11\ & (((\timecalc|add1|oobbaad5|s\ & \Equal1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timecalc|add1|oobbaad1|ss~combout\,
	datab => \Equal0~11\,
	datac => \timecalc|add1|oobbaad5|s\,
	datad => \Equal1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i~1_combout\);

-- Location: LC_X4_Y7_N1
\i[0]\ : maxv_lcell
-- Equation(s):
-- i(0) = DFFEAS((\i~1_combout\) # ((!\Equal1~0\ & (!\Equal0~11\ & \timecalc|add1|oobbaad9|s\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \Equal1~0\,
	datab => \Equal0~11\,
	datac => \i~1_combout\,
	datad => \timecalc|add1|oobbaad9|s\,
	aclr => GND,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(0));

-- Location: LC_X4_Y7_N5
\i~5\ : maxv_lcell
-- Equation(s):
-- \i~5_combout\ = (\Equal0~11\ & (\timecalc|add1|oobbaad3|s~combout\)) # (!\Equal0~11\ & (((\timecalc|add1|oobbaad7|s\ & \Equal1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timecalc|add1|oobbaad3|s~combout\,
	datab => \Equal0~11\,
	datac => \timecalc|add1|oobbaad7|s\,
	datad => \Equal1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i~5_combout\);

-- Location: LC_X4_Y7_N3
\i[2]\ : maxv_lcell
-- Equation(s):
-- i(2) = DFFEAS((\i~5_combout\) # ((!\Equal1~0\ & (!\Equal0~11\ & \timecalc|add1|oobbaad11|s\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \Equal1~0\,
	datab => \Equal0~11\,
	datac => \i~5_combout\,
	datad => \timecalc|add1|oobbaad11|s\,
	aclr => GND,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(2));

-- Location: LC_X4_Y7_N6
\i[3]~7\ : maxv_lcell
-- Equation(s):
-- \i[3]~7_combout\ = (\timecalc|add1|oobbaad4|s\ & ((\Equal0~11\) # ((\timecalc|add1|oobbaad8|s\ & \Equal1~0\)))) # (!\timecalc|add1|oobbaad4|s\ & (((\timecalc|add1|oobbaad8|s\ & \Equal1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timecalc|add1|oobbaad4|s\,
	datab => \Equal0~11\,
	datac => \timecalc|add1|oobbaad8|s\,
	datad => \Equal1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i[3]~7_combout\);

-- Location: LC_X4_Y7_N7
\i[3]\ : maxv_lcell
-- Equation(s):
-- i(3) = DFFEAS(((\i[0]~0_combout\ & ((\i[3]~7_combout\))) # (!\i[0]~0_combout\ & (i(3)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => \i[0]~0_combout\,
	datac => i(3),
	datad => \i[3]~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(3));

-- Location: LC_X4_Y7_N4
\i~3\ : maxv_lcell
-- Equation(s):
-- \i~3_combout\ = (\Equal0~11\ & (\timecalc|add1|oobbaad2|s~combout\)) # (!\Equal0~11\ & (((\timecalc|add1|oobbaad6|s\ & \Equal1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timecalc|add1|oobbaad2|s~combout\,
	datab => \Equal0~11\,
	datac => \timecalc|add1|oobbaad6|s\,
	datad => \Equal1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i~3_combout\);

-- Location: LC_X4_Y7_N9
\i[1]\ : maxv_lcell
-- Equation(s):
-- i(1) = DFFEAS((\i~3_combout\) # ((!\Equal1~0\ & (!\Equal0~11\ & \timecalc|add1|oobbaad10|s\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \i[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \Equal1~0\,
	datab => \Equal0~11\,
	datac => \i~3_combout\,
	datad => \timecalc|add1|oobbaad10|s\,
	aclr => GND,
	ena => \i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(1));

-- Location: LC_X10_Y6_N3
\display|data_dis[0]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(0) = DFFEAS(i(0) $ (((i(3) & ((i(2)) # (i(1)))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => i(0),
	datab => i(2),
	datac => i(3),
	datad => i(1),
	aclr => GND,
	ena => \display|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(0));

-- Location: LC_X12_Y6_N2
\display|cmd_position[0]\ : maxv_lcell
-- Equation(s):
-- \display|Selector7~1\ = (\display|lcd\(0) & (((!\display|Selector8~0_combout\ & D1_cmd_position[0])) # (!\display|state~26_combout\))) # (!\display|lcd\(0) & (!\display|Selector8~0_combout\ & (D1_cmd_position[0])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd\(0),
	datab => \display|Selector8~0_combout\,
	datac => write_column(0),
	datad => \display|state~26_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector7~1\,
	regout => \display|cmd_position\(0));

-- Location: LC_X12_Y6_N5
\display|lcd[0]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(0) = DFFEAS((\display|Selector7~0_combout\) # ((\display|Selector7~1\) # ((\display|data_dis\(0) & !\display|Selector3~2\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \lcdreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|Selector7~0_combout\,
	datab => \display|data_dis\(0),
	datac => \display|Selector3~2\,
	datad => \display|Selector7~1\,
	aclr => GND,
	ena => \lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(0));

-- Location: LC_X10_Y6_N6
\display|data_dis[1]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(1) = DFFEAS((i(0) & (((i(1))))) # (!i(0) & ((i(3) & (i(2) & !i(1))) # (!i(3) & ((i(1)))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => i(0),
	datab => i(2),
	datac => i(3),
	datad => i(1),
	aclr => GND,
	ena => \display|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(1));

-- Location: LC_X12_Y6_N3
\display|cmd_position[1]\ : maxv_lcell
-- Equation(s):
-- \display|Selector6~0\ = (\display|lcd\(1) & (((!\display|Selector8~0_combout\ & D1_cmd_position[1])) # (!\display|state~26_combout\))) # (!\display|lcd\(1) & (!\display|Selector8~0_combout\ & (D1_cmd_position[1])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd\(1),
	datab => \display|Selector8~0_combout\,
	datac => write_column(1),
	datad => \display|state~26_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector6~0\,
	regout => \display|cmd_position\(1));

-- Location: LC_X12_Y6_N4
\display|lcd[1]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(1) = DFFEAS(((\display|Selector6~0\) # ((\display|data_dis\(1) & !\display|Selector3~2\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \lcdreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => \display|data_dis\(1),
	datac => \display|Selector3~2\,
	datad => \display|Selector6~0\,
	aclr => GND,
	ena => \lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(1));

-- Location: LC_X12_Y5_N8
\display|Selector5~1\ : maxv_lcell
-- Equation(s):
-- \display|Selector5~1_combout\ = (!\display|count_cmd\(0) & (\display|count_cmd\(1) $ (((\display|count_cmd\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1144",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(1),
	datad => \display|count_cmd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector5~1_combout\);

-- Location: LC_X10_Y6_N8
\display|data_dis[2]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(2) = DFFEAS((i(2) & ((i(0)) # ((i(1)) # (!i(3))))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => i(0),
	datab => i(2),
	datac => i(3),
	datad => i(1),
	aclr => GND,
	ena => \display|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(2));

-- Location: LC_X11_Y5_N0
\display|Selector5~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector5~0_combout\ = (\display|state~26_combout\ & (((\display|data_dis\(2) & !\display|Selector3~2\)))) # (!\display|state~26_combout\ & ((\display|lcd\(2)) # ((\display|data_dis\(2) & !\display|Selector3~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|state~26_combout\,
	datab => \display|lcd\(2),
	datac => \display|data_dis\(2),
	datad => \display|Selector3~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector5~0_combout\);

-- Location: LC_X11_Y5_N1
\display|lcd[2]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(2) = DFFEAS((\display|Selector5~0_combout\) # ((\display|Selector5~1_combout\ & ((\display|state~27_combout\) # (!\display|Selector8~1_combout\)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \lcdreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|Selector8~1_combout\,
	datab => \display|Selector5~1_combout\,
	datac => \display|Selector5~0_combout\,
	datad => \display|state~27_combout\,
	aclr => GND,
	ena => \lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(2));

-- Location: LC_X12_Y5_N9
\display|Selector4~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector4~0_combout\ = (!\display|count_cmd\(0) & (!\display|count_cmd\(2) & ((!\display|Selector8~1_combout\) # (!\display|state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(0),
	datab => \display|count_cmd\(2),
	datac => \display|state.S0~regout\,
	datad => \display|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector4~0_combout\);

-- Location: LC_X10_Y6_N4
\display|data_dis[3]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(3) = DFFEAS(((!i(1) & (i(3) & !i(2)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => i(1),
	datac => i(3),
	datad => i(2),
	aclr => GND,
	ena => \display|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(3));

-- Location: LC_X10_Y6_N0
\display|Selector4~1\ : maxv_lcell
-- Equation(s):
-- \display|Selector4~1_combout\ = (\display|data_dis\(3) & ((\display|state.S7~regout\) # ((\display|state.S6~regout\) # (\display|state.S8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|data_dis\(3),
	datab => \display|state.S7~regout\,
	datac => \display|state.S6~regout\,
	datad => \display|state.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector4~1_combout\);

-- Location: LC_X11_Y5_N3
\display|lcd[3]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(3) = DFFEAS((\display|Selector4~0_combout\) # ((\display|Selector4~1_combout\) # ((\display|lcd\(3) & !\display|state~26_combout\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \lcdreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd\(3),
	datab => \display|Selector4~0_combout\,
	datac => \display|Selector4~1_combout\,
	datad => \display|state~26_combout\,
	aclr => GND,
	ena => \lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(3));

-- Location: LC_X10_Y6_N9
\display|data_dis[4]\ : maxv_lcell
-- Equation(s):
-- \display|data_dis\(4) = DFFEAS((((!i(1) & !i(2))) # (!i(3))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|state~30_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datab => i(1),
	datac => i(3),
	datad => i(2),
	aclr => GND,
	ena => \display|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|data_dis\(4));

-- Location: LC_X11_Y6_N7
\display|Selector3~3\ : maxv_lcell
-- Equation(s):
-- \display|Selector3~3_combout\ = (\display|Selector3~2\ & (!\display|count_cmd\(2) & ((\display|LessThan0~0_combout\)))) # (!\display|Selector3~2\ & (((\display|data_dis\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|count_cmd\(2),
	datab => \display|Selector3~2\,
	datac => \display|data_dis\(4),
	datad => \display|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector3~3_combout\);

-- Location: LC_X11_Y6_N6
\display|lcd[4]~0\ : maxv_lcell
-- Equation(s):
-- \display|lcd[4]~0_combout\ = (!\display|state.S9~regout\ & (\lcdreset~combout\ & ((\display|state.S0~regout\) # (\display|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|state.S9~regout\,
	datab => \display|state.S0~regout\,
	datac => \lcdreset~combout\,
	datad => \display|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|lcd[4]~0_combout\);

-- Location: LC_X11_Y6_N8
\display|lcd[4]\ : maxv_lcell
-- Equation(s):
-- \display|Selector3~4\ = (!\display|state.S4~regout\ & (!\display|state.S5~regout\ & (!\display|state.S3~regout\ & \display|Selector3~3_combout\)))
-- \display|lcd\(4) = DFFEAS(\display|Selector3~4\, GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|lcd[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state.S4~regout\,
	datab => \display|state.S5~regout\,
	datac => \display|state.S3~regout\,
	datad => \display|Selector3~3_combout\,
	aclr => GND,
	ena => \display|lcd[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector3~4\,
	regout => \display|lcd\(4));

-- Location: LC_X11_Y6_N9
\display|lcd[5]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(5) = DFFEAS((((\display|Selector3~4\))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \display|lcd[4]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	datad => \display|Selector3~4\,
	aclr => GND,
	ena => \display|lcd[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(5));

-- Location: LC_X11_Y5_N5
\display|lcd[6]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(6) = DFFEAS((\display|lcd\(6) & (((!\display|Selector3~2\ & !\display|data_dis\(4))) # (!\display|state~26_combout\))) # (!\display|lcd\(6) & (!\display|Selector3~2\ & (!\display|data_dis\(4)))), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), 
-- VCC, , \lcdreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ab",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|lcd\(6),
	datab => \display|Selector3~2\,
	datac => \display|data_dis\(4),
	datad => \display|state~26_combout\,
	aclr => GND,
	ena => \lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(6));

-- Location: LC_X12_Y6_N7
\display|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \display|Selector0~0_combout\ = (\display|count_cmd\(0) & (\display|count_cmd\(1) & ((\display|state~27_combout\) # (!\display|Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \display|Selector8~1_combout\,
	datab => \display|count_cmd\(0),
	datac => \display|count_cmd\(1),
	datad => \display|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \display|Selector0~0_combout\);

-- Location: LC_X12_Y6_N1
\display|lcd[7]\ : maxv_lcell
-- Equation(s):
-- \display|lcd\(7) = DFFEAS(((\display|Selector0~0_combout\) # ((!\display|state~26_combout\ & \display|lcd\(7)))) # (!\display|Selector8~0_combout\), GLOBAL(\ondded|Q1:15:dbtwox|outclk~combout\), VCC, , \lcdreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7f3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ondded|Q1:15:dbtwox|outclk~combout\,
	dataa => \display|state~26_combout\,
	datab => \display|Selector8~0_combout\,
	datac => \display|Selector0~0_combout\,
	datad => \display|lcd\(7),
	aclr => GND,
	ena => \lcdreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \display|lcd\(7));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad1|ALT_INV_ss~combout\,
	oe => VCC,
	padio => ww_z1(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad2|s~combout\,
	oe => VCC,
	padio => ww_z1(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad3|s~combout\,
	oe => VCC,
	padio => ww_z1(2));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad4|s\,
	oe => VCC,
	padio => ww_z1(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad5|s\,
	oe => VCC,
	padio => ww_z1(4));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad6|s\,
	oe => VCC,
	padio => ww_z1(5));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad7|s\,
	oe => VCC,
	padio => ww_z1(6));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad8|s\,
	oe => VCC,
	padio => ww_z1(7));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad9|s\,
	oe => VCC,
	padio => ww_z1(8));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad10|s\,
	oe => VCC,
	padio => ww_z1(9));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \timecalc|add1|oobbaad11|s\,
	oe => VCC,
	padio => ww_z1(10));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rw~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd_rw);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd_en~regout\,
	oe => VCC,
	padio => ww_lcd_en);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd_rs~regout\,
	oe => VCC,
	padio => ww_lcd_rs);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(0),
	oe => VCC,
	padio => ww_lcd1(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(1),
	oe => VCC,
	padio => ww_lcd1(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(2),
	oe => VCC,
	padio => ww_lcd1(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(3),
	oe => VCC,
	padio => ww_lcd1(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(4),
	oe => VCC,
	padio => ww_lcd1(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(5),
	oe => VCC,
	padio => ww_lcd1(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(6),
	oe => VCC,
	padio => ww_lcd1(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \display|lcd\(7),
	oe => VCC,
	padio => ww_lcd1(7));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b11~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_b11);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b12~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_b12);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\go~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dffg|Q~regout\,
	oe => VCC,
	padio => ww_go);
END structure;


