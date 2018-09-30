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

-- DATE "07/13/2018 22:19:45"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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

ENTITY 	notetabs IS
    PORT (
	clk : IN std_logic;
	toneindex : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END notetabs;

-- Design Ports Information
-- toneindex[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toneindex[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toneindex[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toneindex[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF notetabs IS
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
SIGNAL ww_toneindex : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \toneindex[0]~output_o\ : std_logic;
SIGNAL \toneindex[1]~output_o\ : std_logic;
SIGNAL \toneindex[2]~output_o\ : std_logic;
SIGNAL \toneindex[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~18_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter[1]~6_combout\ : std_logic;
SIGNAL \counter[1]~7\ : std_logic;
SIGNAL \counter[2]~8_combout\ : std_logic;
SIGNAL \counter[2]~9\ : std_logic;
SIGNAL \counter[3]~10_combout\ : std_logic;
SIGNAL \counter[3]~11\ : std_logic;
SIGNAL \counter[4]~12_combout\ : std_logic;
SIGNAL \counter[4]~13\ : std_logic;
SIGNAL \counter[5]~14_combout\ : std_logic;
SIGNAL \counter[5]~15\ : std_logic;
SIGNAL \counter[6]~16_combout\ : std_logic;
SIGNAL \U1|Mux3~2_combout\ : std_logic;
SIGNAL \U1|Mux3~1_combout\ : std_logic;
SIGNAL \U1|Mux3~3_combout\ : std_logic;
SIGNAL \U1|Mux3~0_combout\ : std_logic;
SIGNAL \U1|Mux3~4_combout\ : std_logic;
SIGNAL \U1|Mux3~5_combout\ : std_logic;
SIGNAL \U1|Mux3~6_combout\ : std_logic;
SIGNAL \U1|Mux2~4_combout\ : std_logic;
SIGNAL \U1|Mux2~2_combout\ : std_logic;
SIGNAL \U1|Mux2~3_combout\ : std_logic;
SIGNAL \U1|Mux2~1_combout\ : std_logic;
SIGNAL \U1|Mux2~5_combout\ : std_logic;
SIGNAL \U1|Mux2~6_combout\ : std_logic;
SIGNAL \U1|Mux2~0_combout\ : std_logic;
SIGNAL \U1|Mux2~7_combout\ : std_logic;
SIGNAL \U1|Mux1~1_combout\ : std_logic;
SIGNAL \U1|Mux1~5_combout\ : std_logic;
SIGNAL \U1|Mux1~3_combout\ : std_logic;
SIGNAL \U1|Mux1~2_combout\ : std_logic;
SIGNAL \U1|Mux1~4_combout\ : std_logic;
SIGNAL \U1|Mux1~6_combout\ : std_logic;
SIGNAL \U1|Mux1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \U1|Mux1~7_combout\ : std_logic;
SIGNAL \U1|Mux0~6_combout\ : std_logic;
SIGNAL \U1|Mux0~1_combout\ : std_logic;
SIGNAL \U1|Mux0~2_combout\ : std_logic;
SIGNAL \U1|Mux0~3_combout\ : std_logic;
SIGNAL \U1|Mux0~4_combout\ : std_logic;
SIGNAL \U1|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Mux0~5_combout\ : std_logic;
SIGNAL \U1|Mux0~7_combout\ : std_logic;
SIGNAL counter : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
toneindex <= ww_toneindex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N9
\toneindex[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux3~6_combout\,
	devoe => ww_devoe,
	o => \toneindex[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\toneindex[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux2~7_combout\,
	devoe => ww_devoe,
	o => \toneindex[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\toneindex[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux1~7_combout\,
	devoe => ww_devoe,
	o => \toneindex[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\toneindex[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux0~7_combout\,
	devoe => ww_devoe,
	o => \toneindex[3]~output_o\);

-- Location: IOIBUF_X34_Y12_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X26_Y21_N28
\counter[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~18_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~18_combout\);

-- Location: LCCOMB_X26_Y21_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(0) & (!counter(4) & (counter(6) & !counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(4),
	datac => counter(6),
	datad => counter(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y21_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(1) & (counter(3) & (!counter(2) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(3),
	datac => counter(2),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X26_Y21_N29
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~18_combout\,
	clrn => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X26_Y21_N12
\counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~6_combout\ = (counter(1) & (counter(0) $ (VCC))) # (!counter(1) & (counter(0) & VCC))
-- \counter[1]~7\ = CARRY((counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datad => VCC,
	combout => \counter[1]~6_combout\,
	cout => \counter[1]~7\);

-- Location: FF_X26_Y21_N13
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~6_combout\,
	clrn => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X26_Y21_N14
\counter[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~8_combout\ = (counter(2) & (!\counter[1]~7\)) # (!counter(2) & ((\counter[1]~7\) # (GND)))
-- \counter[2]~9\ = CARRY((!\counter[1]~7\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~7\,
	combout => \counter[2]~8_combout\,
	cout => \counter[2]~9\);

-- Location: FF_X26_Y21_N15
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~8_combout\,
	clrn => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X26_Y21_N16
\counter[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~10_combout\ = (counter(3) & (\counter[2]~9\ $ (GND))) # (!counter(3) & (!\counter[2]~9\ & VCC))
-- \counter[3]~11\ = CARRY((counter(3) & !\counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~9\,
	combout => \counter[3]~10_combout\,
	cout => \counter[3]~11\);

-- Location: FF_X26_Y21_N17
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~10_combout\,
	clrn => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X26_Y21_N18
\counter[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~12_combout\ = (counter(4) & (!\counter[3]~11\)) # (!counter(4) & ((\counter[3]~11\) # (GND)))
-- \counter[4]~13\ = CARRY((!\counter[3]~11\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~11\,
	combout => \counter[4]~12_combout\,
	cout => \counter[4]~13\);

-- Location: FF_X26_Y21_N19
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~12_combout\,
	clrn => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X26_Y21_N20
\counter[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~14_combout\ = (counter(5) & (\counter[4]~13\ $ (GND))) # (!counter(5) & (!\counter[4]~13\ & VCC))
-- \counter[5]~15\ = CARRY((counter(5) & !\counter[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~13\,
	combout => \counter[5]~14_combout\,
	cout => \counter[5]~15\);

-- Location: FF_X26_Y21_N21
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~14_combout\,
	clrn => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X26_Y21_N22
\counter[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~16_combout\ = \counter[5]~15\ $ (counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(6),
	cin => \counter[5]~15\,
	combout => \counter[6]~16_combout\);

-- Location: FF_X26_Y21_N23
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~16_combout\,
	clrn => \ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X26_Y21_N8
\U1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~2_combout\ = (counter(0) & ((counter(3) $ (!counter(2))) # (!counter(5)))) # (!counter(0) & ((counter(3) & ((!counter(2)) # (!counter(5)))) # (!counter(3) & (counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(5),
	datad => counter(2),
	combout => \U1|Mux3~2_combout\);

-- Location: LCCOMB_X26_Y21_N2
\U1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~1_combout\ = (counter(3) & (!counter(2) & (counter(0) $ (counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(5),
	datad => counter(2),
	combout => \U1|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y21_N6
\U1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~3_combout\ = (counter(4) & (((counter(1)) # (!\U1|Mux3~1_combout\)))) # (!counter(4) & (\U1|Mux3~2_combout\ & (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \U1|Mux3~2_combout\,
	datac => counter(1),
	datad => \U1|Mux3~1_combout\,
	combout => \U1|Mux3~3_combout\);

-- Location: LCCOMB_X29_Y21_N20
\U1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~0_combout\ = (counter(0) & (counter(2) & (!counter(5) & !counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(5),
	datad => counter(3),
	combout => \U1|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y21_N10
\U1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~4_combout\ = (counter(0) & (!counter(2) & (counter(5) $ (!counter(3))))) # (!counter(0) & (counter(2) & (counter(5) $ (!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(5),
	datad => counter(3),
	combout => \U1|Mux3~4_combout\);

-- Location: LCCOMB_X29_Y21_N28
\U1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~5_combout\ = (\U1|Mux3~3_combout\ & (((!\U1|Mux3~4_combout\) # (!counter(1))))) # (!\U1|Mux3~3_combout\ & (!\U1|Mux3~0_combout\ & (counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux3~3_combout\,
	datab => \U1|Mux3~0_combout\,
	datac => counter(1),
	datad => \U1|Mux3~4_combout\,
	combout => \U1|Mux3~5_combout\);

-- Location: LCCOMB_X29_Y21_N2
\U1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux3~6_combout\ = (counter(6)) # (\U1|Mux3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(6),
	datad => \U1|Mux3~5_combout\,
	combout => \U1|Mux3~6_combout\);

-- Location: LCCOMB_X29_Y21_N12
\U1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~4_combout\ = (counter(0) & (!counter(3) & (counter(1) $ (counter(5))))) # (!counter(0) & (counter(1) & (counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(5),
	datad => counter(3),
	combout => \U1|Mux2~4_combout\);

-- Location: LCCOMB_X29_Y21_N24
\U1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~2_combout\ = (counter(0) & ((counter(1)) # (counter(5) $ (!counter(3))))) # (!counter(0) & (!counter(1) & ((counter(5)) # (counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(5),
	datad => counter(3),
	combout => \U1|Mux2~2_combout\);

-- Location: LCCOMB_X29_Y21_N30
\U1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~3_combout\ = (counter(0) & (counter(1) $ (((!counter(3)) # (!counter(5)))))) # (!counter(0) & ((counter(1) & (!counter(5) & !counter(3))) # (!counter(1) & (counter(5) & counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(5),
	datad => counter(3),
	combout => \U1|Mux2~3_combout\);

-- Location: LCCOMB_X29_Y21_N18
\U1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~1_combout\ = (!counter(6) & ((counter(2) & ((!counter(4)) # (!counter(0)))) # (!counter(2) & ((counter(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(6),
	datad => counter(4),
	combout => \U1|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y21_N26
\U1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~5_combout\ = (\U1|Mux2~2_combout\ & (((\U1|Mux2~1_combout\)) # (!\U1|Mux2~4_combout\))) # (!\U1|Mux2~2_combout\ & ((\U1|Mux2~3_combout\ & ((!\U1|Mux2~1_combout\))) # (!\U1|Mux2~3_combout\ & (!\U1|Mux2~4_combout\ & \U1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux2~4_combout\,
	datab => \U1|Mux2~2_combout\,
	datac => \U1|Mux2~3_combout\,
	datad => \U1|Mux2~1_combout\,
	combout => \U1|Mux2~5_combout\);

-- Location: LCCOMB_X29_Y21_N4
\U1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~6_combout\ = (\U1|Mux2~4_combout\ & (!\U1|Mux2~3_combout\ & ((\U1|Mux2~2_combout\) # (\U1|Mux2~1_combout\)))) # (!\U1|Mux2~4_combout\ & (((\U1|Mux2~3_combout\ & \U1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux2~4_combout\,
	datab => \U1|Mux2~2_combout\,
	datac => \U1|Mux2~3_combout\,
	datad => \U1|Mux2~1_combout\,
	combout => \U1|Mux2~6_combout\);

-- Location: LCCOMB_X29_Y21_N16
\U1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~0_combout\ = (counter(6) & (((counter(2) & !counter(4))) # (!counter(0)))) # (!counter(6) & (counter(4) & ((counter(0)) # (counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(2),
	datac => counter(6),
	datad => counter(4),
	combout => \U1|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y21_N22
\U1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux2~7_combout\ = \U1|Mux2~6_combout\ $ (((!\U1|Mux2~5_combout\ & !\U1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux2~5_combout\,
	datac => \U1|Mux2~6_combout\,
	datad => \U1|Mux2~0_combout\,
	combout => \U1|Mux2~7_combout\);

-- Location: LCCOMB_X28_Y21_N20
\U1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~1_combout\ = (counter(1) & (counter(0) & ((counter(2)) # (counter(3))))) # (!counter(1) & (counter(2) & (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(0),
	datad => counter(3),
	combout => \U1|Mux1~1_combout\);

-- Location: LCCOMB_X28_Y21_N26
\U1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~5_combout\ = (counter(1) & ((counter(2)) # ((counter(3)) # (!counter(0))))) # (!counter(1) & (counter(0) $ (((!counter(2) & counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(0),
	datad => counter(3),
	combout => \U1|Mux1~5_combout\);

-- Location: LCCOMB_X26_Y21_N26
\U1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~3_combout\ = (counter(2) & ((counter(3) & ((counter(1)))) # (!counter(3) & (counter(0) & !counter(1))))) # (!counter(2) & (counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	datad => counter(2),
	combout => \U1|Mux1~3_combout\);

-- Location: LCCOMB_X26_Y21_N4
\U1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~2_combout\ = (counter(1) & (counter(0) $ (((!counter(3) & !counter(2)))))) # (!counter(1) & ((counter(0)) # ((counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(3),
	datac => counter(1),
	datad => counter(2),
	combout => \U1|Mux1~2_combout\);

-- Location: LCCOMB_X26_Y21_N24
\U1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~4_combout\ = (counter(5) & (((counter(4)) # (\U1|Mux1~2_combout\)))) # (!counter(5) & (!\U1|Mux1~3_combout\ & (!counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~3_combout\,
	datab => counter(5),
	datac => counter(4),
	datad => \U1|Mux1~2_combout\,
	combout => \U1|Mux1~4_combout\);

-- Location: LCCOMB_X28_Y21_N8
\U1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~6_combout\ = (counter(4) & ((\U1|Mux1~4_combout\ & ((\U1|Mux1~5_combout\))) # (!\U1|Mux1~4_combout\ & (!\U1|Mux1~1_combout\)))) # (!counter(4) & (((\U1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \U1|Mux1~1_combout\,
	datac => \U1|Mux1~5_combout\,
	datad => \U1|Mux1~4_combout\,
	combout => \U1|Mux1~6_combout\);

-- Location: LCCOMB_X28_Y21_N22
\U1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~0_combout\ = (counter(1) & (((!counter(3))))) # (!counter(1) & (!counter(2) & (counter(0) & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(0),
	datad => counter(3),
	combout => \U1|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y21_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(4) & (counter(6) & !counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datac => counter(6),
	datad => counter(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y21_N2
\U1|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux1~7_combout\ = (counter(6) & (((\U1|Mux1~0_combout\ & \Equal0~0_combout\)))) # (!counter(6) & ((\U1|Mux1~6_combout\) # ((\U1|Mux1~0_combout\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \U1|Mux1~6_combout\,
	datac => \U1|Mux1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \U1|Mux1~7_combout\);

-- Location: LCCOMB_X28_Y21_N16
\U1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~6_combout\ = (counter(2) & (((counter(0)) # (counter(3))))) # (!counter(2) & (counter(1) $ (((counter(0) & !counter(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(2),
	datac => counter(0),
	datad => counter(3),
	combout => \U1|Mux0~6_combout\);

-- Location: LCCOMB_X28_Y21_N10
\U1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~1_combout\ = (counter(2) & ((counter(4)) # ((!counter(0))))) # (!counter(2) & (counter(4) $ (((counter(0) & counter(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(2),
	datac => counter(0),
	datad => counter(5),
	combout => \U1|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y21_N24
\U1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~2_combout\ = (counter(0) & (counter(4) $ ((!counter(2))))) # (!counter(0) & ((counter(4) & ((!counter(5)))) # (!counter(4) & (counter(2) & counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(2),
	datac => counter(0),
	datad => counter(5),
	combout => \U1|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y21_N30
\U1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~3_combout\ = (counter(3) & (((counter(1))) # (!\U1|Mux0~1_combout\))) # (!counter(3) & (((!counter(1) & \U1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~1_combout\,
	datab => counter(3),
	datac => counter(1),
	datad => \U1|Mux0~2_combout\,
	combout => \U1|Mux0~3_combout\);

-- Location: LCCOMB_X28_Y21_N4
\U1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~4_combout\ = (counter(4) & ((counter(2) $ (!counter(0))) # (!counter(5)))) # (!counter(4) & (counter(2) & (!counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(2),
	datac => counter(0),
	datad => counter(5),
	combout => \U1|Mux0~4_combout\);

-- Location: LCCOMB_X28_Y21_N28
\U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~0_combout\ = (counter(0) & (!counter(5) & ((counter(4)) # (counter(2))))) # (!counter(0) & (counter(2) $ (((!counter(4) & counter(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(2),
	datac => counter(0),
	datad => counter(5),
	combout => \U1|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y21_N18
\U1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~5_combout\ = (\U1|Mux0~3_combout\ & ((\U1|Mux0~4_combout\) # ((!counter(1))))) # (!\U1|Mux0~3_combout\ & (((counter(1) & !\U1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~3_combout\,
	datab => \U1|Mux0~4_combout\,
	datac => counter(1),
	datad => \U1|Mux0~0_combout\,
	combout => \U1|Mux0~5_combout\);

-- Location: LCCOMB_X28_Y21_N14
\U1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~7_combout\ = (\Equal0~0_combout\ & (((!counter(6) & \U1|Mux0~5_combout\)) # (!\U1|Mux0~6_combout\))) # (!\Equal0~0_combout\ & (((!counter(6) & \U1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \U1|Mux0~6_combout\,
	datac => counter(6),
	datad => \U1|Mux0~5_combout\,
	combout => \U1|Mux0~7_combout\);

ww_toneindex(0) <= \toneindex[0]~output_o\;

ww_toneindex(1) <= \toneindex[1]~output_o\;

ww_toneindex(2) <= \toneindex[2]~output_o\;

ww_toneindex(3) <= \toneindex[3]~output_o\;
END structure;


