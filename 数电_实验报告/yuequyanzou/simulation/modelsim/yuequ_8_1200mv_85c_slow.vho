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

-- DATE "07/16/2018 17:29:19"

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

ENTITY 	yuanlitu IS
    PORT (
	highi : OUT std_logic;
	clk : IN std_logic;
	spkout : OUT std_logic;
	clk25MHz : IN std_logic;
	pin_name1 : OUT std_logic;
	pin_name2 : OUT std_logic;
	pin_name3 : OUT std_logic;
	pin_name4 : OUT std_logic;
	pin_name5 : OUT std_logic;
	pin_name6 : OUT std_logic;
	pin_name7 : OUT std_logic;
	pin_name8 : OUT std_logic;
	pin_name9 : OUT std_logic;
	pin_name10 : OUT std_logic;
	pin_name11 : OUT std_logic;
	code : OUT std_logic_vector(3 DOWNTO 0)
	);
END yuanlitu;

-- Design Ports Information
-- highi	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spkout	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name5	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name6	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name7	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name8	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name9	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name10	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name11	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[2]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- code[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk25MHz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF yuanlitu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_highi : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_spkout : std_logic;
SIGNAL ww_clk25MHz : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name6 : std_logic;
SIGNAL ww_pin_name7 : std_logic;
SIGNAL ww_pin_name8 : std_logic;
SIGNAL ww_pin_name9 : std_logic;
SIGNAL ww_pin_name10 : std_logic;
SIGNAL ww_pin_name11 : std_logic;
SIGNAL ww_code : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|fullspks~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk25MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \highi~output_o\ : std_logic;
SIGNAL \spkout~output_o\ : std_logic;
SIGNAL \pin_name1~output_o\ : std_logic;
SIGNAL \pin_name2~output_o\ : std_logic;
SIGNAL \pin_name3~output_o\ : std_logic;
SIGNAL \pin_name4~output_o\ : std_logic;
SIGNAL \pin_name5~output_o\ : std_logic;
SIGNAL \pin_name6~output_o\ : std_logic;
SIGNAL \pin_name7~output_o\ : std_logic;
SIGNAL \pin_name8~output_o\ : std_logic;
SIGNAL \pin_name9~output_o\ : std_logic;
SIGNAL \pin_name10~output_o\ : std_logic;
SIGNAL \pin_name11~output_o\ : std_logic;
SIGNAL \code[3]~output_o\ : std_logic;
SIGNAL \code[2]~output_o\ : std_logic;
SIGNAL \code[1]~output_o\ : std_logic;
SIGNAL \code[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|counter[0]~18_combout\ : std_logic;
SIGNAL \inst|counter[3]~11\ : std_logic;
SIGNAL \inst|counter[4]~12_combout\ : std_logic;
SIGNAL \inst|counter[4]~13\ : std_logic;
SIGNAL \inst|counter[5]~14_combout\ : std_logic;
SIGNAL \inst|counter[5]~15\ : std_logic;
SIGNAL \inst|counter[6]~16_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|counter[1]~6_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|counter[1]~7\ : std_logic;
SIGNAL \inst|counter[2]~8_combout\ : std_logic;
SIGNAL \inst|counter[2]~9\ : std_logic;
SIGNAL \inst|counter[3]~10_combout\ : std_logic;
SIGNAL \inst|U1|Mux0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|U1|Mux0~0_combout\ : std_logic;
SIGNAL \inst|U1|Mux0~4_combout\ : std_logic;
SIGNAL \inst|U1|Mux0~1_combout\ : std_logic;
SIGNAL \inst|U1|Mux0~2_combout\ : std_logic;
SIGNAL \inst|U1|Mux0~3_combout\ : std_logic;
SIGNAL \inst|U1|Mux0~5_combout\ : std_logic;
SIGNAL \inst|U1|Mux0~7_combout\ : std_logic;
SIGNAL \inst|U1|Mux1~0_combout\ : std_logic;
SIGNAL \inst|U1|Mux1~5_combout\ : std_logic;
SIGNAL \inst|U1|Mux1~1_combout\ : std_logic;
SIGNAL \inst|U1|Mux1~2_combout\ : std_logic;
SIGNAL \inst|U1|Mux1~3_combout\ : std_logic;
SIGNAL \inst|U1|Mux1~4_combout\ : std_logic;
SIGNAL \inst|U1|Mux1~6_combout\ : std_logic;
SIGNAL \inst|U1|Mux1~7_combout\ : std_logic;
SIGNAL \inst|U1|Mux3~0_combout\ : std_logic;
SIGNAL \inst|U1|Mux3~1_combout\ : std_logic;
SIGNAL \inst|U1|Mux3~2_combout\ : std_logic;
SIGNAL \inst|U1|Mux3~3_combout\ : std_logic;
SIGNAL \inst|U1|Mux3~4_combout\ : std_logic;
SIGNAL \inst|U1|Mux3~5_combout\ : std_logic;
SIGNAL \inst|U1|Mux2~2_combout\ : std_logic;
SIGNAL \inst|U1|Mux2~4_combout\ : std_logic;
SIGNAL \inst|U1|Mux2~3_combout\ : std_logic;
SIGNAL \inst|U1|Mux2~1_combout\ : std_logic;
SIGNAL \inst|U1|Mux2~5_combout\ : std_logic;
SIGNAL \inst|U1|Mux2~6_combout\ : std_logic;
SIGNAL \inst|U1|Mux2~0_combout\ : std_logic;
SIGNAL \inst|U1|Mux2~7_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \inst1|highi~combout\ : std_logic;
SIGNAL \clk25MHz~input_o\ : std_logic;
SIGNAL \clk25MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|divideclk:count4[0]~0_combout\ : std_logic;
SIGNAL \inst2|divideclk:count4[0]~q\ : std_logic;
SIGNAL \inst2|divideclk:count4[1]~0_combout\ : std_logic;
SIGNAL \inst2|divideclk:count4[1]~q\ : std_logic;
SIGNAL \inst2|divideclk:count4[2]~0_combout\ : std_logic;
SIGNAL \inst2|divideclk:count4[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|divideclk:count4[2]~q\ : std_logic;
SIGNAL \inst2|divideclk:count4[3]~0_combout\ : std_logic;
SIGNAL \inst2|divideclk:count4[3]~q\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|genspks:count11[0]~1_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[0]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[0]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[1]~1_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[1]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[1]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[2]~1_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[2]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[2]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[3]~1_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[3]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[3]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[4]~1_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[4]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[4]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[5]~1_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[5]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[5]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[6]~1_combout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[6]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[6]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[7]~1_combout\ : std_logic;
SIGNAL \inst1|Mux14~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[7]~q\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[7]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[8]~1_combout\ : std_logic;
SIGNAL \inst1|Mux15~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[8]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[8]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[9]~1_combout\ : std_logic;
SIGNAL \inst1|Mux16~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[9]~q\ : std_logic;
SIGNAL \inst2|genspks:count11[9]~2\ : std_logic;
SIGNAL \inst2|genspks:count11[10]~1_combout\ : std_logic;
SIGNAL \inst1|Mux17~0_combout\ : std_logic;
SIGNAL \inst2|genspks:count11[10]~q\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|fullspks~feeder_combout\ : std_logic;
SIGNAL \inst2|fullspks~q\ : std_logic;
SIGNAL \inst2|fullspks~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|delayspks:count2~0_combout\ : std_logic;
SIGNAL \inst2|delayspks:count2~q\ : std_logic;
SIGNAL \inst2|spks~0_combout\ : std_logic;
SIGNAL \inst2|spks~q\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst|counter\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|code\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|tone\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

highi <= ww_highi;
ww_clk <= clk;
spkout <= ww_spkout;
ww_clk25MHz <= clk25MHz;
pin_name1 <= ww_pin_name1;
pin_name2 <= ww_pin_name2;
pin_name3 <= ww_pin_name3;
pin_name4 <= ww_pin_name4;
pin_name5 <= ww_pin_name5;
pin_name6 <= ww_pin_name6;
pin_name7 <= ww_pin_name7;
pin_name8 <= ww_pin_name8;
pin_name9 <= ww_pin_name9;
pin_name10 <= ww_pin_name10;
pin_name11 <= ww_pin_name11;
code <= ww_code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|Mux4~0_combout\);

\inst2|fullspks~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|fullspks~q\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\clk25MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk25MHz~input_o\);
\ALT_INV_rtl~0clkctrl_outclk\ <= NOT \rtl~0clkctrl_outclk\;
\inst|ALT_INV_Equal0~2_combout\ <= NOT \inst|Equal0~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\highi~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|highi~combout\,
	devoe => ww_devoe,
	o => \highi~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\spkout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|spks~q\,
	devoe => ww_devoe,
	o => \spkout~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\pin_name1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name1~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\pin_name2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name2~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\pin_name3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name3~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\pin_name4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name4~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\pin_name5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pin_name5~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\pin_name6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pin_name6~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\pin_name7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name7~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\pin_name8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name8~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\pin_name9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name9~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\pin_name10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name10~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\pin_name11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pin_name11~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\code[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \code[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\code[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|code\(2),
	devoe => ww_devoe,
	o => \code[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\code[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|code\(1),
	devoe => ww_devoe,
	o => \code[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\code[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|code\(0),
	devoe => ww_devoe,
	o => \code[0]~output_o\);

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

-- Location: LCCOMB_X30_Y12_N12
\inst|counter[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~18_combout\ = !\inst|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	combout => \inst|counter[0]~18_combout\);

-- Location: LCCOMB_X30_Y12_N20
\inst|counter[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[3]~10_combout\ = (\inst|counter\(3) & (\inst|counter[2]~9\ $ (GND))) # (!\inst|counter\(3) & (!\inst|counter[2]~9\ & VCC))
-- \inst|counter[3]~11\ = CARRY((\inst|counter\(3) & !\inst|counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datad => VCC,
	cin => \inst|counter[2]~9\,
	combout => \inst|counter[3]~10_combout\,
	cout => \inst|counter[3]~11\);

-- Location: LCCOMB_X30_Y12_N22
\inst|counter[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[4]~12_combout\ = (\inst|counter\(4) & (!\inst|counter[3]~11\)) # (!\inst|counter\(4) & ((\inst|counter[3]~11\) # (GND)))
-- \inst|counter[4]~13\ = CARRY((!\inst|counter[3]~11\) # (!\inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datad => VCC,
	cin => \inst|counter[3]~11\,
	combout => \inst|counter[4]~12_combout\,
	cout => \inst|counter[4]~13\);

-- Location: FF_X30_Y12_N23
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|counter[4]~12_combout\,
	clrn => \inst|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X30_Y12_N24
\inst|counter[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[5]~14_combout\ = (\inst|counter\(5) & (\inst|counter[4]~13\ $ (GND))) # (!\inst|counter\(5) & (!\inst|counter[4]~13\ & VCC))
-- \inst|counter[5]~15\ = CARRY((\inst|counter\(5) & !\inst|counter[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(5),
	datad => VCC,
	cin => \inst|counter[4]~13\,
	combout => \inst|counter[5]~14_combout\,
	cout => \inst|counter[5]~15\);

-- Location: FF_X30_Y12_N25
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|counter[5]~14_combout\,
	clrn => \inst|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X30_Y12_N26
\inst|counter[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[6]~16_combout\ = \inst|counter[5]~15\ $ (\inst|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(6),
	cin => \inst|counter[5]~15\,
	combout => \inst|counter[6]~16_combout\);

-- Location: FF_X30_Y12_N27
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|counter[6]~16_combout\,
	clrn => \inst|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X30_Y12_N8
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|counter\(6) & (!\inst|counter\(5) & (\inst|counter\(0) & !\inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datab => \inst|counter\(5),
	datac => \inst|counter\(0),
	datad => \inst|counter\(4),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y12_N16
\inst|counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~6_combout\ = (\inst|counter\(0) & (\inst|counter\(1) $ (VCC))) # (!\inst|counter\(0) & (\inst|counter\(1) & VCC))
-- \inst|counter[1]~7\ = CARRY((\inst|counter\(0) & \inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datad => VCC,
	combout => \inst|counter[1]~6_combout\,
	cout => \inst|counter[1]~7\);

-- Location: FF_X30_Y12_N17
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|counter[1]~6_combout\,
	clrn => \inst|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X30_Y12_N6
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~1_combout\ & (!\inst|counter\(2) & (!\inst|counter\(1) & \inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(3),
	combout => \inst|Equal0~2_combout\);

-- Location: FF_X30_Y12_N9
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \inst|counter[0]~18_combout\,
	clrn => \inst|ALT_INV_Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X30_Y12_N18
\inst|counter[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~8_combout\ = (\inst|counter\(2) & (!\inst|counter[1]~7\)) # (!\inst|counter\(2) & ((\inst|counter[1]~7\) # (GND)))
-- \inst|counter[2]~9\ = CARRY((!\inst|counter[1]~7\) # (!\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datad => VCC,
	cin => \inst|counter[1]~7\,
	combout => \inst|counter[2]~8_combout\,
	cout => \inst|counter[2]~9\);

-- Location: FF_X30_Y12_N19
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|counter[2]~8_combout\,
	clrn => \inst|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: FF_X30_Y12_N21
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|counter[3]~10_combout\,
	clrn => \inst|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X29_Y12_N30
\inst|U1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux0~6_combout\ = (\inst|counter\(3) & ((\inst|counter\(1)) # ((\inst|counter\(2))))) # (!\inst|counter\(3) & (\inst|counter\(0) $ (((\inst|counter\(1) & !\inst|counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|U1|Mux0~6_combout\);

-- Location: LCCOMB_X29_Y12_N28
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|counter\(4) & (\inst|counter\(6) & !\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(4),
	datac => \inst|counter\(6),
	datad => \inst|counter\(5),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y12_N26
\inst|U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux0~0_combout\ = (\inst|counter\(5) & (!\inst|counter\(0) & (\inst|counter\(2) $ (!\inst|counter\(4))))) # (!\inst|counter\(5) & ((\inst|counter\(2)) # ((\inst|counter\(0) & \inst|counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(5),
	datac => \inst|counter\(0),
	datad => \inst|counter\(4),
	combout => \inst|U1|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y12_N4
\inst|U1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux0~4_combout\ = (\inst|counter\(4) & ((\inst|counter\(2) $ (!\inst|counter\(0))) # (!\inst|counter\(5)))) # (!\inst|counter\(4) & (\inst|counter\(2) & ((!\inst|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(5),
	datac => \inst|counter\(0),
	datad => \inst|counter\(4),
	combout => \inst|U1|Mux0~4_combout\);

-- Location: LCCOMB_X29_Y12_N8
\inst|U1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux0~1_combout\ = (\inst|counter\(0) & (\inst|counter\(4) $ (((\inst|counter\(5) & !\inst|counter\(2)))))) # (!\inst|counter\(0) & ((\inst|counter\(4)) # ((\inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(5),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|U1|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y12_N16
\inst|U1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux0~2_combout\ = (\inst|counter\(0) & (\inst|counter\(4) $ (((!\inst|counter\(2)))))) # (!\inst|counter\(0) & ((\inst|counter\(4) & (!\inst|counter\(5))) # (!\inst|counter\(4) & (\inst|counter\(5) & \inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(5),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|U1|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y12_N24
\inst|U1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux0~3_combout\ = (\inst|counter\(3) & ((\inst|counter\(1)) # ((!\inst|U1|Mux0~1_combout\)))) # (!\inst|counter\(3) & (!\inst|counter\(1) & ((\inst|U1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(1),
	datac => \inst|U1|Mux0~1_combout\,
	datad => \inst|U1|Mux0~2_combout\,
	combout => \inst|U1|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y12_N18
\inst|U1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux0~5_combout\ = (\inst|counter\(1) & ((\inst|U1|Mux0~3_combout\ & ((\inst|U1|Mux0~4_combout\))) # (!\inst|U1|Mux0~3_combout\ & (!\inst|U1|Mux0~0_combout\)))) # (!\inst|counter\(1) & (((\inst|U1|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux0~0_combout\,
	datab => \inst|counter\(1),
	datac => \inst|U1|Mux0~4_combout\,
	datad => \inst|U1|Mux0~3_combout\,
	combout => \inst|U1|Mux0~5_combout\);

-- Location: LCCOMB_X29_Y12_N20
\inst|U1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux0~7_combout\ = (\inst|U1|Mux0~6_combout\ & (((!\inst|counter\(6) & \inst|U1|Mux0~5_combout\)))) # (!\inst|U1|Mux0~6_combout\ & ((\inst|Equal0~0_combout\) # ((!\inst|counter\(6) & \inst|U1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux0~6_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|counter\(6),
	datad => \inst|U1|Mux0~5_combout\,
	combout => \inst|U1|Mux0~7_combout\);

-- Location: LCCOMB_X31_Y12_N14
\inst|U1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux1~0_combout\ = (\inst|counter\(1) & (((!\inst|counter\(3))))) # (!\inst|counter\(1) & (!\inst|counter\(2) & (\inst|counter\(0) & \inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|counter\(0),
	datad => \inst|counter\(3),
	combout => \inst|U1|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y12_N12
\inst|U1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux1~5_combout\ = (\inst|counter\(1) & ((\inst|counter\(2)) # ((\inst|counter\(3)) # (!\inst|counter\(0))))) # (!\inst|counter\(1) & (\inst|counter\(0) $ (((!\inst|counter\(2) & \inst|counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|counter\(0),
	datad => \inst|counter\(3),
	combout => \inst|U1|Mux1~5_combout\);

-- Location: LCCOMB_X31_Y12_N4
\inst|U1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux1~1_combout\ = (\inst|counter\(1) & (\inst|counter\(0) & ((\inst|counter\(2)) # (\inst|counter\(3))))) # (!\inst|counter\(1) & (\inst|counter\(2) & (!\inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|counter\(0),
	datad => \inst|counter\(3),
	combout => \inst|U1|Mux1~1_combout\);

-- Location: LCCOMB_X31_Y12_N30
\inst|U1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux1~2_combout\ = (\inst|counter\(1) & (\inst|counter\(0) $ (((!\inst|counter\(2) & !\inst|counter\(3)))))) # (!\inst|counter\(1) & ((\inst|counter\(2)) # ((\inst|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|counter\(0),
	datad => \inst|counter\(3),
	combout => \inst|U1|Mux1~2_combout\);

-- Location: LCCOMB_X31_Y12_N6
\inst|U1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux1~3_combout\ = (\inst|counter\(2) & ((\inst|counter\(1) & ((\inst|counter\(3)))) # (!\inst|counter\(1) & (\inst|counter\(0) & !\inst|counter\(3))))) # (!\inst|counter\(2) & (\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(3),
	combout => \inst|U1|Mux1~3_combout\);

-- Location: LCCOMB_X31_Y12_N20
\inst|U1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux1~4_combout\ = (\inst|counter\(5) & ((\inst|counter\(4)) # ((\inst|U1|Mux1~2_combout\)))) # (!\inst|counter\(5) & (!\inst|counter\(4) & ((!\inst|U1|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datab => \inst|counter\(4),
	datac => \inst|U1|Mux1~2_combout\,
	datad => \inst|U1|Mux1~3_combout\,
	combout => \inst|U1|Mux1~4_combout\);

-- Location: LCCOMB_X31_Y12_N16
\inst|U1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux1~6_combout\ = (\inst|counter\(4) & ((\inst|U1|Mux1~4_combout\ & (\inst|U1|Mux1~5_combout\)) # (!\inst|U1|Mux1~4_combout\ & ((!\inst|U1|Mux1~1_combout\))))) # (!\inst|counter\(4) & (((\inst|U1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux1~5_combout\,
	datab => \inst|counter\(4),
	datac => \inst|U1|Mux1~1_combout\,
	datad => \inst|U1|Mux1~4_combout\,
	combout => \inst|U1|Mux1~6_combout\);

-- Location: LCCOMB_X31_Y12_N8
\inst|U1|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux1~7_combout\ = (\inst|counter\(6) & (\inst|Equal0~0_combout\ & (\inst|U1|Mux1~0_combout\))) # (!\inst|counter\(6) & ((\inst|U1|Mux1~6_combout\) # ((\inst|Equal0~0_combout\ & \inst|U1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datab => \inst|Equal0~0_combout\,
	datac => \inst|U1|Mux1~0_combout\,
	datad => \inst|U1|Mux1~6_combout\,
	combout => \inst|U1|Mux1~7_combout\);

-- Location: LCCOMB_X30_Y12_N28
\inst|U1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux3~0_combout\ = (\inst|counter\(2) & ((\inst|counter\(0)) # (\inst|counter\(5) $ (\inst|counter\(3))))) # (!\inst|counter\(2) & ((\inst|counter\(5) $ (\inst|counter\(3))) # (!\inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(5),
	datac => \inst|counter\(0),
	datad => \inst|counter\(3),
	combout => \inst|U1|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y12_N4
\inst|U1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux3~1_combout\ = (\inst|counter\(2) & (\inst|counter\(5) $ (((\inst|counter\(0) & !\inst|counter\(1)))))) # (!\inst|counter\(2) & ((\inst|counter\(5)) # ((\inst|counter\(0)) # (\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(5),
	datac => \inst|counter\(0),
	datad => \inst|counter\(1),
	combout => \inst|U1|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y12_N14
\inst|U1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux3~2_combout\ = (\inst|U1|Mux3~0_combout\ & (((\inst|U1|Mux3~1_combout\) # (\inst|counter\(3))))) # (!\inst|U1|Mux3~0_combout\ & ((\inst|counter\(1)) # ((\inst|U1|Mux3~1_combout\ & !\inst|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|U1|Mux3~0_combout\,
	datac => \inst|U1|Mux3~1_combout\,
	datad => \inst|counter\(3),
	combout => \inst|U1|Mux3~2_combout\);

-- Location: LCCOMB_X30_Y12_N2
\inst|U1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux3~3_combout\ = (\inst|counter\(2)) # ((!\inst|counter\(3)) # (!\inst|U1|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|U1|Mux3~1_combout\,
	datad => \inst|counter\(3),
	combout => \inst|U1|Mux3~3_combout\);

-- Location: LCCOMB_X30_Y12_N0
\inst|U1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux3~4_combout\ = (\inst|counter\(1) & (\inst|U1|Mux3~0_combout\)) # (!\inst|counter\(1) & ((\inst|U1|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|U1|Mux3~0_combout\,
	datac => \inst|counter\(1),
	datad => \inst|U1|Mux3~3_combout\,
	combout => \inst|U1|Mux3~4_combout\);

-- Location: LCCOMB_X30_Y12_N10
\inst|U1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux3~5_combout\ = (\inst|counter\(6)) # ((\inst|U1|Mux3~2_combout\ & ((\inst|U1|Mux3~4_combout\) # (!\inst|counter\(4)))) # (!\inst|U1|Mux3~2_combout\ & (\inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datab => \inst|U1|Mux3~2_combout\,
	datac => \inst|counter\(4),
	datad => \inst|U1|Mux3~4_combout\,
	combout => \inst|U1|Mux3~5_combout\);

-- Location: LCCOMB_X31_Y12_N10
\inst|U1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux2~2_combout\ = (\inst|counter\(1) & (((\inst|counter\(0))))) # (!\inst|counter\(1) & ((\inst|counter\(3) & ((\inst|counter\(5)) # (!\inst|counter\(0)))) # (!\inst|counter\(3) & (\inst|counter\(0) $ (\inst|counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(3),
	datac => \inst|counter\(0),
	datad => \inst|counter\(5),
	combout => \inst|U1|Mux2~2_combout\);

-- Location: LCCOMB_X31_Y12_N28
\inst|U1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux2~4_combout\ = (\inst|counter\(0) & (!\inst|counter\(3) & (\inst|counter\(1) $ (\inst|counter\(5))))) # (!\inst|counter\(0) & (\inst|counter\(1) & ((\inst|counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(3),
	datac => \inst|counter\(0),
	datad => \inst|counter\(5),
	combout => \inst|U1|Mux2~4_combout\);

-- Location: LCCOMB_X31_Y12_N22
\inst|U1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux2~3_combout\ = (\inst|counter\(1) & ((\inst|counter\(3) & (\inst|counter\(0) & \inst|counter\(5))) # (!\inst|counter\(3) & (!\inst|counter\(0) & !\inst|counter\(5))))) # (!\inst|counter\(1) & (\inst|counter\(0) $ (((\inst|counter\(3) & 
-- \inst|counter\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(3),
	datac => \inst|counter\(0),
	datad => \inst|counter\(5),
	combout => \inst|U1|Mux2~3_combout\);

-- Location: LCCOMB_X31_Y12_N18
\inst|U1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux2~1_combout\ = (!\inst|counter\(6) & ((\inst|counter\(4) & ((!\inst|counter\(2)) # (!\inst|counter\(0)))) # (!\inst|counter\(4) & ((\inst|counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datab => \inst|counter\(4),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|U1|Mux2~1_combout\);

-- Location: LCCOMB_X31_Y12_N0
\inst|U1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux2~5_combout\ = (\inst|U1|Mux2~2_combout\ & (((\inst|U1|Mux2~1_combout\)) # (!\inst|U1|Mux2~4_combout\))) # (!\inst|U1|Mux2~2_combout\ & ((\inst|U1|Mux2~3_combout\ & ((!\inst|U1|Mux2~1_combout\))) # (!\inst|U1|Mux2~3_combout\ & 
-- (!\inst|U1|Mux2~4_combout\ & \inst|U1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux2~2_combout\,
	datab => \inst|U1|Mux2~4_combout\,
	datac => \inst|U1|Mux2~3_combout\,
	datad => \inst|U1|Mux2~1_combout\,
	combout => \inst|U1|Mux2~5_combout\);

-- Location: LCCOMB_X31_Y12_N26
\inst|U1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux2~6_combout\ = (\inst|U1|Mux2~4_combout\ & (!\inst|U1|Mux2~3_combout\ & ((\inst|U1|Mux2~2_combout\) # (\inst|U1|Mux2~1_combout\)))) # (!\inst|U1|Mux2~4_combout\ & (((\inst|U1|Mux2~3_combout\ & \inst|U1|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux2~2_combout\,
	datab => \inst|U1|Mux2~4_combout\,
	datac => \inst|U1|Mux2~3_combout\,
	datad => \inst|U1|Mux2~1_combout\,
	combout => \inst|U1|Mux2~6_combout\);

-- Location: LCCOMB_X30_Y12_N30
\inst|U1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux2~0_combout\ = (\inst|counter\(6) & (((!\inst|counter\(4) & \inst|counter\(2))) # (!\inst|counter\(0)))) # (!\inst|counter\(6) & (\inst|counter\(4) & ((\inst|counter\(0)) # (\inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datab => \inst|counter\(0),
	datac => \inst|counter\(4),
	datad => \inst|counter\(2),
	combout => \inst|U1|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y12_N24
\inst|U1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|U1|Mux2~7_combout\ = \inst|U1|Mux2~6_combout\ $ (((!\inst|U1|Mux2~5_combout\ & !\inst|U1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|U1|Mux2~5_combout\,
	datac => \inst|U1|Mux2~6_combout\,
	datad => \inst|U1|Mux2~0_combout\,
	combout => \inst|U1|Mux2~7_combout\);

-- Location: LCCOMB_X32_Y12_N30
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst|U1|Mux1~7_combout\ & (!\inst|U1|Mux3~5_combout\ & (\inst|U1|Mux0~7_combout\ $ (!\inst|U1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux1~7_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux3~5_combout\,
	datad => \inst|U1|Mux2~7_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: CLKCTRL_G6
\inst1|Mux4~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X30_Y13_N18
\inst1|highi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|highi~combout\ = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (\inst1|highi~combout\)) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst|U1|Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|highi~combout\,
	datac => \inst|U1|Mux0~7_combout\,
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|highi~combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk25MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk25MHz,
	o => \clk25MHz~input_o\);

-- Location: CLKCTRL_G2
\clk25MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk25MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk25MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N10
\inst2|divideclk:count4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|divideclk:count4[0]~0_combout\ = !\inst2|divideclk:count4[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|divideclk:count4[0]~q\,
	combout => \inst2|divideclk:count4[0]~0_combout\);

-- Location: FF_X1_Y11_N11
\inst2|divideclk:count4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25MHz~inputclkctrl_outclk\,
	d => \inst2|divideclk:count4[0]~0_combout\,
	clrn => \ALT_INV_rtl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|divideclk:count4[0]~q\);

-- Location: LCCOMB_X1_Y11_N24
\inst2|divideclk:count4[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|divideclk:count4[1]~0_combout\ = \inst2|divideclk:count4[0]~q\ $ (\inst2|divideclk:count4[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|divideclk:count4[0]~q\,
	datac => \inst2|divideclk:count4[1]~q\,
	combout => \inst2|divideclk:count4[1]~0_combout\);

-- Location: FF_X1_Y11_N25
\inst2|divideclk:count4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25MHz~inputclkctrl_outclk\,
	d => \inst2|divideclk:count4[1]~0_combout\,
	clrn => \ALT_INV_rtl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|divideclk:count4[1]~q\);

-- Location: LCCOMB_X1_Y11_N28
\inst2|divideclk:count4[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|divideclk:count4[2]~0_combout\ = \inst2|divideclk:count4[2]~q\ $ (((\inst2|divideclk:count4[0]~q\ & \inst2|divideclk:count4[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|divideclk:count4[0]~q\,
	datab => \inst2|divideclk:count4[1]~q\,
	datad => \inst2|divideclk:count4[2]~q\,
	combout => \inst2|divideclk:count4[2]~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\inst2|divideclk:count4[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|divideclk:count4[2]~feeder_combout\ = \inst2|divideclk:count4[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|divideclk:count4[2]~0_combout\,
	combout => \inst2|divideclk:count4[2]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\inst2|divideclk:count4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25MHz~inputclkctrl_outclk\,
	d => \inst2|divideclk:count4[2]~feeder_combout\,
	clrn => \ALT_INV_rtl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|divideclk:count4[2]~q\);

-- Location: LCCOMB_X1_Y11_N20
\inst2|divideclk:count4[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|divideclk:count4[3]~0_combout\ = \inst2|divideclk:count4[3]~q\ $ (((\inst2|divideclk:count4[2]~q\ & (\inst2|divideclk:count4[1]~q\ & \inst2|divideclk:count4[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|divideclk:count4[2]~q\,
	datab => \inst2|divideclk:count4[1]~q\,
	datac => \inst2|divideclk:count4[3]~q\,
	datad => \inst2|divideclk:count4[0]~q\,
	combout => \inst2|divideclk:count4[3]~0_combout\);

-- Location: FF_X1_Y11_N21
\inst2|divideclk:count4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25MHz~input_o\,
	d => \inst2|divideclk:count4[3]~0_combout\,
	clrn => \ALT_INV_rtl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|divideclk:count4[3]~q\);

-- Location: LCCOMB_X1_Y11_N26
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\inst2|divideclk:count4[2]~q\ & \inst2|divideclk:count4[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|divideclk:count4[2]~q\,
	datad => \inst2|divideclk:count4[3]~q\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X33_Y13_N0
\inst2|genspks:count11[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[0]~1_combout\ = \inst2|genspks:count11[0]~q\ $ (VCC)
-- \inst2|genspks:count11[0]~2\ = CARRY(\inst2|genspks:count11[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|genspks:count11[0]~q\,
	datad => VCC,
	combout => \inst2|genspks:count11[0]~1_combout\,
	cout => \inst2|genspks:count11[0]~2\);

-- Location: LCCOMB_X30_Y13_N4
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst|U1|Mux2~7_combout\ & (((\inst|U1|Mux1~7_combout\) # (!\inst|U1|Mux3~5_combout\)) # (!\inst|U1|Mux0~7_combout\))) # (!\inst|U1|Mux2~7_combout\ & ((\inst|U1|Mux0~7_combout\) # ((\inst|U1|Mux1~7_combout\ & 
-- !\inst|U1|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux2~7_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux3~5_combout\,
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y13_N20
\inst1|tone[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(0) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|tone\(0)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (!\inst1|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux7~0_combout\,
	datac => \inst1|Mux4~0clkctrl_outclk\,
	datad => \inst1|tone\(0),
	combout => \inst1|tone\(0));

-- Location: FF_X33_Y13_N1
\inst2|genspks:count11[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[0]~1_combout\,
	asdata => \inst1|tone\(0),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[0]~q\);

-- Location: LCCOMB_X33_Y13_N2
\inst2|genspks:count11[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[1]~1_combout\ = (\inst2|genspks:count11[1]~q\ & (!\inst2|genspks:count11[0]~2\)) # (!\inst2|genspks:count11[1]~q\ & ((\inst2|genspks:count11[0]~2\) # (GND)))
-- \inst2|genspks:count11[1]~2\ = CARRY((!\inst2|genspks:count11[0]~2\) # (!\inst2|genspks:count11[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|genspks:count11[1]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[0]~2\,
	combout => \inst2|genspks:count11[1]~1_combout\,
	cout => \inst2|genspks:count11[1]~2\);

-- Location: LCCOMB_X30_Y13_N14
\inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (\inst|U1|Mux1~7_combout\ & ((\inst|U1|Mux3~5_combout\) # (\inst|U1|Mux2~7_combout\ $ (!\inst|U1|Mux0~7_combout\)))) # (!\inst|U1|Mux1~7_combout\ & ((\inst|U1|Mux2~7_combout\ & ((!\inst|U1|Mux0~7_combout\))) # 
-- (!\inst|U1|Mux2~7_combout\ & (\inst|U1|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux3~5_combout\,
	datab => \inst|U1|Mux2~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux0~7_combout\,
	combout => \inst1|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y13_N26
\inst1|tone[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(1) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|tone\(1)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (!\inst1|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux8~0_combout\,
	datac => \inst1|tone\(1),
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|tone\(1));

-- Location: FF_X33_Y13_N3
\inst2|genspks:count11[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[1]~1_combout\,
	asdata => \inst1|tone\(1),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[1]~q\);

-- Location: LCCOMB_X33_Y13_N4
\inst2|genspks:count11[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[2]~1_combout\ = (\inst2|genspks:count11[2]~q\ & (\inst2|genspks:count11[1]~2\ $ (GND))) # (!\inst2|genspks:count11[2]~q\ & (!\inst2|genspks:count11[1]~2\ & VCC))
-- \inst2|genspks:count11[2]~2\ = CARRY((\inst2|genspks:count11[2]~q\ & !\inst2|genspks:count11[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|genspks:count11[2]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[1]~2\,
	combout => \inst2|genspks:count11[2]~1_combout\,
	cout => \inst2|genspks:count11[2]~2\);

-- Location: LCCOMB_X30_Y13_N28
\inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\inst|U1|Mux1~7_combout\ & ((\inst|U1|Mux0~7_combout\ & ((\inst|U1|Mux2~7_combout\))) # (!\inst|U1|Mux0~7_combout\ & (!\inst|U1|Mux3~5_combout\)))) # (!\inst|U1|Mux1~7_combout\ & (\inst|U1|Mux0~7_combout\ $ 
-- (((!\inst|U1|Mux3~5_combout\ & \inst|U1|Mux2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux3~5_combout\,
	datab => \inst|U1|Mux2~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux0~7_combout\,
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X30_Y13_N0
\inst1|tone[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(2) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|tone\(2)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (!\inst1|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux9~0_combout\,
	datac => \inst1|Mux4~0clkctrl_outclk\,
	datad => \inst1|tone\(2),
	combout => \inst1|tone\(2));

-- Location: FF_X33_Y13_N5
\inst2|genspks:count11[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[2]~1_combout\,
	asdata => \inst1|tone\(2),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[2]~q\);

-- Location: LCCOMB_X33_Y13_N6
\inst2|genspks:count11[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[3]~1_combout\ = (\inst2|genspks:count11[3]~q\ & (!\inst2|genspks:count11[2]~2\)) # (!\inst2|genspks:count11[3]~q\ & ((\inst2|genspks:count11[2]~2\) # (GND)))
-- \inst2|genspks:count11[3]~2\ = CARRY((!\inst2|genspks:count11[2]~2\) # (!\inst2|genspks:count11[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|genspks:count11[3]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[2]~2\,
	combout => \inst2|genspks:count11[3]~1_combout\,
	cout => \inst2|genspks:count11[3]~2\);

-- Location: LCCOMB_X30_Y13_N30
\inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (\inst|U1|Mux1~7_combout\ & ((\inst|U1|Mux0~7_combout\) # ((!\inst|U1|Mux3~5_combout\ & !\inst|U1|Mux2~7_combout\)))) # (!\inst|U1|Mux1~7_combout\ & (\inst|U1|Mux3~5_combout\ $ (((\inst|U1|Mux2~7_combout\) # 
-- (\inst|U1|Mux0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux3~5_combout\,
	datab => \inst|U1|Mux2~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux0~7_combout\,
	combout => \inst1|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y13_N6
\inst1|tone[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(3) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|tone\(3)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (!\inst1|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux10~0_combout\,
	datac => \inst1|tone\(3),
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|tone\(3));

-- Location: FF_X33_Y13_N7
\inst2|genspks:count11[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[3]~1_combout\,
	asdata => \inst1|tone\(3),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[3]~q\);

-- Location: LCCOMB_X33_Y13_N8
\inst2|genspks:count11[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[4]~1_combout\ = (\inst2|genspks:count11[4]~q\ & (\inst2|genspks:count11[3]~2\ $ (GND))) # (!\inst2|genspks:count11[4]~q\ & (!\inst2|genspks:count11[3]~2\ & VCC))
-- \inst2|genspks:count11[4]~2\ = CARRY((\inst2|genspks:count11[4]~q\ & !\inst2|genspks:count11[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|genspks:count11[4]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[3]~2\,
	combout => \inst2|genspks:count11[4]~1_combout\,
	cout => \inst2|genspks:count11[4]~2\);

-- Location: LCCOMB_X30_Y13_N8
\inst1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (\inst|U1|Mux2~7_combout\ & ((\inst|U1|Mux0~7_combout\) # (\inst|U1|Mux3~5_combout\ $ (\inst|U1|Mux1~7_combout\)))) # (!\inst|U1|Mux2~7_combout\ & ((\inst|U1|Mux3~5_combout\) # (\inst|U1|Mux1~7_combout\ $ 
-- (\inst|U1|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux3~5_combout\,
	datab => \inst|U1|Mux2~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux0~7_combout\,
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X30_Y13_N16
\inst1|tone[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(4) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|tone\(4)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (!\inst1|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux11~0_combout\,
	datab => \inst1|tone\(4),
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|tone\(4));

-- Location: FF_X33_Y13_N9
\inst2|genspks:count11[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[4]~1_combout\,
	asdata => \inst1|tone\(4),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[4]~q\);

-- Location: LCCOMB_X33_Y13_N10
\inst2|genspks:count11[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[5]~1_combout\ = (\inst2|genspks:count11[5]~q\ & (!\inst2|genspks:count11[4]~2\)) # (!\inst2|genspks:count11[5]~q\ & ((\inst2|genspks:count11[4]~2\) # (GND)))
-- \inst2|genspks:count11[5]~2\ = CARRY((!\inst2|genspks:count11[4]~2\) # (!\inst2|genspks:count11[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|genspks:count11[5]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[4]~2\,
	combout => \inst2|genspks:count11[5]~1_combout\,
	cout => \inst2|genspks:count11[5]~2\);

-- Location: LCCOMB_X32_Y12_N2
\inst1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (\inst|U1|Mux2~7_combout\ & (((\inst|U1|Mux1~7_combout\) # (!\inst|U1|Mux3~5_combout\)) # (!\inst|U1|Mux0~7_combout\))) # (!\inst|U1|Mux2~7_combout\ & ((\inst|U1|Mux0~7_combout\) # (\inst|U1|Mux1~7_combout\ $ 
-- (\inst|U1|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux2~7_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux3~5_combout\,
	combout => \inst1|Mux12~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\inst1|tone[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(5) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (\inst1|tone\(5))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((!\inst1|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tone\(5),
	datac => \inst1|Mux12~0_combout\,
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|tone\(5));

-- Location: FF_X33_Y13_N11
\inst2|genspks:count11[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[5]~1_combout\,
	asdata => \inst1|tone\(5),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[5]~q\);

-- Location: LCCOMB_X33_Y13_N12
\inst2|genspks:count11[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[6]~1_combout\ = (\inst2|genspks:count11[6]~q\ & (\inst2|genspks:count11[5]~2\ $ (GND))) # (!\inst2|genspks:count11[6]~q\ & (!\inst2|genspks:count11[5]~2\ & VCC))
-- \inst2|genspks:count11[6]~2\ = CARRY((\inst2|genspks:count11[6]~q\ & !\inst2|genspks:count11[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|genspks:count11[6]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[5]~2\,
	combout => \inst2|genspks:count11[6]~1_combout\,
	cout => \inst2|genspks:count11[6]~2\);

-- Location: LCCOMB_X32_Y12_N24
\inst1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = (\inst|U1|Mux3~5_combout\ & ((\inst|U1|Mux1~7_combout\ & ((!\inst|U1|Mux2~7_combout\))) # (!\inst|U1|Mux1~7_combout\ & ((\inst|U1|Mux2~7_combout\) # (!\inst|U1|Mux0~7_combout\))))) # (!\inst|U1|Mux3~5_combout\ & 
-- ((\inst|U1|Mux2~7_combout\) # (\inst|U1|Mux0~7_combout\ $ (\inst|U1|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux3~5_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux2~7_combout\,
	combout => \inst1|Mux13~0_combout\);

-- Location: LCCOMB_X32_Y12_N16
\inst1|tone[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(6) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (\inst1|tone\(6))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((!\inst1|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|tone\(6),
	datac => \inst1|Mux13~0_combout\,
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|tone\(6));

-- Location: FF_X33_Y13_N13
\inst2|genspks:count11[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[6]~1_combout\,
	asdata => \inst1|tone\(6),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[6]~q\);

-- Location: LCCOMB_X33_Y13_N14
\inst2|genspks:count11[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[7]~1_combout\ = (\inst2|genspks:count11[7]~q\ & (!\inst2|genspks:count11[6]~2\)) # (!\inst2|genspks:count11[7]~q\ & ((\inst2|genspks:count11[6]~2\) # (GND)))
-- \inst2|genspks:count11[7]~2\ = CARRY((!\inst2|genspks:count11[6]~2\) # (!\inst2|genspks:count11[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|genspks:count11[7]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[6]~2\,
	combout => \inst2|genspks:count11[7]~1_combout\,
	cout => \inst2|genspks:count11[7]~2\);

-- Location: LCCOMB_X30_Y13_N22
\inst1|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux14~0_combout\ = (\inst|U1|Mux1~7_combout\ & (((\inst|U1|Mux2~7_combout\ & !\inst|U1|Mux0~7_combout\)) # (!\inst|U1|Mux3~5_combout\))) # (!\inst|U1|Mux1~7_combout\ & ((\inst|U1|Mux0~7_combout\ & (\inst|U1|Mux2~7_combout\)) # 
-- (!\inst|U1|Mux0~7_combout\ & ((\inst|U1|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux2~7_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux3~5_combout\,
	combout => \inst1|Mux14~0_combout\);

-- Location: LCCOMB_X30_Y13_N10
\inst1|tone[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(7) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|tone\(7)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (!\inst1|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux14~0_combout\,
	datac => \inst1|Mux4~0clkctrl_outclk\,
	datad => \inst1|tone\(7),
	combout => \inst1|tone\(7));

-- Location: FF_X33_Y13_N15
\inst2|genspks:count11[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[7]~1_combout\,
	asdata => \inst1|tone\(7),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[7]~q\);

-- Location: LCCOMB_X33_Y13_N24
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|genspks:count11[5]~q\ & (\inst2|genspks:count11[4]~q\ & (\inst2|genspks:count11[7]~q\ & \inst2|genspks:count11[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|genspks:count11[5]~q\,
	datab => \inst2|genspks:count11[4]~q\,
	datac => \inst2|genspks:count11[7]~q\,
	datad => \inst2|genspks:count11[6]~q\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y13_N16
\inst2|genspks:count11[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[8]~1_combout\ = (\inst2|genspks:count11[8]~q\ & (\inst2|genspks:count11[7]~2\ $ (GND))) # (!\inst2|genspks:count11[8]~q\ & (!\inst2|genspks:count11[7]~2\ & VCC))
-- \inst2|genspks:count11[8]~2\ = CARRY((\inst2|genspks:count11[8]~q\ & !\inst2|genspks:count11[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|genspks:count11[8]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[7]~2\,
	combout => \inst2|genspks:count11[8]~1_combout\,
	cout => \inst2|genspks:count11[8]~2\);

-- Location: LCCOMB_X32_Y12_N0
\inst1|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux15~0_combout\ = (\inst|U1|Mux2~7_combout\ & ((\inst|U1|Mux0~7_combout\) # ((\inst|U1|Mux3~5_combout\ & !\inst|U1|Mux1~7_combout\)))) # (!\inst|U1|Mux2~7_combout\ & (((\inst|U1|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux3~5_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux2~7_combout\,
	combout => \inst1|Mux15~0_combout\);

-- Location: LCCOMB_X32_Y12_N6
\inst1|tone[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(8) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (\inst1|tone\(8))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((!\inst1|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|tone\(8),
	datac => \inst1|Mux15~0_combout\,
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|tone\(8));

-- Location: FF_X33_Y13_N17
\inst2|genspks:count11[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[8]~1_combout\,
	asdata => \inst1|tone\(8),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[8]~q\);

-- Location: LCCOMB_X33_Y13_N18
\inst2|genspks:count11[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[9]~1_combout\ = (\inst2|genspks:count11[9]~q\ & (!\inst2|genspks:count11[8]~2\)) # (!\inst2|genspks:count11[9]~q\ & ((\inst2|genspks:count11[8]~2\) # (GND)))
-- \inst2|genspks:count11[9]~2\ = CARRY((!\inst2|genspks:count11[8]~2\) # (!\inst2|genspks:count11[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|genspks:count11[9]~q\,
	datad => VCC,
	cin => \inst2|genspks:count11[8]~2\,
	combout => \inst2|genspks:count11[9]~1_combout\,
	cout => \inst2|genspks:count11[9]~2\);

-- Location: LCCOMB_X30_Y13_N24
\inst1|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux16~0_combout\ = (\inst|U1|Mux2~7_combout\ & ((\inst|U1|Mux3~5_combout\ & (!\inst|U1|Mux0~7_combout\)) # (!\inst|U1|Mux3~5_combout\ & ((\inst|U1|Mux1~7_combout\))))) # (!\inst|U1|Mux2~7_combout\ & (\inst|U1|Mux0~7_combout\ $ 
-- ((\inst|U1|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux2~7_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux3~5_combout\,
	combout => \inst1|Mux16~0_combout\);

-- Location: LCCOMB_X30_Y13_N12
\inst1|tone[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(9) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|tone\(9)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (!\inst1|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux16~0_combout\,
	datac => \inst1|Mux4~0clkctrl_outclk\,
	datad => \inst1|tone\(9),
	combout => \inst1|tone\(9));

-- Location: FF_X33_Y13_N19
\inst2|genspks:count11[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[9]~1_combout\,
	asdata => \inst1|tone\(9),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[9]~q\);

-- Location: LCCOMB_X33_Y13_N20
\inst2|genspks:count11[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|genspks:count11[10]~1_combout\ = \inst2|genspks:count11[9]~2\ $ (!\inst2|genspks:count11[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|genspks:count11[10]~q\,
	cin => \inst2|genspks:count11[9]~2\,
	combout => \inst2|genspks:count11[10]~1_combout\);

-- Location: LCCOMB_X32_Y12_N8
\inst1|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux17~0_combout\ = (!\inst|U1|Mux0~7_combout\ & (!\inst|U1|Mux1~7_combout\ & (\inst|U1|Mux2~7_combout\ $ (\inst|U1|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux2~7_combout\,
	datab => \inst|U1|Mux3~5_combout\,
	datac => \inst|U1|Mux0~7_combout\,
	datad => \inst|U1|Mux1~7_combout\,
	combout => \inst1|Mux17~0_combout\);

-- Location: LCCOMB_X32_Y12_N22
\inst1|tone[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|tone\(10) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|tone\(10)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (!\inst1|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux17~0_combout\,
	datac => \inst1|tone\(10),
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|tone\(10));

-- Location: FF_X33_Y13_N21
\inst2|genspks:count11[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|genspks:count11[10]~1_combout\,
	asdata => \inst1|tone\(10),
	sload => \inst2|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|genspks:count11[10]~q\);

-- Location: LCCOMB_X33_Y13_N22
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|genspks:count11[8]~q\ & (\inst2|genspks:count11[9]~q\ & \inst2|genspks:count11[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|genspks:count11[8]~q\,
	datac => \inst2|genspks:count11[9]~q\,
	datad => \inst2|genspks:count11[10]~q\,
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y13_N28
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|genspks:count11[3]~q\ & (\inst2|genspks:count11[0]~q\ & (\inst2|genspks:count11[2]~q\ & \inst2|genspks:count11[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|genspks:count11[3]~q\,
	datab => \inst2|genspks:count11[0]~q\,
	datac => \inst2|genspks:count11[2]~q\,
	datad => \inst2|genspks:count11[1]~q\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y13_N26
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst2|Equal0~1_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y13_N30
\inst2|fullspks~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|fullspks~feeder_combout\ = \inst2|Equal0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|fullspks~feeder_combout\);

-- Location: FF_X33_Y13_N31
\inst2|fullspks\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \inst2|fullspks~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|fullspks~q\);

-- Location: CLKCTRL_G5
\inst2|fullspks~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|fullspks~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|fullspks~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y22_N18
\inst2|delayspks:count2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|delayspks:count2~0_combout\ = !\inst2|delayspks:count2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|delayspks:count2~q\,
	combout => \inst2|delayspks:count2~0_combout\);

-- Location: FF_X32_Y22_N19
\inst2|delayspks:count2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|fullspks~clkctrl_outclk\,
	d => \inst2|delayspks:count2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|delayspks:count2~q\);

-- Location: LCCOMB_X32_Y22_N0
\inst2|spks~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|spks~0_combout\ = !\inst2|delayspks:count2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|delayspks:count2~q\,
	combout => \inst2|spks~0_combout\);

-- Location: FF_X32_Y22_N1
\inst2|spks\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|fullspks~clkctrl_outclk\,
	d => \inst2|spks~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|spks~q\);

-- Location: LCCOMB_X31_Y12_N2
\inst1|code[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|code\(2) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|code\(2)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (\inst|U1|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux1~7_combout\,
	datab => \inst1|code\(2),
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|code\(2));

-- Location: LCCOMB_X32_Y12_N10
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst|U1|Mux2~7_combout\) # ((\inst|U1|Mux3~5_combout\ & (\inst|U1|Mux0~7_combout\ & \inst|U1|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux3~5_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux2~7_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y12_N26
\inst1|code[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|code\(1) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|code\(1)))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (\inst1|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux2~0_combout\,
	datac => \inst1|code\(1),
	datad => \inst1|Mux4~0clkctrl_outclk\,
	combout => \inst1|code\(1));

-- Location: LCCOMB_X29_Y12_N12
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = \inst|U1|Mux3~5_combout\ $ (((\inst|U1|Mux0~7_combout\ & (\inst|U1|Mux1~7_combout\ & !\inst|U1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|U1|Mux3~5_combout\,
	datab => \inst|U1|Mux0~7_combout\,
	datac => \inst|U1|Mux1~7_combout\,
	datad => \inst|U1|Mux2~7_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y12_N14
\inst1|code[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|code\(0) = (GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & (\inst1|code\(0))) # (!GLOBAL(\inst1|Mux4~0clkctrl_outclk\) & ((\inst1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|code\(0),
	datac => \inst1|Mux4~0clkctrl_outclk\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|code\(0));

ww_highi <= \highi~output_o\;

ww_spkout <= \spkout~output_o\;

ww_pin_name1 <= \pin_name1~output_o\;

ww_pin_name2 <= \pin_name2~output_o\;

ww_pin_name3 <= \pin_name3~output_o\;

ww_pin_name4 <= \pin_name4~output_o\;

ww_pin_name5 <= \pin_name5~output_o\;

ww_pin_name6 <= \pin_name6~output_o\;

ww_pin_name7 <= \pin_name7~output_o\;

ww_pin_name8 <= \pin_name8~output_o\;

ww_pin_name9 <= \pin_name9~output_o\;

ww_pin_name10 <= \pin_name10~output_o\;

ww_pin_name11 <= \pin_name11~output_o\;

ww_code(3) <= \code[3]~output_o\;

ww_code(2) <= \code[2]~output_o\;

ww_code(1) <= \code[1]~output_o\;

ww_code(0) <= \code[0]~output_o\;
END structure;


