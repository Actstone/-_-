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

-- DATE "06/24/2018 19:25:10"

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

ENTITY 	clk_source IS
    PORT (
	clk_50m : IN std_logic;
	clk : OUT std_logic
	);
END clk_source;

-- Design Ports Information
-- clk	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50m	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_source IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50m : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk_50m~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~output_o\ : std_logic;
SIGNAL \clk_50m~input_o\ : std_logic;
SIGNAL \clk_50m~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~72_combout\ : std_logic;
SIGNAL \counter[1]~24_combout\ : std_logic;
SIGNAL \counter[1]~25\ : std_logic;
SIGNAL \counter[2]~26_combout\ : std_logic;
SIGNAL \counter[2]~27\ : std_logic;
SIGNAL \counter[3]~28_combout\ : std_logic;
SIGNAL \counter[3]~29\ : std_logic;
SIGNAL \counter[4]~30_combout\ : std_logic;
SIGNAL \counter[4]~31\ : std_logic;
SIGNAL \counter[5]~32_combout\ : std_logic;
SIGNAL \counter[5]~33\ : std_logic;
SIGNAL \counter[6]~34_combout\ : std_logic;
SIGNAL \counter[6]~35\ : std_logic;
SIGNAL \counter[7]~36_combout\ : std_logic;
SIGNAL \counter[7]~37\ : std_logic;
SIGNAL \counter[8]~38_combout\ : std_logic;
SIGNAL \counter[8]~39\ : std_logic;
SIGNAL \counter[9]~40_combout\ : std_logic;
SIGNAL \counter[9]~41\ : std_logic;
SIGNAL \counter[10]~42_combout\ : std_logic;
SIGNAL \counter[10]~43\ : std_logic;
SIGNAL \counter[11]~44_combout\ : std_logic;
SIGNAL \counter[11]~45\ : std_logic;
SIGNAL \counter[12]~46_combout\ : std_logic;
SIGNAL \counter[12]~47\ : std_logic;
SIGNAL \counter[13]~48_combout\ : std_logic;
SIGNAL \counter[13]~49\ : std_logic;
SIGNAL \counter[14]~50_combout\ : std_logic;
SIGNAL \counter[14]~51\ : std_logic;
SIGNAL \counter[15]~52_combout\ : std_logic;
SIGNAL \counter[15]~53\ : std_logic;
SIGNAL \counter[16]~54_combout\ : std_logic;
SIGNAL \counter[16]~55\ : std_logic;
SIGNAL \counter[17]~56_combout\ : std_logic;
SIGNAL \counter[17]~57\ : std_logic;
SIGNAL \counter[18]~58_combout\ : std_logic;
SIGNAL \counter[18]~59\ : std_logic;
SIGNAL \counter[19]~60_combout\ : std_logic;
SIGNAL \counter[19]~61\ : std_logic;
SIGNAL \counter[20]~62_combout\ : std_logic;
SIGNAL \counter[20]~63\ : std_logic;
SIGNAL \counter[21]~64_combout\ : std_logic;
SIGNAL \counter[21]~65\ : std_logic;
SIGNAL \counter[22]~66_combout\ : std_logic;
SIGNAL \counter[22]~67\ : std_logic;
SIGNAL \counter[23]~68_combout\ : std_logic;
SIGNAL \counter[23]~69\ : std_logic;
SIGNAL \counter[24]~70_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \clk_temp~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50m <= clk_50m;
clk <= ww_clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50m~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50m~input_o\);
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y5_N16
\clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_temp~0_combout\,
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_50m~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50m,
	o => \clk_50m~input_o\);

-- Location: CLKCTRL_G2
\clk_50m~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50m~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50m~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N6
\counter[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~72_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~72_combout\);

