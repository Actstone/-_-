-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "06/27/2018 16:01:25"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	led IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	q : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END led;

-- Design Ports Information
-- q[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF led IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~4_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \q1~8_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \q1~7_combout\ : std_logic;
SIGNAL \q1[3]~6_combout\ : std_logic;
SIGNAL \q1[3]~5_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \q1~2_combout\ : std_logic;
SIGNAL \Selector3~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \count[0]~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \present.s0~q\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \count[0]~2_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \present.s1~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \present.s2~q\ : std_logic;
SIGNAL \q1[3]~4_combout\ : std_logic;
SIGNAL \q1~3_combout\ : std_logic;
SIGNAL \q1~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \q1~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \count[0]~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \present.s3~0_combout\ : std_logic;
SIGNAL \present.s3~q\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL q1 : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N9
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q1(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q1(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q1(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q1(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q1(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q1(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q1(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q1(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y19_N22
\count[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~4_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~4_combout\);

-- Location: LCCOMB_X23_Y19_N26
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\present.s0~q\ & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present.s0~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X23_Y19_N16
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\present.s3~q\ & (!\Equal2~0_combout\ & q1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present.s3~q\,
	datac => \Equal2~0_combout\,
	datad => q1(5),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (q1(6) & ((\present.s3~q\) # (\present.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present.s3~q\,
	datac => q1(6),
	datad => \present.s1~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X23_Y19_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Equal2~0_combout\ & (((\present.s3~q\)))) # (!\Equal2~0_combout\ & (\present.s2~q\ & (q1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s2~q\,
	datab => q1(4),
	datac => \Equal2~0_combout\,
	datad => \present.s3~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Equal1~0_combout\ & (\present.s1~q\)) # (!\Equal1~0_combout\ & (((q1(0) & !\present.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s1~q\,
	datab => q1(0),
	datac => \present.s0~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~2_combout\) # ((\Selector0~0_combout\) # ((\Selector0~1_combout\) # (\count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \Selector0~0_combout\,
	datac => \Selector0~1_combout\,
	datad => \count[0]~0_combout\,
	combout => \Selector0~3_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X23_Y19_N13
\q1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(7));

-- Location: LCCOMB_X24_Y19_N16
\q1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1~8_combout\ = (q1(7) & !\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(7),
	datad => \Equal2~0_combout\,
	combout => \q1~8_combout\);

-- Location: LCCOMB_X23_Y19_N6
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (q1(7) & ((\Selector2~2_combout\) # ((\present.s1~q\ & \q1~7_combout\)))) # (!q1(7) & (\present.s1~q\ & ((\q1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(7),
	datab => \present.s1~q\,
	datac => \Selector2~2_combout\,
	datad => \q1~7_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~0_combout\) # ((\Selector1~1_combout\) # ((\present.s2~q\ & \q1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s2~q\,
	datab => \Selector1~0_combout\,
	datac => \q1~8_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X23_Y19_N15
\q1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(6));

-- Location: LCCOMB_X23_Y19_N24
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (q1(4) & ((\present.s3~q\) # ((q1(6) & \present.s2~q\)))) # (!q1(4) & (((q1(6) & \present.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(4),
	datab => \present.s3~q\,
	datac => q1(6),
	datad => \present.s2~q\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X23_Y19_N2
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (q1(6) & ((\Selector2~2_combout\) # ((\Selector2~3_combout\ & !\Equal2~0_combout\)))) # (!q1(6) & (\Selector2~3_combout\ & ((!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(6),
	datab => \Selector2~3_combout\,
	datac => \Selector2~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\Selector2~4_combout\) # ((\present.s1~q\ & (!\Equal1~0_combout\ & q1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s1~q\,
	datab => \Equal1~0_combout\,
	datac => q1(4),
	datad => \Selector2~4_combout\,
	combout => \Selector2~5_combout\);

-- Location: FF_X23_Y19_N1
\q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(5));

-- Location: LCCOMB_X23_Y19_N20
\q1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1~7_combout\ = (q1(5) & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(5),
	datad => \Equal1~0_combout\,
	combout => \q1~7_combout\);

-- Location: LCCOMB_X26_Y19_N30
\q1[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1[3]~6_combout\ = (\present.s3~q\) # ((!\present.s2~q\ & \present.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s3~q\,
	datab => \present.s2~q\,
	datad => \present.s1~q\,
	combout => \q1[3]~6_combout\);

-- Location: LCCOMB_X25_Y19_N10
\q1[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1[3]~5_combout\ = (\present.s3~q\) # ((\present.s2~q\ & !\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s3~q\,
	datab => \present.s2~q\,
	datad => \Equal2~0_combout\,
	combout => \q1[3]~5_combout\);

-- Location: LCCOMB_X25_Y19_N22
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\q1[3]~6_combout\ & (((\q1~8_combout\ & \q1[3]~5_combout\)))) # (!\q1[3]~6_combout\ & ((q1(5)) # ((!\q1[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1[3]~6_combout\,
	datab => q1(5),
	datac => \q1~8_combout\,
	datad => \q1[3]~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X26_Y19_N18
\q1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1~2_combout\ = (q1(3) & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q1(3),
	datad => \Equal1~0_combout\,
	combout => \q1~2_combout\);

-- Location: LCCOMB_X25_Y19_N24
Selector3 : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~combout\ = (\q1[3]~4_combout\ & (((\Selector3~0_combout\)))) # (!\q1[3]~4_combout\ & ((\Selector3~0_combout\ & (\q1~7_combout\)) # (!\Selector3~0_combout\ & ((\q1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1[3]~4_combout\,
	datab => \q1~7_combout\,
	datac => \Selector3~0_combout\,
	datad => \q1~2_combout\,
	combout => \Selector3~combout\);

-- Location: FF_X25_Y19_N25
\q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(4));

-- Location: LCCOMB_X25_Y19_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!q1(4) & (!q1(5) & (!q1(6) & !q1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(4),
	datab => q1(5),
	datac => q1(6),
	datad => q1(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~0_combout\ = (!\present.s0~q\ & (\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present.s0~q\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \count[0]~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\Selector2~2_combout\ & (!\count[0]~0_combout\ & ((!\Equal2~0_combout\) # (!\present.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \present.s3~q\,
	datac => \Equal2~0_combout\,
	datad => \count[0]~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X23_Y19_N31
\present.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.s0~q\);

-- Location: LCCOMB_X24_Y19_N0
\count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = (\present.s1~q\) # (!\present.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \present.s1~q\,
	datad => \present.s0~q\,
	combout => \count[0]~1_combout\);

-- Location: LCCOMB_X25_Y19_N16
\count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~2_combout\ = (\q1[3]~4_combout\ & ((\Equal2~0_combout\) # ((\Equal1~0_combout\ & \count[0]~1_combout\)))) # (!\q1[3]~4_combout\ & (\Equal1~0_combout\ & (\count[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1[3]~4_combout\,
	datab => \Equal1~0_combout\,
	datac => \count[0]~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \count[0]~2_combout\);

-- Location: LCCOMB_X25_Y19_N28
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\count[0]~2_combout\ & (count(0) $ (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(1),
	datad => \count[0]~2_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X25_Y19_N29
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X24_Y19_N8
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (!\count[0]~2_combout\ & (count(2) $ (((count(0) & count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(2),
	datad => \count[0]~2_combout\,
	combout => \Selector9~2_combout\);

-- Location: FF_X24_Y19_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~2_combout\,
	ena => \count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X24_Y19_N26
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (count(0) & count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	datad => count(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X25_Y19_N14
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\count[0]~2_combout\ & (count(3) $ (((\Add0~0_combout\ & count(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => count(2),
	datac => count(3),
	datad => \count[0]~2_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X25_Y19_N15
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X24_Y19_N28
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (count(0) & (count(2) & (!count(3) & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(3),
	datad => count(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X25_Y19_N2
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (!\present.s0~q\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \present.s0~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X25_Y19_N30
\Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = (\Equal1~0_combout\ & ((\Selector13~2_combout\))) # (!\Equal1~0_combout\ & (\present.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \present.s1~q\,
	datad => \Selector13~2_combout\,
	combout => \Selector13~4_combout\);

-- Location: FF_X25_Y19_N31
\present.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.s1~q\);

-- Location: LCCOMB_X26_Y19_N16
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Equal2~0_combout\ & (\present.s1~q\ & ((\Equal1~0_combout\)))) # (!\Equal2~0_combout\ & ((\present.s2~q\) # ((\present.s1~q\ & \Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \present.s1~q\,
	datac => \present.s2~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X26_Y19_N17
\present.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.s2~q\);

-- Location: LCCOMB_X26_Y19_N4
\q1[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1[3]~4_combout\ = (\present.s2~q\) # (\present.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present.s2~q\,
	datad => \present.s3~q\,
	combout => \q1[3]~4_combout\);

-- Location: LCCOMB_X24_Y19_N30
\q1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1~3_combout\ = (q1(4) & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q1(4),
	datad => \Equal1~0_combout\,
	combout => \q1~3_combout\);

-- Location: LCCOMB_X25_Y19_N8
\q1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1~1_combout\ = (q1(0) & !\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => q1(0),
	datad => \Equal2~0_combout\,
	combout => \q1~1_combout\);

-- Location: LCCOMB_X26_Y19_N26
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\present.s3~q\ & (q1(2) & !\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s3~q\,
	datab => q1(2),
	datac => \Equal2~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\present.s1~q\ & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present.s1~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector13~3_combout\);

-- Location: LCCOMB_X26_Y19_N2
\q1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1~0_combout\ = (q1(2) & !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q1(2),
	datad => \Equal1~0_combout\,
	combout => \q1~0_combout\);

-- Location: LCCOMB_X26_Y19_N20
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (q1(0) & ((\Selector13~3_combout\) # ((!\present.s0~q\ & \q1~0_combout\)))) # (!q1(0) & (!\present.s0~q\ & ((\q1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(0),
	datab => \present.s0~q\,
	datac => \Selector13~3_combout\,
	datad => \q1~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X26_Y19_N28
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~0_combout\) # ((\Selector6~1_combout\) # ((\q1~1_combout\ & \present.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1~1_combout\,
	datab => \present.s2~q\,
	datac => \Selector6~0_combout\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X26_Y19_N29
\q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(1));

-- Location: LCCOMB_X26_Y19_N0
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (q1(3) & ((\present.s3~q\) # ((q1(1) & \present.s2~q\)))) # (!q1(3) & (q1(1) & (\present.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(3),
	datab => q1(1),
	datac => \present.s2~q\,
	datad => \present.s3~q\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X26_Y19_N10
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\present.s0~q\ & (\Selector5~2_combout\ & (!\Equal2~0_combout\))) # (!\present.s0~q\ & ((\q1~2_combout\) # ((\Selector5~2_combout\ & !\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s0~q\,
	datab => \Selector5~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \q1~2_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X26_Y19_N14
\Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\Selector5~3_combout\) # ((\present.s1~q\ & (!\Equal1~0_combout\ & q1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s1~q\,
	datab => \Equal1~0_combout\,
	datac => q1(1),
	datad => \Selector5~3_combout\,
	combout => \Selector5~4_combout\);

-- Location: FF_X26_Y19_N15
\q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(2));

-- Location: LCCOMB_X25_Y19_N4
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\q1[3]~6_combout\ & (((\q1~1_combout\ & \q1[3]~5_combout\)))) # (!\q1[3]~6_combout\ & ((q1(2)) # ((!\q1[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1[3]~6_combout\,
	datab => q1(2),
	datac => \q1~1_combout\,
	datad => \q1[3]~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X25_Y19_N26
Selector4 : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~combout\ = (\q1[3]~4_combout\ & (((\Selector4~0_combout\)))) # (!\q1[3]~4_combout\ & ((\Selector4~0_combout\ & (\q1~3_combout\)) # (!\Selector4~0_combout\ & ((\q1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1[3]~4_combout\,
	datab => \q1~3_combout\,
	datac => \Selector4~0_combout\,
	datad => \q1~0_combout\,
	combout => \Selector4~combout\);

-- Location: FF_X25_Y19_N27
\q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(3));

-- Location: LCCOMB_X25_Y19_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!q1(3) & (!q1(0) & (!q1(2) & !q1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(3),
	datab => q1(0),
	datac => q1(2),
	datad => q1(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y19_N18
\count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~3_combout\ = (!\rst~input_o\ & (((\present.s0~q\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \rst~input_o\,
	datac => \present.s0~q\,
	datad => \Equal0~0_combout\,
	combout => \count[0]~3_combout\);

-- Location: FF_X24_Y19_N23
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~4_combout\,
	ena => \count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X24_Y19_N24
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (count(0) & (!count(2) & (!count(3) & count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(3),
	datad => count(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X26_Y19_N6
\present.s3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present.s3~0_combout\ = (\Equal2~0_combout\ & ((\present.s2~q\))) # (!\Equal2~0_combout\ & (\present.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \present.s3~q\,
	datad => \present.s2~q\,
	combout => \present.s3~0_combout\);

-- Location: FF_X26_Y19_N7
\present.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \present.s3~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present.s3~q\);

-- Location: LCCOMB_X26_Y19_N24
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\present.s3~q\ & ((q1(1)) # ((\present.s2~q\ & q1(3))))) # (!\present.s3~q\ & (\present.s2~q\ & (q1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present.s3~q\,
	datab => \present.s2~q\,
	datac => q1(3),
	datad => q1(1),
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X24_Y19_N6
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\present.s1~q\ & ((q1(7)) # (\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => q1(7),
	datac => \present.s1~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X25_Y19_N20
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector13~2_combout\ & ((\Equal1~0_combout\) # (q1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => q1(1),
	datad => \Selector13~2_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X25_Y19_N0
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\Selector7~1_combout\) # ((\Selector7~0_combout\) # ((\Selector7~2_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \Selector7~1_combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~3_combout\);

-- Location: FF_X25_Y19_N1
\q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q1(0));

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;
END structure;


