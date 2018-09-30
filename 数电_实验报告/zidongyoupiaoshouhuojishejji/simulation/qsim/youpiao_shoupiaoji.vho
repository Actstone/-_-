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

-- DATE "07/07/2018 16:11:16"

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

ENTITY 	piaojiasheding IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	rd1 : IN std_logic;
	q : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END piaojiasheding;

-- Design Ports Information
-- q[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd1	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF piaojiasheding IS
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
SIGNAL ww_en : std_logic;
SIGNAL ww_rd1 : std_logic;
SIGNAL ww_q : std_logic_vector(4 DOWNTO 0);
SIGNAL \rd1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \qn[0]~5_combout\ : std_logic;
SIGNAL \rd1~input_o\ : std_logic;
SIGNAL \rd1~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \qn[0]~6\ : std_logic;
SIGNAL \qn[1]~7_combout\ : std_logic;
SIGNAL \qn[1]~8\ : std_logic;
SIGNAL \qn[2]~9_combout\ : std_logic;
SIGNAL \qn[2]~10\ : std_logic;
SIGNAL \qn[3]~11_combout\ : std_logic;
SIGNAL \qn[3]~12\ : std_logic;
SIGNAL \qn[4]~13_combout\ : std_logic;
SIGNAL qn : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_en~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_rd1 <= rd1;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rd1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rd1~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qn(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qn(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qn(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qn(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => qn(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

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

-- Location: LCCOMB_X1_Y7_N6
\qn[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \qn[0]~5_combout\ = qn(0) $ (VCC)
-- \qn[0]~6\ = CARRY(qn(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => qn(0),
	datad => VCC,
	combout => \qn[0]~5_combout\,
	cout => \qn[0]~6\);

-- Location: IOIBUF_X0_Y11_N15
\rd1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd1,
	o => \rd1~input_o\);

-- Location: CLKCTRL_G4
\rd1~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rd1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rd1~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N22
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X1_Y7_N7
\qn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qn[0]~5_combout\,
	clrn => \rd1~inputclkctrl_outclk\,
	ena => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qn(0));

-- Location: LCCOMB_X1_Y7_N8
\qn[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \qn[1]~7_combout\ = (qn(1) & (!\qn[0]~6\)) # (!qn(1) & ((\qn[0]~6\) # (GND)))
-- \qn[1]~8\ = CARRY((!\qn[0]~6\) # (!qn(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qn(1),
	datad => VCC,
	cin => \qn[0]~6\,
	combout => \qn[1]~7_combout\,
	cout => \qn[1]~8\);

-- Location: FF_X1_Y7_N9
\qn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qn[1]~7_combout\,
	clrn => \rd1~inputclkctrl_outclk\,
	ena => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qn(1));

-- Location: LCCOMB_X1_Y7_N10
\qn[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \qn[2]~9_combout\ = (qn(2) & (\qn[1]~8\ $ (GND))) # (!qn(2) & (!\qn[1]~8\ & VCC))
-- \qn[2]~10\ = CARRY((qn(2) & !\qn[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qn(2),
	datad => VCC,
	cin => \qn[1]~8\,
	combout => \qn[2]~9_combout\,
	cout => \qn[2]~10\);

-- Location: FF_X1_Y7_N11
\qn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qn[2]~9_combout\,
	clrn => \rd1~inputclkctrl_outclk\,
	ena => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qn(2));

-- Location: LCCOMB_X1_Y7_N12
\qn[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \qn[3]~11_combout\ = (qn(3) & (!\qn[2]~10\)) # (!qn(3) & ((\qn[2]~10\) # (GND)))
-- \qn[3]~12\ = CARRY((!\qn[2]~10\) # (!qn(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => qn(3),
	datad => VCC,
	cin => \qn[2]~10\,
	combout => \qn[3]~11_combout\,
	cout => \qn[3]~12\);

-- Location: FF_X1_Y7_N13
\qn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qn[3]~11_combout\,
	clrn => \rd1~inputclkctrl_outclk\,
	ena => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qn(3));

-- Location: LCCOMB_X1_Y7_N14
\qn[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \qn[4]~13_combout\ = qn(4) $ (!\qn[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => qn(4),
	cin => \qn[3]~12\,
	combout => \qn[4]~13_combout\);

-- Location: FF_X1_Y7_N15
\qn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \qn[4]~13_combout\,
	clrn => \rd1~inputclkctrl_outclk\,
	ena => \ALT_INV_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => qn(4));

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;
END structure;