-- Location: FF_X1_Y4_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[0]~72_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X1_Y4_N8
\counter[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~24_combout\ = (counter(0) & (counter(1) $ (VCC))) # (!counter(0) & (counter(1) & VCC))
-- \counter[1]~25\ = CARRY((counter(0) & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datad => VCC,
	combout => \counter[1]~24_combout\,
	cout => \counter[1]~25\);

-- Location: FF_X1_Y4_N9
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[1]~24_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X1_Y4_N10
\counter[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~26_combout\ = (counter(2) & (!\counter[1]~25\)) # (!counter(2) & ((\counter[1]~25\) # (GND)))
-- \counter[2]~27\ = CARRY((!\counter[1]~25\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~25\,
	combout => \counter[2]~26_combout\,
	cout => \counter[2]~27\);

-- Location: FF_X1_Y4_N11
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[2]~26_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X1_Y4_N12
\counter[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~28_combout\ = (counter(3) & (\counter[2]~27\ $ (GND))) # (!counter(3) & (!\counter[2]~27\ & VCC))
-- \counter[3]~29\ = CARRY((counter(3) & !\counter[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~27\,
	combout => \counter[3]~28_combout\,
	cout => \counter[3]~29\);

-- Location: FF_X1_Y4_N13
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[3]~28_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X1_Y4_N14
\counter[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~30_combout\ = (counter(4) & (!\counter[3]~29\)) # (!counter(4) & ((\counter[3]~29\) # (GND)))
-- \counter[4]~31\ = CARRY((!\counter[3]~29\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~29\,
	combout => \counter[4]~30_combout\,
	cout => \counter[4]~31\);

-- Location: FF_X1_Y4_N15
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[4]~30_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X1_Y4_N16
\counter[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~32_combout\ = (counter(5) & (\counter[4]~31\ $ (GND))) # (!counter(5) & (!\counter[4]~31\ & VCC))
-- \counter[5]~33\ = CARRY((counter(5) & !\counter[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~31\,
	combout => \counter[5]~32_combout\,
	cout => \counter[5]~33\);

-- Location: FF_X1_Y4_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[5]~32_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X1_Y4_N18
\counter[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~34_combout\ = (counter(6) & (!\counter[5]~33\)) # (!counter(6) & ((\counter[5]~33\) # (GND)))
-- \counter[6]~35\ = CARRY((!\counter[5]~33\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~33\,
	combout => \counter[6]~34_combout\,
	cout => \counter[6]~35\);

-- Location: FF_X1_Y4_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[6]~34_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X1_Y4_N20
\counter[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~36_combout\ = (counter(7) & (\counter[6]~35\ $ (GND))) # (!counter(7) & (!\counter[6]~35\ & VCC))
-- \counter[7]~37\ = CARRY((counter(7) & !\counter[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~35\,
	combout => \counter[7]~36_combout\,
	cout => \counter[7]~37\);

-- Location: FF_X1_Y4_N21
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[7]~36_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X1_Y4_N22
\counter[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~38_combout\ = (counter(8) & (!\counter[7]~37\)) # (!counter(8) & ((\counter[7]~37\) # (GND)))
-- \counter[8]~39\ = CARRY((!\counter[7]~37\) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~37\,
	combout => \counter[8]~38_combout\,
	cout => \counter[8]~39\);

-- Location: FF_X1_Y4_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[8]~38_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X1_Y4_N24
\counter[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~40_combout\ = (counter(9) & (\counter[8]~39\ $ (GND))) # (!counter(9) & (!\counter[8]~39\ & VCC))
-- \counter[9]~41\ = CARRY((counter(9) & !\counter[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~39\,
	combout => \counter[9]~40_combout\,
	cout => \counter[9]~41\);

-- Location: FF_X1_Y4_N25
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[9]~40_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X1_Y4_N26
\counter[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~42_combout\ = (counter(10) & (!\counter[9]~41\)) # (!counter(10) & ((\counter[9]~41\) # (GND)))
-- \counter[10]~43\ = CARRY((!\counter[9]~41\) # (!counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \counter[9]~41\,
	combout => \counter[10]~42_combout\,
	cout => \counter[10]~43\);

-- Location: FF_X1_Y4_N27
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[10]~42_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X1_Y4_N28
\counter[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~44_combout\ = (counter(11) & (\counter[10]~43\ $ (GND))) # (!counter(11) & (!\counter[10]~43\ & VCC))
-- \counter[11]~45\ = CARRY((counter(11) & !\counter[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~43\,
	combout => \counter[11]~44_combout\,
	cout => \counter[11]~45\);

-- Location: FF_X1_Y4_N29
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[11]~44_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X1_Y4_N30
\counter[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~46_combout\ = (counter(12) & (!\counter[11]~45\)) # (!counter(12) & ((\counter[11]~45\) # (GND)))
-- \counter[12]~47\ = CARRY((!\counter[11]~45\) # (!counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \counter[11]~45\,
	combout => \counter[12]~46_combout\,
	cout => \counter[12]~47\);

-- Location: FF_X1_Y4_N31
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[12]~46_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X1_Y3_N0
\counter[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~48_combout\ = (counter(13) & (\counter[12]~47\ $ (GND))) # (!counter(13) & (!\counter[12]~47\ & VCC))
-- \counter[13]~49\ = CARRY((counter(13) & !\counter[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~47\,
	combout => \counter[13]~48_combout\,
	cout => \counter[13]~49\);

-- Location: FF_X1_Y3_N1
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[13]~48_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X1_Y3_N2
\counter[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~50_combout\ = (counter(14) & (!\counter[13]~49\)) # (!counter(14) & ((\counter[13]~49\) # (GND)))
-- \counter[14]~51\ = CARRY((!\counter[13]~49\) # (!counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~49\,
	combout => \counter[14]~50_combout\,
	cout => \counter[14]~51\);

-- Location: FF_X1_Y3_N3
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[14]~50_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X1_Y3_N4
\counter[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~52_combout\ = (counter(15) & (\counter[14]~51\ $ (GND))) # (!counter(15) & (!\counter[14]~51\ & VCC))
-- \counter[15]~53\ = CARRY((counter(15) & !\counter[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~51\,
	combout => \counter[15]~52_combout\,
	cout => \counter[15]~53\);

-- Location: FF_X1_Y3_N5
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[15]~52_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X1_Y3_N6
\counter[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~54_combout\ = (counter(16) & (!\counter[15]~53\)) # (!counter(16) & ((\counter[15]~53\) # (GND)))
-- \counter[16]~55\ = CARRY((!\counter[15]~53\) # (!counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~53\,
	combout => \counter[16]~54_combout\,
	cout => \counter[16]~55\);

-- Location: FF_X1_Y3_N7
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[16]~54_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X1_Y3_N8
\counter[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~56_combout\ = (counter(17) & (\counter[16]~55\ $ (GND))) # (!counter(17) & (!\counter[16]~55\ & VCC))
-- \counter[17]~57\ = CARRY((counter(17) & !\counter[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~55\,
	combout => \counter[17]~56_combout\,
	cout => \counter[17]~57\);

-- Location: FF_X1_Y3_N9
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[17]~56_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X1_Y3_N10
\counter[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~58_combout\ = (counter(18) & (!\counter[17]~57\)) # (!counter(18) & ((\counter[17]~57\) # (GND)))
-- \counter[18]~59\ = CARRY((!\counter[17]~57\) # (!counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~57\,
	combout => \counter[18]~58_combout\,
	cout => \counter[18]~59\);

-- Location: FF_X1_Y3_N11
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[18]~58_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X1_Y3_N12
\counter[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~60_combout\ = (counter(19) & (\counter[18]~59\ $ (GND))) # (!counter(19) & (!\counter[18]~59\ & VCC))
-- \counter[19]~61\ = CARRY((counter(19) & !\counter[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~59\,
	combout => \counter[19]~60_combout\,
	cout => \counter[19]~61\);

-- Location: FF_X1_Y3_N13
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[19]~60_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X1_Y3_N14
\counter[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~62_combout\ = (counter(20) & (!\counter[19]~61\)) # (!counter(20) & ((\counter[19]~61\) # (GND)))
-- \counter[20]~63\ = CARRY((!\counter[19]~61\) # (!counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~61\,
	combout => \counter[20]~62_combout\,
	cout => \counter[20]~63\);

-- Location: FF_X1_Y3_N15
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[20]~62_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X1_Y3_N16
\counter[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~64_combout\ = (counter(21) & (\counter[20]~63\ $ (GND))) # (!counter(21) & (!\counter[20]~63\ & VCC))
-- \counter[21]~65\ = CARRY((counter(21) & !\counter[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~63\,
	combout => \counter[21]~64_combout\,
	cout => \counter[21]~65\);

-- Location: FF_X1_Y3_N17
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[21]~64_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X1_Y3_N18
\counter[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~66_combout\ = (counter(22) & (!\counter[21]~65\)) # (!counter(22) & ((\counter[21]~65\) # (GND)))
-- \counter[22]~67\ = CARRY((!\counter[21]~65\) # (!counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~65\,
	combout => \counter[22]~66_combout\,
	cout => \counter[22]~67\);

-- Location: FF_X1_Y3_N19
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[22]~66_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X1_Y3_N20
\counter[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[23]~68_combout\ = (counter(23) & (\counter[22]~67\ $ (GND))) # (!counter(23) & (!\counter[22]~67\ & VCC))
-- \counter[23]~69\ = CARRY((counter(23) & !\counter[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~67\,
	combout => \counter[23]~68_combout\,
	cout => \counter[23]~69\);

-- Location: FF_X1_Y3_N21
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[23]~68_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X1_Y3_N22
\counter[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[24]~70_combout\ = counter(24) $ (\counter[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	cin => \counter[23]~69\,
	combout => \counter[24]~70_combout\);

-- Location: FF_X1_Y3_N23
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \counter[24]~70_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X1_Y3_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter(24) & (!counter(8) & (!counter(2) & !counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(8),
	datac => counter(2),
	datad => counter(1),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X1_Y3_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(12) & (counter(14) & (!counter(15) & counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(14),
	datac => counter(15),
	datad => counter(13),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y4_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(7) & (!counter(5) & (!counter(4) & counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(5),
	datac => counter(4),
	datad => counter(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y3_N20
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter(17) & (counter(16) & (counter(18) & counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(16),
	datac => counter(18),
	datad => counter(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X1_Y4_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(3) & (counter(11) & (!counter(10) & !counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(11),
	datac => counter(10),
	datad => counter(9),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X2_Y3_N6
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (counter(20) & (counter(22) & (counter(21) & !counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(22),
	datac => counter(21),
	datad => counter(23),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X1_Y3_N24
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~3_combout\ & (!counter(0) & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => counter(0),
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X1_Y3_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X1_Y5_N16
\clk_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_temp~0_combout\ = \Equal0~7_combout\ $ (\clk_temp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \clk_temp~0_combout\,
	combout => \clk_temp~0_combout\);

ww_clk <= \clk~output_o\;
END structure;


