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

-- DATE "07/12/2018 14:19:53"

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

ENTITY 	songer IS
    PORT (
	clk12mhz : IN std_logic;
	clk8hz : IN std_logic;
	code1 : BUFFER std_logic_vector(3 DOWNTO 0);
	high1 : BUFFER std_logic;
	spkout : BUFFER std_logic
	);
END songer;

-- Design Ports Information
-- code1[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code1[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code1[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code1[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- high1	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spkout	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk8hz	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk12mhz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF songer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk12mhz : std_logic;
SIGNAL ww_clk8hz : std_logic;
SIGNAL ww_code1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_high1 : std_logic;
SIGNAL ww_spkout : std_logic;
SIGNAL \u2|Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|fullspks~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk12mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \code1[0]~output_o\ : std_logic;
SIGNAL \code1[1]~output_o\ : std_logic;
SIGNAL \code1[2]~output_o\ : std_logic;
SIGNAL \code1[3]~output_o\ : std_logic;
SIGNAL \high1~output_o\ : std_logic;
SIGNAL \spkout~output_o\ : std_logic;
SIGNAL \clk8hz~input_o\ : std_logic;
SIGNAL \u1|counter[0]~21_combout\ : std_logic;
SIGNAL \u1|counter[3]~12\ : std_logic;
SIGNAL \u1|counter[4]~13_combout\ : std_logic;
SIGNAL \u1|counter[4]~14\ : std_logic;
SIGNAL \u1|counter[5]~15_combout\ : std_logic;
SIGNAL \u1|counter[5]~16\ : std_logic;
SIGNAL \u1|counter[6]~17_combout\ : std_logic;
SIGNAL \u1|counter[6]~18\ : std_logic;
SIGNAL \u1|counter[7]~19_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|counter[1]~7_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|counter[1]~8\ : std_logic;
SIGNAL \u1|counter[2]~9_combout\ : std_logic;
SIGNAL \u1|counter[2]~10\ : std_logic;
SIGNAL \u1|counter[3]~11_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~4_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~0_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~1_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~2_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~3_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~5_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~10_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~6_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~7_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~8_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~9_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~11_combout\ : std_logic;
SIGNAL \u1|U1|Mux0~12_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~10_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~11_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~12_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~5_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~6_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~0_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~1_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~9_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~13_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~2_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~3_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~2_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~3_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~4_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~7_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~8_combout\ : std_logic;
SIGNAL \u1|U1|Mux1~14_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~8_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~7_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~9_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~6_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~10_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~2_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~1_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~3_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~4_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~0_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~5_combout\ : std_logic;
SIGNAL \u1|U1|Mux2~11_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~14_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~10_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~12_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~11_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~13_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~15_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~6_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~5_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~7_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~8_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~4_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~9_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~16_combout\ : std_logic;
SIGNAL \u1|U1|Mux3~17_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|highi~combout\ : std_logic;
SIGNAL \clk12mhz~input_o\ : std_logic;
SIGNAL \clk12mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \u3|divideclk:count4[0]~0_combout\ : std_logic;
SIGNAL \u3|divideclk:count4[0]~q\ : std_logic;
SIGNAL \u3|divideclk:count4[1]~0_combout\ : std_logic;
SIGNAL \u3|divideclk:count4[1]~q\ : std_logic;
SIGNAL \u3|divideclk:count4[2]~0_combout\ : std_logic;
SIGNAL \u3|divideclk:count4[2]~feeder_combout\ : std_logic;
SIGNAL \u3|divideclk:count4[2]~q\ : std_logic;
SIGNAL \u3|divideclk:count4[3]~0_combout\ : std_logic;
SIGNAL \u3|divideclk:count4[3]~q\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \u3|genspks:count11[0]~1_combout\ : std_logic;
SIGNAL \u2|Mux7~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[0]~q\ : std_logic;
SIGNAL \u3|genspks:count11[0]~2\ : std_logic;
SIGNAL \u3|genspks:count11[1]~1_combout\ : std_logic;
SIGNAL \u2|Mux8~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[1]~q\ : std_logic;
SIGNAL \u3|genspks:count11[1]~2\ : std_logic;
SIGNAL \u3|genspks:count11[2]~1_combout\ : std_logic;
SIGNAL \u2|Mux9~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[2]~q\ : std_logic;
SIGNAL \u3|genspks:count11[2]~2\ : std_logic;
SIGNAL \u3|genspks:count11[3]~1_combout\ : std_logic;
SIGNAL \u2|Mux10~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[3]~q\ : std_logic;
SIGNAL \u3|genspks:count11[3]~2\ : std_logic;
SIGNAL \u3|genspks:count11[4]~1_combout\ : std_logic;
SIGNAL \u2|Mux11~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[4]~q\ : std_logic;
SIGNAL \u3|genspks:count11[4]~2\ : std_logic;
SIGNAL \u3|genspks:count11[5]~1_combout\ : std_logic;
SIGNAL \u2|Mux12~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[5]~q\ : std_logic;
SIGNAL \u3|genspks:count11[5]~2\ : std_logic;
SIGNAL \u3|genspks:count11[6]~1_combout\ : std_logic;
SIGNAL \u2|Mux13~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[6]~q\ : std_logic;
SIGNAL \u3|genspks:count11[6]~2\ : std_logic;
SIGNAL \u3|genspks:count11[7]~1_combout\ : std_logic;
SIGNAL \u2|Mux14~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[7]~q\ : std_logic;
SIGNAL \u3|genspks:count11[7]~2\ : std_logic;
SIGNAL \u3|genspks:count11[8]~1_combout\ : std_logic;
SIGNAL \u2|Mux15~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[8]~q\ : std_logic;
SIGNAL \u3|genspks:count11[8]~2\ : std_logic;
SIGNAL \u3|genspks:count11[9]~1_combout\ : std_logic;
SIGNAL \u2|Mux16~0_combout\ : std_logic;
SIGNAL \u3|genspks:count11[9]~q\ : std_logic;
SIGNAL \u3|genspks:count11[9]~2\ : std_logic;
SIGNAL \u3|genspks:count11[10]~1_combout\ : std_logic;
SIGNAL \u2|Mux17~3_combout\ : std_logic;
SIGNAL \u2|Mux17~15_combout\ : std_logic;
SIGNAL \u3|genspks:count11[10]~q\ : std_logic;
SIGNAL \u3|Equal0~2_combout\ : std_logic;
SIGNAL \u3|Equal0~1_combout\ : std_logic;
SIGNAL \u3|Equal0~0_combout\ : std_logic;
SIGNAL \u3|Equal0~3_combout\ : std_logic;
SIGNAL \u3|fullspks~q\ : std_logic;
SIGNAL \u3|fullspks~clkctrl_outclk\ : std_logic;
SIGNAL \u3|delayspks:count2~0_combout\ : std_logic;
SIGNAL \u3|delayspks:count2~q\ : std_logic;
SIGNAL \u3|spks~0_combout\ : std_logic;
SIGNAL \u3|spks~q\ : std_logic;
SIGNAL \u1|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u2|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|tone\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk12mhz <= clk12mhz;
ww_clk8hz <= clk8hz;
code1 <= ww_code1;
high1 <= ww_high1;
spkout <= ww_spkout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u2|Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|Mux4~0_combout\);

\u3|fullspks~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|fullspks~q\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\clk12mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk12mhz~input_o\);
\u1|ALT_INV_Equal0~2_combout\ <= NOT \u1|Equal0~2_combout\;
\ALT_INV_rtl~0clkctrl_outclk\ <= NOT \rtl~0clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y9_N16
\code1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|code\(0),
	devoe => ww_devoe,
	o => \code1[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\code1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|code\(1),
	devoe => ww_devoe,
	o => \code1[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\code1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|code\(2),
	devoe => ww_devoe,
	o => \code1[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\code1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \code1[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\high1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|highi~combout\,
	devoe => ww_devoe,
	o => \high1~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\spkout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|spks~q\,
	devoe => ww_devoe,
	o => \spkout~output_o\);

-- Location: IOIBUF_X34_Y12_N22
\clk8hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk8hz,
	o => \clk8hz~input_o\);

-- Location: LCCOMB_X31_Y10_N8
\u1|counter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter[0]~21_combout\ = !\u1|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(0),
	combout => \u1|counter[0]~21_combout\);

-- Location: LCCOMB_X31_Y11_N18
\u1|counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter[3]~11_combout\ = (\u1|counter\(3) & (\u1|counter[2]~10\ $ (GND))) # (!\u1|counter\(3) & (!\u1|counter[2]~10\ & VCC))
-- \u1|counter[3]~12\ = CARRY((\u1|counter\(3) & !\u1|counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(3),
	datad => VCC,
	cin => \u1|counter[2]~10\,
	combout => \u1|counter[3]~11_combout\,
	cout => \u1|counter[3]~12\);

-- Location: LCCOMB_X31_Y11_N20
\u1|counter[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter[4]~13_combout\ = (\u1|counter\(4) & (!\u1|counter[3]~12\)) # (!\u1|counter\(4) & ((\u1|counter[3]~12\) # (GND)))
-- \u1|counter[4]~14\ = CARRY((!\u1|counter[3]~12\) # (!\u1|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(4),
	datad => VCC,
	cin => \u1|counter[3]~12\,
	combout => \u1|counter[4]~13_combout\,
	cout => \u1|counter[4]~14\);

-- Location: FF_X31_Y11_N21
\u1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk8hz~input_o\,
	d => \u1|counter[4]~13_combout\,
	clrn => \u1|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(4));

-- Location: LCCOMB_X31_Y11_N22
\u1|counter[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter[5]~15_combout\ = (\u1|counter\(5) & (\u1|counter[4]~14\ $ (GND))) # (!\u1|counter\(5) & (!\u1|counter[4]~14\ & VCC))
-- \u1|counter[5]~16\ = CARRY((\u1|counter\(5) & !\u1|counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(5),
	datad => VCC,
	cin => \u1|counter[4]~14\,
	combout => \u1|counter[5]~15_combout\,
	cout => \u1|counter[5]~16\);

-- Location: FF_X31_Y11_N23
\u1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk8hz~input_o\,
	d => \u1|counter[5]~15_combout\,
	clrn => \u1|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(5));

-- Location: LCCOMB_X31_Y11_N24
\u1|counter[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter[6]~17_combout\ = (\u1|counter\(6) & (!\u1|counter[5]~16\)) # (!\u1|counter\(6) & ((\u1|counter[5]~16\) # (GND)))
-- \u1|counter[6]~18\ = CARRY((!\u1|counter[5]~16\) # (!\u1|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(6),
	datad => VCC,
	cin => \u1|counter[5]~16\,
	combout => \u1|counter[6]~17_combout\,
	cout => \u1|counter[6]~18\);

-- Location: FF_X31_Y11_N25
\u1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk8hz~input_o\,
	d => \u1|counter[6]~17_combout\,
	clrn => \u1|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(6));

-- Location: LCCOMB_X31_Y11_N26
\u1|counter[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter[7]~19_combout\ = \u1|counter[6]~18\ $ (!\u1|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|counter\(7),
	cin => \u1|counter[6]~18\,
	combout => \u1|counter[7]~19_combout\);

-- Location: FF_X31_Y11_N27
\u1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk8hz~input_o\,
	d => \u1|counter[7]~19_combout\,
	clrn => \u1|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(7));

-- Location: LCCOMB_X31_Y11_N4
\u1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|counter\(7) & (\u1|counter\(3) & (!\u1|counter\(0) & !\u1|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(7),
	datab => \u1|counter\(3),
	datac => \u1|counter\(0),
	datad => \u1|counter\(5),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y11_N14
\u1|counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter[1]~7_combout\ = (\u1|counter\(0) & (\u1|counter\(1) $ (VCC))) # (!\u1|counter\(0) & (\u1|counter\(1) & VCC))
-- \u1|counter[1]~8\ = CARRY((\u1|counter\(0) & \u1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(0),
	datab => \u1|counter\(1),
	datad => VCC,
	combout => \u1|counter[1]~7_combout\,
	cout => \u1|counter[1]~8\);

-- Location: FF_X31_Y11_N15
\u1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk8hz~input_o\,
	d => \u1|counter[1]~7_combout\,
	clrn => \u1|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(1));

-- Location: LCCOMB_X31_Y11_N10
\u1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (!\u1|counter\(6) & (!\u1|counter\(2) & (\u1|counter\(1) & !\u1|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(6),
	datab => \u1|counter\(2),
	datac => \u1|counter\(1),
	datad => \u1|counter\(4),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y11_N0
\u1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (\u1|Equal0~1_combout\ & \u1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|Equal0~1_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|Equal0~2_combout\);

-- Location: FF_X31_Y11_N5
\u1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk8hz~input_o\,
	asdata => \u1|counter[0]~21_combout\,
	clrn => \u1|ALT_INV_Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(0));

-- Location: LCCOMB_X31_Y11_N16
\u1|counter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|counter[2]~9_combout\ = (\u1|counter\(2) & (!\u1|counter[1]~8\)) # (!\u1|counter\(2) & ((\u1|counter[1]~8\) # (GND)))
-- \u1|counter[2]~10\ = CARRY((!\u1|counter[1]~8\) # (!\u1|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(2),
	datad => VCC,
	cin => \u1|counter[1]~8\,
	combout => \u1|counter[2]~9_combout\,
	cout => \u1|counter[2]~10\);

-- Location: FF_X31_Y11_N17
\u1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk8hz~input_o\,
	d => \u1|counter[2]~9_combout\,
	clrn => \u1|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(2));

-- Location: FF_X31_Y11_N19
\u1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk8hz~input_o\,
	d => \u1|counter[3]~11_combout\,
	clrn => \u1|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|counter\(3));

-- Location: LCCOMB_X26_Y11_N20
\u1|U1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~4_combout\ = (\u1|counter\(2) & (!\u1|counter\(0) & (\u1|counter\(5) $ (\u1|counter\(6))))) # (!\u1|counter\(2) & (((\u1|counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(5),
	datab => \u1|counter\(2),
	datac => \u1|counter\(0),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux0~4_combout\);

-- Location: LCCOMB_X26_Y11_N26
\u1|U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~0_combout\ = (\u1|counter\(6)) # ((\u1|counter\(2) & (\u1|counter\(0) & !\u1|counter\(5))) # (!\u1|counter\(2) & ((\u1|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(6),
	datac => \u1|counter\(0),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y11_N14
\u1|U1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~1_combout\ = (\u1|counter\(5) & (((\u1|counter\(2) & \u1|counter\(6))))) # (!\u1|counter\(5) & (!\u1|counter\(6) & ((\u1|counter\(0)) # (\u1|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(5),
	datab => \u1|counter\(0),
	datac => \u1|counter\(2),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y11_N12
\u1|U1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~2_combout\ = (\u1|counter\(6) & ((\u1|counter\(5)) # (!\u1|counter\(2)))) # (!\u1|counter\(6) & (!\u1|counter\(2) & \u1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(6),
	datac => \u1|counter\(2),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y11_N24
\u1|U1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~3_combout\ = (\u1|counter\(1) & (\u1|counter\(4))) # (!\u1|counter\(1) & ((\u1|counter\(4) & (\u1|U1|Mux0~1_combout\)) # (!\u1|counter\(4) & ((\u1|U1|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(4),
	datac => \u1|U1|Mux0~1_combout\,
	datad => \u1|U1|Mux0~2_combout\,
	combout => \u1|U1|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y11_N8
\u1|U1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~5_combout\ = (\u1|counter\(1) & ((\u1|U1|Mux0~3_combout\ & (!\u1|U1|Mux0~4_combout\)) # (!\u1|U1|Mux0~3_combout\ & ((\u1|U1|Mux0~0_combout\))))) # (!\u1|counter\(1) & (((\u1|U1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|U1|Mux0~4_combout\,
	datac => \u1|U1|Mux0~0_combout\,
	datad => \u1|U1|Mux0~3_combout\,
	combout => \u1|U1|Mux0~5_combout\);

-- Location: LCCOMB_X26_Y11_N0
\u1|U1|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~10_combout\ = (\u1|counter\(6) & (((!\u1|counter\(5)) # (!\u1|counter\(0))) # (!\u1|counter\(2)))) # (!\u1|counter\(6) & ((\u1|counter\(5)) # ((\u1|counter\(2) & \u1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(6),
	datac => \u1|counter\(0),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux0~10_combout\);

-- Location: LCCOMB_X26_Y11_N22
\u1|U1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~6_combout\ = (\u1|counter\(5) & (\u1|counter\(2) $ (\u1|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(5),
	datac => \u1|counter\(2),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux0~6_combout\);

-- Location: LCCOMB_X26_Y11_N4
\u1|U1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~7_combout\ = (\u1|counter\(6) & (((\u1|counter\(2)) # (!\u1|counter\(5))) # (!\u1|counter\(0)))) # (!\u1|counter\(6) & (((\u1|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(0),
	datab => \u1|counter\(6),
	datac => \u1|counter\(2),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux0~7_combout\);

-- Location: LCCOMB_X26_Y11_N2
\u1|U1|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~8_combout\ = (\u1|counter\(2) & (((!\u1|counter\(5))))) # (!\u1|counter\(2) & (\u1|counter\(6) $ (((\u1|counter\(0)) # (\u1|counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(0),
	datab => \u1|counter\(6),
	datac => \u1|counter\(2),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux0~8_combout\);

-- Location: LCCOMB_X26_Y11_N16
\u1|U1|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~9_combout\ = (\u1|counter\(1) & (\u1|counter\(4))) # (!\u1|counter\(1) & ((\u1|counter\(4) & (!\u1|U1|Mux0~7_combout\)) # (!\u1|counter\(4) & ((!\u1|U1|Mux0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(4),
	datac => \u1|U1|Mux0~7_combout\,
	datad => \u1|U1|Mux0~8_combout\,
	combout => \u1|U1|Mux0~9_combout\);

-- Location: LCCOMB_X26_Y11_N6
\u1|U1|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~11_combout\ = (\u1|counter\(1) & ((\u1|U1|Mux0~9_combout\ & (!\u1|U1|Mux0~10_combout\)) # (!\u1|U1|Mux0~9_combout\ & ((\u1|U1|Mux0~6_combout\))))) # (!\u1|counter\(1) & (((\u1|U1|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|U1|Mux0~10_combout\,
	datac => \u1|U1|Mux0~6_combout\,
	datad => \u1|U1|Mux0~9_combout\,
	combout => \u1|U1|Mux0~11_combout\);

-- Location: LCCOMB_X26_Y11_N18
\u1|U1|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux0~12_combout\ = (\u1|counter\(7)) # ((\u1|counter\(3) & ((!\u1|U1|Mux0~11_combout\))) # (!\u1|counter\(3) & (!\u1|U1|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(3),
	datab => \u1|counter\(7),
	datac => \u1|U1|Mux0~5_combout\,
	datad => \u1|U1|Mux0~11_combout\,
	combout => \u1|U1|Mux0~12_combout\);

-- Location: LCCOMB_X32_Y11_N6
\u1|U1|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~10_combout\ = (!\u1|counter\(6) & \u1|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|counter\(6),
	datad => \u1|counter\(4),
	combout => \u1|U1|Mux1~10_combout\);

-- Location: LCCOMB_X31_Y11_N6
\u1|U1|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~11_combout\ = (\u1|counter\(4) & (((!\u1|counter\(1) & \u1|counter\(0))) # (!\u1|counter\(6)))) # (!\u1|counter\(4) & (\u1|counter\(1) & (\u1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(4),
	datab => \u1|counter\(1),
	datac => \u1|counter\(0),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux1~11_combout\);

-- Location: LCCOMB_X32_Y11_N12
\u1|U1|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~12_combout\ = (\u1|counter\(2) & (((!\u1|counter\(3))) # (!\u1|U1|Mux1~10_combout\))) # (!\u1|counter\(2) & (((\u1|U1|Mux1~11_combout\) # (\u1|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux1~10_combout\,
	datab => \u1|U1|Mux1~11_combout\,
	datac => \u1|counter\(2),
	datad => \u1|counter\(3),
	combout => \u1|U1|Mux1~12_combout\);

-- Location: LCCOMB_X32_Y11_N18
\u1|U1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~5_combout\ = (\u1|counter\(2) & (!\u1|counter\(4) & ((!\u1|counter\(0)) # (!\u1|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(0),
	datac => \u1|counter\(2),
	datad => \u1|counter\(4),
	combout => \u1|U1|Mux1~5_combout\);

-- Location: LCCOMB_X32_Y11_N0
\u1|U1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~6_combout\ = (\u1|counter\(5) & (((\u1|counter\(3)) # (\u1|U1|Mux1~5_combout\)))) # (!\u1|counter\(5) & ((\u1|counter\(2)) # ((!\u1|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(5),
	datac => \u1|counter\(3),
	datad => \u1|U1|Mux1~5_combout\,
	combout => \u1|U1|Mux1~6_combout\);

-- Location: LCCOMB_X32_Y11_N28
\u1|U1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~0_combout\ = (\u1|counter\(1) & ((\u1|counter\(4) & (\u1|counter\(0) $ (!\u1|counter\(6)))) # (!\u1|counter\(4) & ((\u1|counter\(0)) # (\u1|counter\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(4),
	datac => \u1|counter\(0),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y11_N26
\u1|U1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~1_combout\ = (!\u1|counter\(7) & (((\u1|counter\(3)) # (!\u1|U1|Mux1~0_combout\)) # (!\u1|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(3),
	datac => \u1|counter\(7),
	datad => \u1|U1|Mux1~0_combout\,
	combout => \u1|U1|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y11_N24
\u1|U1|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~9_combout\ = (\u1|counter\(4) & (((\u1|counter\(6))))) # (!\u1|counter\(4) & ((\u1|counter\(1)) # (\u1|counter\(0) $ (\u1|counter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(4),
	datac => \u1|counter\(0),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux1~9_combout\);

-- Location: LCCOMB_X32_Y11_N30
\u1|U1|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~13_combout\ = (\u1|U1|Mux1~12_combout\ & (\u1|U1|Mux1~1_combout\ & ((\u1|U1|Mux1~6_combout\) # (\u1|U1|Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux1~12_combout\,
	datab => \u1|U1|Mux1~6_combout\,
	datac => \u1|U1|Mux1~1_combout\,
	datad => \u1|U1|Mux1~9_combout\,
	combout => \u1|U1|Mux1~13_combout\);

-- Location: LCCOMB_X32_Y11_N20
\u1|U1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~2_combout\ = (!\u1|counter\(6) & (!\u1|counter\(4) & (!\u1|counter\(3) & !\u1|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(6),
	datab => \u1|counter\(4),
	datac => \u1|counter\(3),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux3~2_combout\);

-- Location: LCCOMB_X32_Y11_N8
\u1|U1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~3_combout\ = (\u1|counter\(7) & \u1|U1|Mux3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|counter\(7),
	datad => \u1|U1|Mux3~2_combout\,
	combout => \u1|U1|Mux3~3_combout\);

-- Location: LCCOMB_X32_Y11_N22
\u1|U1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~2_combout\ = (\u1|counter\(2) & (\u1|counter\(1) $ (((\u1|counter\(0) & \u1|counter\(4)))))) # (!\u1|counter\(2) & (\u1|counter\(4) & ((\u1|counter\(1)) # (!\u1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(0),
	datac => \u1|counter\(2),
	datad => \u1|counter\(4),
	combout => \u1|U1|Mux1~2_combout\);

-- Location: LCCOMB_X32_Y11_N4
\u1|U1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~3_combout\ = (\u1|counter\(6) & (((\u1|U1|Mux1~2_combout\)))) # (!\u1|counter\(6) & (((\u1|counter\(4))) # (!\u1|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(4),
	datac => \u1|U1|Mux1~2_combout\,
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux1~3_combout\);

-- Location: LCCOMB_X32_Y11_N14
\u1|U1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~4_combout\ = (\u1|counter\(2) & (((!\u1|counter\(4)) # (!\u1|counter\(0))) # (!\u1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(0),
	datac => \u1|counter\(2),
	datad => \u1|counter\(4),
	combout => \u1|U1|Mux1~4_combout\);

-- Location: LCCOMB_X32_Y11_N16
\u1|U1|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~7_combout\ = (!\u1|counter\(7) & ((\u1|counter\(6) & ((\u1|U1|Mux1~6_combout\))) # (!\u1|counter\(6) & (\u1|U1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(7),
	datab => \u1|counter\(6),
	datac => \u1|U1|Mux1~4_combout\,
	datad => \u1|U1|Mux1~6_combout\,
	combout => \u1|U1|Mux1~7_combout\);

-- Location: LCCOMB_X32_Y11_N2
\u1|U1|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~8_combout\ = (\u1|counter\(3) & (\u1|U1|Mux1~1_combout\ & (\u1|U1|Mux1~3_combout\))) # (!\u1|counter\(3) & (((\u1|U1|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux1~1_combout\,
	datab => \u1|counter\(3),
	datac => \u1|U1|Mux1~3_combout\,
	datad => \u1|U1|Mux1~7_combout\,
	combout => \u1|U1|Mux1~8_combout\);

-- Location: LCCOMB_X32_Y11_N10
\u1|U1|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux1~14_combout\ = (\u1|U1|Mux3~3_combout\) # ((\u1|counter\(5) & ((\u1|U1|Mux1~8_combout\))) # (!\u1|counter\(5) & (\u1|U1|Mux1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux1~13_combout\,
	datab => \u1|counter\(5),
	datac => \u1|U1|Mux3~3_combout\,
	datad => \u1|U1|Mux1~8_combout\,
	combout => \u1|U1|Mux1~14_combout\);

-- Location: LCCOMB_X30_Y11_N4
\u1|U1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~8_combout\ = (\u1|counter\(2) & (((!\u1|counter\(6))))) # (!\u1|counter\(2) & (\u1|counter\(4) & ((\u1|counter\(6)) # (!\u1|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(4),
	datab => \u1|counter\(2),
	datac => \u1|counter\(1),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux2~8_combout\);

-- Location: LCCOMB_X30_Y11_N28
\u1|U1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~7_combout\ = (\u1|counter\(2) & (!\u1|counter\(4) & ((\u1|counter\(1)) # (!\u1|counter\(6))))) # (!\u1|counter\(2) & (\u1|counter\(4) $ (((\u1|counter\(1) & !\u1|counter\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(4),
	datab => \u1|counter\(2),
	datac => \u1|counter\(1),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux2~7_combout\);

-- Location: LCCOMB_X30_Y11_N12
\u1|U1|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~9_combout\ = (\u1|counter\(3) & (\u1|counter\(0))) # (!\u1|counter\(3) & ((\u1|counter\(0) & ((\u1|U1|Mux2~7_combout\))) # (!\u1|counter\(0) & (\u1|U1|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(3),
	datab => \u1|counter\(0),
	datac => \u1|U1|Mux2~8_combout\,
	datad => \u1|U1|Mux2~7_combout\,
	combout => \u1|U1|Mux2~9_combout\);

-- Location: LCCOMB_X30_Y11_N26
\u1|U1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~6_combout\ = ((!\u1|counter\(1) & !\u1|counter\(4))) # (!\u1|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(1),
	datac => \u1|counter\(4),
	datad => \u1|counter\(6),
	combout => \u1|U1|Mux2~6_combout\);

-- Location: LCCOMB_X30_Y11_N0
\u1|U1|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~10_combout\ = (\u1|U1|Mux2~9_combout\ & ((\u1|Equal0~0_combout\) # ((!\u1|counter\(3))))) # (!\u1|U1|Mux2~9_combout\ & (((!\u1|U1|Mux2~6_combout\ & \u1|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux2~9_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|U1|Mux2~6_combout\,
	datad => \u1|counter\(3),
	combout => \u1|U1|Mux2~10_combout\);

-- Location: LCCOMB_X30_Y11_N8
\u1|U1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~2_combout\ = (\u1|counter\(0) & (((\u1|counter\(3)) # (!\u1|counter\(1))))) # (!\u1|counter\(0) & ((\u1|counter\(1)) # ((\u1|counter\(2) & \u1|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(0),
	datac => \u1|counter\(1),
	datad => \u1|counter\(3),
	combout => \u1|U1|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y11_N16
\u1|U1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~1_combout\ = (\u1|counter\(1) & (!\u1|counter\(3) & (\u1|counter\(2) $ (\u1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(0),
	datac => \u1|counter\(1),
	datad => \u1|counter\(3),
	combout => \u1|U1|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y11_N22
\u1|U1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~3_combout\ = (\u1|counter\(4) & ((\u1|counter\(6)) # ((\u1|U1|Mux2~1_combout\)))) # (!\u1|counter\(4) & (!\u1|counter\(6) & (\u1|U1|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(4),
	datab => \u1|counter\(6),
	datac => \u1|U1|Mux2~2_combout\,
	datad => \u1|U1|Mux2~1_combout\,
	combout => \u1|U1|Mux2~3_combout\);

-- Location: LCCOMB_X31_Y11_N8
\u1|U1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~4_combout\ = (\u1|counter\(1) & (\u1|counter\(2) & (\u1|counter\(0) $ (\u1|counter\(3))))) # (!\u1|counter\(1) & (!\u1|counter\(3) & (\u1|counter\(2) $ (\u1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(1),
	datac => \u1|counter\(0),
	datad => \u1|counter\(3),
	combout => \u1|U1|Mux2~4_combout\);

-- Location: LCCOMB_X31_Y11_N28
\u1|U1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~0_combout\ = (\u1|counter\(1) & ((\u1|counter\(3)) # ((\u1|counter\(0)) # (\u1|counter\(2))))) # (!\u1|counter\(1) & (\u1|counter\(3) & ((\u1|counter\(0)) # (\u1|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|counter\(3),
	datac => \u1|counter\(0),
	datad => \u1|counter\(2),
	combout => \u1|U1|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y11_N14
\u1|U1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~5_combout\ = (\u1|U1|Mux2~3_combout\ & (((!\u1|U1|Mux2~4_combout\)) # (!\u1|counter\(6)))) # (!\u1|U1|Mux2~3_combout\ & (\u1|counter\(6) & ((!\u1|U1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux2~3_combout\,
	datab => \u1|counter\(6),
	datac => \u1|U1|Mux2~4_combout\,
	datad => \u1|U1|Mux2~0_combout\,
	combout => \u1|U1|Mux2~5_combout\);

-- Location: LCCOMB_X30_Y11_N24
\u1|U1|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux2~11_combout\ = (\u1|counter\(7)) # ((\u1|counter\(5) & (!\u1|U1|Mux2~10_combout\)) # (!\u1|counter\(5) & ((!\u1|U1|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux2~10_combout\,
	datab => \u1|counter\(5),
	datac => \u1|U1|Mux2~5_combout\,
	datad => \u1|counter\(7),
	combout => \u1|U1|Mux2~11_combout\);

-- Location: LCCOMB_X30_Y11_N2
\u1|U1|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~14_combout\ = (\u1|counter\(4) & (\u1|counter\(2) & (\u1|counter\(1) & !\u1|counter\(5)))) # (!\u1|counter\(4) & (\u1|counter\(2) $ (((\u1|counter\(1) & \u1|counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(4),
	datab => \u1|counter\(2),
	datac => \u1|counter\(1),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux3~14_combout\);

-- Location: LCCOMB_X31_Y11_N12
\u1|U1|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~10_combout\ = (\u1|counter\(5) & (!\u1|counter\(4) & (!\u1|counter\(1) & \u1|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(5),
	datab => \u1|counter\(4),
	datac => \u1|counter\(1),
	datad => \u1|counter\(2),
	combout => \u1|U1|Mux3~10_combout\);

-- Location: LCCOMB_X29_Y11_N24
\u1|U1|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~12_combout\ = (\u1|counter\(4) & ((\u1|counter\(1)) # ((\u1|counter\(2) & \u1|counter\(5))))) # (!\u1|counter\(4) & (\u1|counter\(2) & (\u1|counter\(1) & \u1|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(4),
	datac => \u1|counter\(1),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux3~12_combout\);

-- Location: LCCOMB_X29_Y11_N6
\u1|U1|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~11_combout\ = (\u1|counter\(1) & (!\u1|counter\(2) & (\u1|counter\(4) & !\u1|counter\(5)))) # (!\u1|counter\(1) & (((\u1|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(2),
	datab => \u1|counter\(4),
	datac => \u1|counter\(1),
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux3~11_combout\);

-- Location: LCCOMB_X29_Y11_N28
\u1|U1|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~13_combout\ = (\u1|counter\(0) & (((\u1|counter\(3)) # (\u1|U1|Mux3~11_combout\)))) # (!\u1|counter\(0) & (!\u1|U1|Mux3~12_combout\ & (!\u1|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(0),
	datab => \u1|U1|Mux3~12_combout\,
	datac => \u1|counter\(3),
	datad => \u1|U1|Mux3~11_combout\,
	combout => \u1|U1|Mux3~13_combout\);

-- Location: LCCOMB_X29_Y11_N14
\u1|U1|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~15_combout\ = (\u1|counter\(3) & ((\u1|U1|Mux3~13_combout\ & (!\u1|U1|Mux3~14_combout\)) # (!\u1|U1|Mux3~13_combout\ & ((!\u1|U1|Mux3~10_combout\))))) # (!\u1|counter\(3) & (((\u1|U1|Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux3~14_combout\,
	datab => \u1|U1|Mux3~10_combout\,
	datac => \u1|counter\(3),
	datad => \u1|U1|Mux3~13_combout\,
	combout => \u1|U1|Mux3~15_combout\);

-- Location: LCCOMB_X31_Y11_N30
\u1|U1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~6_combout\ = (\u1|counter\(4) & (!\u1|counter\(3) & ((!\u1|counter\(0)) # (!\u1|counter\(2))))) # (!\u1|counter\(4) & (\u1|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(4),
	datab => \u1|counter\(2),
	datac => \u1|counter\(0),
	datad => \u1|counter\(3),
	combout => \u1|U1|Mux3~6_combout\);

-- Location: LCCOMB_X29_Y11_N4
\u1|U1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~5_combout\ = (\u1|counter\(4) & (((!\u1|counter\(0) & \u1|counter\(2))) # (!\u1|counter\(3)))) # (!\u1|counter\(4) & (((\u1|counter\(3)) # (\u1|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(0),
	datab => \u1|counter\(4),
	datac => \u1|counter\(3),
	datad => \u1|counter\(2),
	combout => \u1|U1|Mux3~5_combout\);

-- Location: LCCOMB_X29_Y11_N10
\u1|U1|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~7_combout\ = (\u1|counter\(1) & (((\u1|U1|Mux3~5_combout\) # (\u1|counter\(5))))) # (!\u1|counter\(1) & (\u1|U1|Mux3~6_combout\ & ((!\u1|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(1),
	datab => \u1|U1|Mux3~6_combout\,
	datac => \u1|U1|Mux3~5_combout\,
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux3~7_combout\);

-- Location: LCCOMB_X31_Y11_N2
\u1|U1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~8_combout\ = (\u1|counter\(4) & (!\u1|counter\(2) & ((\u1|counter\(0)) # (!\u1|counter\(3))))) # (!\u1|counter\(4) & (\u1|counter\(0) & ((\u1|counter\(3)) # (!\u1|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(4),
	datab => \u1|counter\(3),
	datac => \u1|counter\(0),
	datad => \u1|counter\(2),
	combout => \u1|U1|Mux3~8_combout\);

-- Location: LCCOMB_X30_Y11_N10
\u1|U1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~4_combout\ = (\u1|counter\(2) & (\u1|counter\(4) & \u1|counter\(3))) # (!\u1|counter\(2) & (\u1|counter\(4) $ (\u1|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|counter\(2),
	datac => \u1|counter\(4),
	datad => \u1|counter\(3),
	combout => \u1|U1|Mux3~4_combout\);

-- Location: LCCOMB_X29_Y11_N0
\u1|U1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~9_combout\ = (\u1|U1|Mux3~7_combout\ & ((\u1|U1|Mux3~8_combout\) # ((!\u1|counter\(5))))) # (!\u1|U1|Mux3~7_combout\ & (((\u1|U1|Mux3~4_combout\ & \u1|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux3~7_combout\,
	datab => \u1|U1|Mux3~8_combout\,
	datac => \u1|U1|Mux3~4_combout\,
	datad => \u1|counter\(5),
	combout => \u1|U1|Mux3~9_combout\);

-- Location: LCCOMB_X29_Y11_N26
\u1|U1|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~16_combout\ = (!\u1|counter\(7) & ((\u1|counter\(6) & ((\u1|U1|Mux3~9_combout\))) # (!\u1|counter\(6) & (\u1|U1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(7),
	datab => \u1|counter\(6),
	datac => \u1|U1|Mux3~15_combout\,
	datad => \u1|U1|Mux3~9_combout\,
	combout => \u1|U1|Mux3~16_combout\);

-- Location: LCCOMB_X29_Y11_N8
\u1|U1|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|U1|Mux3~17_combout\ = (\u1|U1|Mux3~16_combout\) # ((\u1|counter\(7) & \u1|U1|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(7),
	datac => \u1|U1|Mux3~16_combout\,
	datad => \u1|U1|Mux3~2_combout\,
	combout => \u1|U1|Mux3~17_combout\);

-- Location: LCCOMB_X28_Y11_N0
\u2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = (\u1|U1|Mux0~12_combout\ & (\u1|U1|Mux1~14_combout\ & (\u1|U1|Mux2~11_combout\ & !\u1|U1|Mux3~17_combout\))) # (!\u1|U1|Mux0~12_combout\ & (!\u1|U1|Mux2~11_combout\ & (\u1|U1|Mux1~14_combout\ $ (\u1|U1|Mux3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux0~12_combout\,
	datab => \u1|U1|Mux1~14_combout\,
	datac => \u1|U1|Mux2~11_combout\,
	datad => \u1|U1|Mux3~17_combout\,
	combout => \u2|Mux4~0_combout\);

-- Location: CLKCTRL_G7
\u2|Mux4~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y11_N22
\u2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = \u1|U1|Mux3~17_combout\ $ (((\u1|U1|Mux2~11_combout\ & (!\u1|U1|Mux0~12_combout\)) # (!\u1|U1|Mux2~11_combout\ & ((!\u1|U1|Mux1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux0~12_combout\,
	datab => \u1|U1|Mux2~11_combout\,
	datac => \u1|U1|Mux3~17_combout\,
	datad => \u1|U1|Mux1~14_combout\,
	combout => \u2|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y11_N18
\u2|code[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|code\(0) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|code\(0))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((\u2|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|code\(0),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux1~0_combout\,
	combout => \u2|code\(0));

-- Location: LCCOMB_X28_Y11_N20
\u2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = (\u1|U1|Mux2~11_combout\ & (!\u1|U1|Mux0~12_combout\ & (\u1|U1|Mux3~17_combout\))) # (!\u1|U1|Mux2~11_combout\ & ((\u1|U1|Mux1~14_combout\ & (\u1|U1|Mux0~12_combout\)) # (!\u1|U1|Mux1~14_combout\ & ((!\u1|U1|Mux3~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux0~12_combout\,
	datab => \u1|U1|Mux2~11_combout\,
	datac => \u1|U1|Mux3~17_combout\,
	datad => \u1|U1|Mux1~14_combout\,
	combout => \u2|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y11_N10
\u2|code[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|code\(1) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|code\(1))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((\u2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|code\(1),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux2~0_combout\,
	combout => \u2|code\(1));

-- Location: LCCOMB_X28_Y11_N12
\u2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux3~0_combout\ = (\u1|U1|Mux2~11_combout\ & (\u1|U1|Mux1~14_combout\ & ((\u1|U1|Mux3~17_combout\) # (!\u1|U1|Mux0~12_combout\)))) # (!\u1|U1|Mux2~11_combout\ & (\u1|U1|Mux0~12_combout\ & ((\u1|U1|Mux3~17_combout\) # (\u1|U1|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux0~12_combout\,
	datab => \u1|U1|Mux2~11_combout\,
	datac => \u1|U1|Mux3~17_combout\,
	datad => \u1|U1|Mux1~14_combout\,
	combout => \u2|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y11_N26
\u2|code[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|code\(2) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|code\(2))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((\u2|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|code\(2),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux3~0_combout\,
	combout => \u2|code\(2));

-- Location: LCCOMB_X28_Y11_N16
\u2|highi\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|highi~combout\ = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((\u2|highi~combout\))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (!\u1|U1|Mux0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux0~12_combout\,
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|highi~combout\,
	combout => \u2|highi~combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk12mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk12mhz,
	o => \clk12mhz~input_o\);

-- Location: CLKCTRL_G2
\clk12mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk12mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk12mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N20
\u3|divideclk:count4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|divideclk:count4[0]~0_combout\ = !\u3|divideclk:count4[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|divideclk:count4[0]~q\,
	combout => \u3|divideclk:count4[0]~0_combout\);

-- Location: FF_X1_Y11_N21
\u3|divideclk:count4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk12mhz~inputclkctrl_outclk\,
	d => \u3|divideclk:count4[0]~0_combout\,
	clrn => \ALT_INV_rtl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|divideclk:count4[0]~q\);

-- Location: LCCOMB_X1_Y11_N16
\u3|divideclk:count4[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|divideclk:count4[1]~0_combout\ = \u3|divideclk:count4[0]~q\ $ (\u3|divideclk:count4[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|divideclk:count4[0]~q\,
	datac => \u3|divideclk:count4[1]~q\,
	combout => \u3|divideclk:count4[1]~0_combout\);

-- Location: FF_X1_Y11_N17
\u3|divideclk:count4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk12mhz~inputclkctrl_outclk\,
	d => \u3|divideclk:count4[1]~0_combout\,
	clrn => \ALT_INV_rtl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|divideclk:count4[1]~q\);

-- Location: LCCOMB_X1_Y11_N30
\u3|divideclk:count4[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|divideclk:count4[2]~0_combout\ = \u3|divideclk:count4[2]~q\ $ (((\u3|divideclk:count4[0]~q\ & \u3|divideclk:count4[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|divideclk:count4[0]~q\,
	datac => \u3|divideclk:count4[2]~q\,
	datad => \u3|divideclk:count4[1]~q\,
	combout => \u3|divideclk:count4[2]~0_combout\);

-- Location: LCCOMB_X1_Y11_N28
\u3|divideclk:count4[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|divideclk:count4[2]~feeder_combout\ = \u3|divideclk:count4[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|divideclk:count4[2]~0_combout\,
	combout => \u3|divideclk:count4[2]~feeder_combout\);

-- Location: FF_X1_Y11_N29
\u3|divideclk:count4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk12mhz~inputclkctrl_outclk\,
	d => \u3|divideclk:count4[2]~feeder_combout\,
	clrn => \ALT_INV_rtl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|divideclk:count4[2]~q\);

-- Location: LCCOMB_X1_Y11_N14
\u3|divideclk:count4[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|divideclk:count4[3]~0_combout\ = \u3|divideclk:count4[3]~q\ $ (((\u3|divideclk:count4[2]~q\ & (\u3|divideclk:count4[1]~q\ & \u3|divideclk:count4[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|divideclk:count4[2]~q\,
	datab => \u3|divideclk:count4[1]~q\,
	datac => \u3|divideclk:count4[3]~q\,
	datad => \u3|divideclk:count4[0]~q\,
	combout => \u3|divideclk:count4[3]~0_combout\);

-- Location: FF_X1_Y11_N15
\u3|divideclk:count4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk12mhz~input_o\,
	d => \u3|divideclk:count4[3]~0_combout\,
	clrn => \ALT_INV_rtl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|divideclk:count4[3]~q\);

-- Location: LCCOMB_X1_Y11_N18
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\u3|divideclk:count4[3]~q\ & \u3|divideclk:count4[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|divideclk:count4[3]~q\,
	datad => \u3|divideclk:count4[2]~q\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G0
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y10_N0
\u3|genspks:count11[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[0]~1_combout\ = \u3|genspks:count11[0]~q\ $ (VCC)
-- \u3|genspks:count11[0]~2\ = CARRY(\u3|genspks:count11[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|genspks:count11[0]~q\,
	datad => VCC,
	combout => \u3|genspks:count11[0]~1_combout\,
	cout => \u3|genspks:count11[0]~2\);

-- Location: LCCOMB_X28_Y11_N8
\u2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux7~0_combout\ = (!\u1|U1|Mux0~12_combout\) # (!\u1|U1|Mux2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|U1|Mux2~11_combout\,
	datac => \u1|U1|Mux0~12_combout\,
	combout => \u2|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y11_N6
\u2|tone[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(0) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(0))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|tone\(0),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux7~0_combout\,
	combout => \u2|tone\(0));

-- Location: FF_X29_Y10_N1
\u3|genspks:count11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[0]~1_combout\,
	asdata => \u2|tone\(0),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[0]~q\);

-- Location: LCCOMB_X29_Y10_N2
\u3|genspks:count11[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[1]~1_combout\ = (\u3|genspks:count11[1]~q\ & (!\u3|genspks:count11[0]~2\)) # (!\u3|genspks:count11[1]~q\ & ((\u3|genspks:count11[0]~2\) # (GND)))
-- \u3|genspks:count11[1]~2\ = CARRY((!\u3|genspks:count11[0]~2\) # (!\u3|genspks:count11[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|genspks:count11[1]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[0]~2\,
	combout => \u3|genspks:count11[1]~1_combout\,
	cout => \u3|genspks:count11[1]~2\);

-- Location: LCCOMB_X29_Y11_N2
\u2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux8~0_combout\ = (\u1|U1|Mux3~17_combout\) # ((\u1|U1|Mux2~11_combout\ & (\u1|U1|Mux1~14_combout\ & \u1|U1|Mux0~12_combout\)) # (!\u1|U1|Mux2~11_combout\ & (\u1|U1|Mux1~14_combout\ $ (\u1|U1|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux2~11_combout\,
	datab => \u1|U1|Mux1~14_combout\,
	datac => \u1|U1|Mux3~17_combout\,
	datad => \u1|U1|Mux0~12_combout\,
	combout => \u2|Mux8~0_combout\);

-- Location: LCCOMB_X29_Y11_N22
\u2|tone[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(1) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(1))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|tone\(1),
	datac => \u2|Mux8~0_combout\,
	datad => \u2|Mux4~0clkctrl_outclk\,
	combout => \u2|tone\(1));

-- Location: FF_X29_Y10_N3
\u3|genspks:count11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[1]~1_combout\,
	asdata => \u2|tone\(1),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[1]~q\);

-- Location: LCCOMB_X29_Y10_N4
\u3|genspks:count11[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[2]~1_combout\ = (\u3|genspks:count11[2]~q\ & (\u3|genspks:count11[1]~2\ $ (GND))) # (!\u3|genspks:count11[2]~q\ & (!\u3|genspks:count11[1]~2\ & VCC))
-- \u3|genspks:count11[2]~2\ = CARRY((\u3|genspks:count11[2]~q\ & !\u3|genspks:count11[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|genspks:count11[2]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[1]~2\,
	combout => \u3|genspks:count11[2]~1_combout\,
	cout => \u3|genspks:count11[2]~2\);

-- Location: LCCOMB_X30_Y11_N20
\u2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux9~0_combout\ = (\u1|U1|Mux1~14_combout\ & ((\u1|U1|Mux0~12_combout\ & ((!\u1|U1|Mux3~17_combout\))) # (!\u1|U1|Mux0~12_combout\ & (!\u1|U1|Mux2~11_combout\)))) # (!\u1|U1|Mux1~14_combout\ & (\u1|U1|Mux0~12_combout\ $ (((\u1|U1|Mux2~11_combout\) # 
-- (\u1|U1|Mux3~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux1~14_combout\,
	datab => \u1|U1|Mux2~11_combout\,
	datac => \u1|U1|Mux0~12_combout\,
	datad => \u1|U1|Mux3~17_combout\,
	combout => \u2|Mux9~0_combout\);

-- Location: LCCOMB_X30_Y11_N30
\u2|tone[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(2) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(2))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|tone\(2),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux9~0_combout\,
	combout => \u2|tone\(2));

-- Location: FF_X29_Y10_N5
\u3|genspks:count11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[2]~1_combout\,
	asdata => \u2|tone\(2),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[2]~q\);

-- Location: LCCOMB_X29_Y10_N6
\u3|genspks:count11[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[3]~1_combout\ = (\u3|genspks:count11[3]~q\ & (!\u3|genspks:count11[2]~2\)) # (!\u3|genspks:count11[3]~q\ & ((\u3|genspks:count11[2]~2\) # (GND)))
-- \u3|genspks:count11[3]~2\ = CARRY((!\u3|genspks:count11[2]~2\) # (!\u3|genspks:count11[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|genspks:count11[3]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[2]~2\,
	combout => \u3|genspks:count11[3]~1_combout\,
	cout => \u3|genspks:count11[3]~2\);

-- Location: LCCOMB_X29_Y11_N18
\u2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux10~0_combout\ = (\u1|U1|Mux3~17_combout\ & (\u1|U1|Mux0~12_combout\ $ (((\u1|U1|Mux1~14_combout\) # (!\u1|U1|Mux2~11_combout\))))) # (!\u1|U1|Mux3~17_combout\ & ((\u1|U1|Mux2~11_combout\ $ (!\u1|U1|Mux1~14_combout\)) # (!\u1|U1|Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux2~11_combout\,
	datab => \u1|U1|Mux1~14_combout\,
	datac => \u1|U1|Mux3~17_combout\,
	datad => \u1|U1|Mux0~12_combout\,
	combout => \u2|Mux10~0_combout\);

-- Location: LCCOMB_X29_Y11_N12
\u2|tone[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(3) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(3))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|tone\(3),
	datac => \u2|Mux10~0_combout\,
	datad => \u2|Mux4~0clkctrl_outclk\,
	combout => \u2|tone\(3));

-- Location: FF_X29_Y10_N7
\u3|genspks:count11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[3]~1_combout\,
	asdata => \u2|tone\(3),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[3]~q\);

-- Location: LCCOMB_X29_Y10_N8
\u3|genspks:count11[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[4]~1_combout\ = (\u3|genspks:count11[4]~q\ & (\u3|genspks:count11[3]~2\ $ (GND))) # (!\u3|genspks:count11[4]~q\ & (!\u3|genspks:count11[3]~2\ & VCC))
-- \u3|genspks:count11[4]~2\ = CARRY((\u3|genspks:count11[4]~q\ & !\u3|genspks:count11[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|genspks:count11[4]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[3]~2\,
	combout => \u3|genspks:count11[4]~1_combout\,
	cout => \u3|genspks:count11[4]~2\);

-- Location: LCCOMB_X28_Y11_N24
\u2|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux11~0_combout\ = (\u1|U1|Mux2~11_combout\ & ((\u1|U1|Mux3~17_combout\) # (\u1|U1|Mux0~12_combout\ $ (!\u1|U1|Mux1~14_combout\)))) # (!\u1|U1|Mux2~11_combout\ & ((\u1|U1|Mux3~17_combout\ $ (\u1|U1|Mux1~14_combout\)) # (!\u1|U1|Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux0~12_combout\,
	datab => \u1|U1|Mux2~11_combout\,
	datac => \u1|U1|Mux3~17_combout\,
	datad => \u1|U1|Mux1~14_combout\,
	combout => \u2|Mux11~0_combout\);

-- Location: LCCOMB_X28_Y11_N2
\u2|tone[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(4) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(4))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|tone\(4),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux11~0_combout\,
	combout => \u2|tone\(4));

-- Location: FF_X29_Y10_N9
\u3|genspks:count11[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[4]~1_combout\,
	asdata => \u2|tone\(4),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[4]~q\);

-- Location: LCCOMB_X29_Y10_N10
\u3|genspks:count11[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[5]~1_combout\ = (\u3|genspks:count11[5]~q\ & (!\u3|genspks:count11[4]~2\)) # (!\u3|genspks:count11[5]~q\ & ((\u3|genspks:count11[4]~2\) # (GND)))
-- \u3|genspks:count11[5]~2\ = CARRY((!\u3|genspks:count11[4]~2\) # (!\u3|genspks:count11[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|genspks:count11[5]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[4]~2\,
	combout => \u3|genspks:count11[5]~1_combout\,
	cout => \u3|genspks:count11[5]~2\);

-- Location: LCCOMB_X28_Y11_N28
\u2|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux12~0_combout\ = ((\u1|U1|Mux3~17_combout\ $ (\u1|U1|Mux1~14_combout\)) # (!\u1|U1|Mux0~12_combout\)) # (!\u1|U1|Mux2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux2~11_combout\,
	datab => \u1|U1|Mux3~17_combout\,
	datac => \u1|U1|Mux0~12_combout\,
	datad => \u1|U1|Mux1~14_combout\,
	combout => \u2|Mux12~0_combout\);

-- Location: LCCOMB_X28_Y11_N4
\u2|tone[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(5) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(5))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|tone\(5),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux12~0_combout\,
	combout => \u2|tone\(5));

-- Location: FF_X29_Y10_N11
\u3|genspks:count11[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[5]~1_combout\,
	asdata => \u2|tone\(5),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[5]~q\);

-- Location: LCCOMB_X29_Y10_N12
\u3|genspks:count11[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[6]~1_combout\ = (\u3|genspks:count11[6]~q\ & (\u3|genspks:count11[5]~2\ $ (GND))) # (!\u3|genspks:count11[6]~q\ & (!\u3|genspks:count11[5]~2\ & VCC))
-- \u3|genspks:count11[6]~2\ = CARRY((\u3|genspks:count11[6]~q\ & !\u3|genspks:count11[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|genspks:count11[6]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[5]~2\,
	combout => \u3|genspks:count11[6]~1_combout\,
	cout => \u3|genspks:count11[6]~2\);

-- Location: LCCOMB_X29_Y11_N20
\u2|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux13~0_combout\ = (\u1|U1|Mux2~11_combout\ & ((\u1|U1|Mux3~17_combout\ & ((\u1|U1|Mux1~14_combout\) # (\u1|U1|Mux0~12_combout\))) # (!\u1|U1|Mux3~17_combout\ & (\u1|U1|Mux1~14_combout\ $ (!\u1|U1|Mux0~12_combout\))))) # (!\u1|U1|Mux2~11_combout\ & 
-- (((!\u1|U1|Mux1~14_combout\)) # (!\u1|U1|Mux3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux2~11_combout\,
	datab => \u1|U1|Mux3~17_combout\,
	datac => \u1|U1|Mux1~14_combout\,
	datad => \u1|U1|Mux0~12_combout\,
	combout => \u2|Mux13~0_combout\);

-- Location: LCCOMB_X29_Y11_N30
\u2|tone[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(6) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(6))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|tone\(6),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux13~0_combout\,
	combout => \u2|tone\(6));

-- Location: FF_X29_Y10_N13
\u3|genspks:count11[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[6]~1_combout\,
	asdata => \u2|tone\(6),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[6]~q\);

-- Location: LCCOMB_X29_Y10_N14
\u3|genspks:count11[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[7]~1_combout\ = (\u3|genspks:count11[7]~q\ & (!\u3|genspks:count11[6]~2\)) # (!\u3|genspks:count11[7]~q\ & ((\u3|genspks:count11[6]~2\) # (GND)))
-- \u3|genspks:count11[7]~2\ = CARRY((!\u3|genspks:count11[6]~2\) # (!\u3|genspks:count11[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|genspks:count11[7]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[6]~2\,
	combout => \u3|genspks:count11[7]~1_combout\,
	cout => \u3|genspks:count11[7]~2\);

-- Location: LCCOMB_X29_Y11_N16
\u2|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux14~0_combout\ = (\u1|U1|Mux1~14_combout\ & (((!\u1|U1|Mux2~11_combout\ & \u1|U1|Mux0~12_combout\)) # (!\u1|U1|Mux3~17_combout\))) # (!\u1|U1|Mux1~14_combout\ & ((\u1|U1|Mux0~12_combout\ & ((\u1|U1|Mux3~17_combout\))) # (!\u1|U1|Mux0~12_combout\ & 
-- (!\u1|U1|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux2~11_combout\,
	datab => \u1|U1|Mux0~12_combout\,
	datac => \u1|U1|Mux3~17_combout\,
	datad => \u1|U1|Mux1~14_combout\,
	combout => \u2|Mux14~0_combout\);

-- Location: LCCOMB_X29_Y10_N30
\u2|tone[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(7) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(7))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|tone\(7),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux14~0_combout\,
	combout => \u2|tone\(7));

-- Location: FF_X29_Y10_N15
\u3|genspks:count11[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[7]~1_combout\,
	asdata => \u2|tone\(7),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[7]~q\);

-- Location: LCCOMB_X29_Y10_N16
\u3|genspks:count11[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[8]~1_combout\ = (\u3|genspks:count11[8]~q\ & (\u3|genspks:count11[7]~2\ $ (GND))) # (!\u3|genspks:count11[8]~q\ & (!\u3|genspks:count11[7]~2\ & VCC))
-- \u3|genspks:count11[8]~2\ = CARRY((\u3|genspks:count11[8]~q\ & !\u3|genspks:count11[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|genspks:count11[8]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[7]~2\,
	combout => \u3|genspks:count11[8]~1_combout\,
	cout => \u3|genspks:count11[8]~2\);

-- Location: LCCOMB_X30_Y11_N6
\u2|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux15~0_combout\ = (\u1|U1|Mux2~11_combout\ & (((\u1|U1|Mux1~14_combout\)))) # (!\u1|U1|Mux2~11_combout\ & (((\u1|U1|Mux3~17_combout\ & !\u1|U1|Mux1~14_combout\)) # (!\u1|U1|Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux3~17_combout\,
	datab => \u1|U1|Mux2~11_combout\,
	datac => \u1|U1|Mux1~14_combout\,
	datad => \u1|U1|Mux0~12_combout\,
	combout => \u2|Mux15~0_combout\);

-- Location: LCCOMB_X30_Y11_N18
\u2|tone[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(8) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(8))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mux4~0clkctrl_outclk\,
	datab => \u2|tone\(8),
	datad => \u2|Mux15~0_combout\,
	combout => \u2|tone\(8));

-- Location: FF_X29_Y10_N17
\u3|genspks:count11[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[8]~1_combout\,
	asdata => \u2|tone\(8),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[8]~q\);

-- Location: LCCOMB_X29_Y10_N18
\u3|genspks:count11[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[9]~1_combout\ = (\u3|genspks:count11[9]~q\ & (!\u3|genspks:count11[8]~2\)) # (!\u3|genspks:count11[9]~q\ & ((\u3|genspks:count11[8]~2\) # (GND)))
-- \u3|genspks:count11[9]~2\ = CARRY((!\u3|genspks:count11[8]~2\) # (!\u3|genspks:count11[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|genspks:count11[9]~q\,
	datad => VCC,
	cin => \u3|genspks:count11[8]~2\,
	combout => \u3|genspks:count11[9]~1_combout\,
	cout => \u3|genspks:count11[9]~2\);

-- Location: LCCOMB_X28_Y11_N30
\u2|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux16~0_combout\ = (\u1|U1|Mux0~12_combout\ & ((\u1|U1|Mux1~14_combout\) # ((!\u1|U1|Mux2~11_combout\ & \u1|U1|Mux3~17_combout\)))) # (!\u1|U1|Mux0~12_combout\ & (\u1|U1|Mux1~14_combout\ $ (((\u1|U1|Mux2~11_combout\) # (\u1|U1|Mux3~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|U1|Mux0~12_combout\,
	datab => \u1|U1|Mux2~11_combout\,
	datac => \u1|U1|Mux3~17_combout\,
	datad => \u1|U1|Mux1~14_combout\,
	combout => \u2|Mux16~0_combout\);

-- Location: LCCOMB_X28_Y11_N14
\u2|tone[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(9) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(9))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|tone\(9),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux16~0_combout\,
	combout => \u2|tone\(9));

-- Location: FF_X29_Y10_N19
\u3|genspks:count11[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[9]~1_combout\,
	asdata => \u2|tone\(9),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[9]~q\);

-- Location: LCCOMB_X29_Y10_N20
\u3|genspks:count11[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|genspks:count11[10]~1_combout\ = \u3|genspks:count11[9]~2\ $ (!\u3|genspks:count11[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|genspks:count11[10]~q\,
	cin => \u3|genspks:count11[9]~2\,
	combout => \u3|genspks:count11[10]~1_combout\);

-- Location: LCCOMB_X26_Y11_N28
\u2|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux17~3_combout\ = (!\u1|counter\(3) & (!\u1|counter\(2) & (!\u1|counter\(1) & !\u1|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(3),
	datab => \u1|counter\(2),
	datac => \u1|counter\(1),
	datad => \u1|counter\(4),
	combout => \u2|Mux17~3_combout\);

-- Location: LCCOMB_X26_Y11_N10
\u2|Mux17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux17~15_combout\ = (!\u1|counter\(7) & (!\u1|counter\(5) & (\u2|Mux17~3_combout\ & !\u1|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|counter\(7),
	datab => \u1|counter\(5),
	datac => \u2|Mux17~3_combout\,
	datad => \u1|counter\(6),
	combout => \u2|Mux17~15_combout\);

-- Location: LCCOMB_X26_Y11_N30
\u2|tone[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|tone\(10) = (GLOBAL(\u2|Mux4~0clkctrl_outclk\) & (\u2|tone\(10))) # (!GLOBAL(\u2|Mux4~0clkctrl_outclk\) & ((!\u2|Mux17~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|tone\(10),
	datac => \u2|Mux4~0clkctrl_outclk\,
	datad => \u2|Mux17~15_combout\,
	combout => \u2|tone\(10));

-- Location: FF_X29_Y10_N21
\u3|genspks:count11[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|genspks:count11[10]~1_combout\,
	asdata => \u2|tone\(10),
	sload => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|genspks:count11[10]~q\);

-- Location: LCCOMB_X29_Y10_N26
\u3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~2_combout\ = (\u3|genspks:count11[8]~q\ & (\u3|genspks:count11[9]~q\ & \u3|genspks:count11[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|genspks:count11[8]~q\,
	datac => \u3|genspks:count11[9]~q\,
	datad => \u3|genspks:count11[10]~q\,
	combout => \u3|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y10_N22
\u3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~1_combout\ = (\u3|genspks:count11[5]~q\ & (\u3|genspks:count11[4]~q\ & (\u3|genspks:count11[7]~q\ & \u3|genspks:count11[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|genspks:count11[5]~q\,
	datab => \u3|genspks:count11[4]~q\,
	datac => \u3|genspks:count11[7]~q\,
	datad => \u3|genspks:count11[6]~q\,
	combout => \u3|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y10_N24
\u3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~0_combout\ = (\u3|genspks:count11[3]~q\ & (\u3|genspks:count11[0]~q\ & (\u3|genspks:count11[2]~q\ & \u3|genspks:count11[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|genspks:count11[3]~q\,
	datab => \u3|genspks:count11[0]~q\,
	datac => \u3|genspks:count11[2]~q\,
	datad => \u3|genspks:count11[1]~q\,
	combout => \u3|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y10_N28
\u3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal0~3_combout\ = (\u3|Equal0~2_combout\ & (\u3|Equal0~1_combout\ & \u3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal0~2_combout\,
	datac => \u3|Equal0~1_combout\,
	datad => \u3|Equal0~0_combout\,
	combout => \u3|Equal0~3_combout\);

-- Location: FF_X29_Y10_N29
\u3|fullspks\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \u3|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|fullspks~q\);

-- Location: CLKCTRL_G6
\u3|fullspks~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|fullspks~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|fullspks~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y23_N18
\u3|delayspks:count2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|delayspks:count2~0_combout\ = !\u3|delayspks:count2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|delayspks:count2~q\,
	combout => \u3|delayspks:count2~0_combout\);

-- Location: FF_X31_Y23_N19
\u3|delayspks:count2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|fullspks~clkctrl_outclk\,
	d => \u3|delayspks:count2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|delayspks:count2~q\);

-- Location: LCCOMB_X31_Y23_N0
\u3|spks~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|spks~0_combout\ = !\u3|delayspks:count2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|delayspks:count2~q\,
	combout => \u3|spks~0_combout\);

-- Location: FF_X31_Y23_N1
\u3|spks\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|fullspks~clkctrl_outclk\,
	d => \u3|spks~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|spks~q\);

ww_code1(0) <= \code1[0]~output_o\;

ww_code1(1) <= \code1[1]~output_o\;

ww_code1(2) <= \code1[2]~output_o\;

ww_code1(3) <= \code1[3]~output_o\;

ww_high1 <= \high1~output_o\;

ww_spkout <= \spkout~output_o\;
END structure;


