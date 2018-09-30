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

-- DATE "07/07/2018 16:14:00"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	szz IS
    PORT (
	clk_in : IN std_logic;
	clr : IN std_logic;
	set : IN std_logic;
	speaker : OUT std_logic;
	led_dig : OUT std_logic_vector(7 DOWNTO 0);
	led_sel : OUT std_logic_vector(5 DOWNTO 0)
	);
END szz;

-- Design Ports Information
-- speaker	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dig[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dig[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dig[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dig[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dig[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dig[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dig[6]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_dig[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sel[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sel[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sel[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sel[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sel[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_sel[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF szz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_speaker : std_logic;
SIGNAL ww_led_dig : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_sel : std_logic_vector(5 DOWNTO 0);
SIGNAL \u1|temp_counter_1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|temp_counter_1KHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|seccarry~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|mincarry~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|process_0~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|Mux9~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|seccnt1[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|cnt[0]~15_combout\ : std_logic;
SIGNAL \u1|cnt[6]~28\ : std_logic;
SIGNAL \u1|cnt[7]~29_combout\ : std_logic;
SIGNAL \u1|cnt[7]~30\ : std_logic;
SIGNAL \u1|cnt[8]~31_combout\ : std_logic;
SIGNAL \u1|cnt[8]~32\ : std_logic;
SIGNAL \u1|cnt[9]~33_combout\ : std_logic;
SIGNAL \u1|cnt[9]~34\ : std_logic;
SIGNAL \u1|cnt[10]~35_combout\ : std_logic;
SIGNAL \u1|cnt[10]~36\ : std_logic;
SIGNAL \u1|cnt[11]~37_combout\ : std_logic;
SIGNAL \u1|cnt[11]~38\ : std_logic;
SIGNAL \u1|cnt[12]~39_combout\ : std_logic;
SIGNAL \u1|cnt[12]~40\ : std_logic;
SIGNAL \u1|cnt[13]~41_combout\ : std_logic;
SIGNAL \u1|cnt[13]~42\ : std_logic;
SIGNAL \u1|cnt[14]~43_combout\ : std_logic;
SIGNAL \u1|LessThan0~5_combout\ : std_logic;
SIGNAL \u1|LessThan0~7_combout\ : std_logic;
SIGNAL \u1|cnt[0]~16\ : std_logic;
SIGNAL \u1|cnt[1]~17_combout\ : std_logic;
SIGNAL \u1|cnt[1]~18\ : std_logic;
SIGNAL \u1|cnt[2]~19_combout\ : std_logic;
SIGNAL \u1|cnt[2]~20\ : std_logic;
SIGNAL \u1|cnt[3]~21_combout\ : std_logic;
SIGNAL \u1|cnt[3]~22\ : std_logic;
SIGNAL \u1|cnt[4]~23_combout\ : std_logic;
SIGNAL \u1|cnt[4]~24\ : std_logic;
SIGNAL \u1|cnt[5]~25_combout\ : std_logic;
SIGNAL \u1|cnt[5]~26\ : std_logic;
SIGNAL \u1|cnt[6]~27_combout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|LessThan0~4_combout\ : std_logic;
SIGNAL \u1|LessThan0~6_combout\ : std_logic;
SIGNAL \u1|temp_counter_1KHz~0_combout\ : std_logic;
SIGNAL \u1|temp_counter_1KHz~q\ : std_logic;
SIGNAL \u1|temp_counter_1KHz~clkctrl_outclk\ : std_logic;
SIGNAL \u2|i~1_combout\ : std_logic;
SIGNAL \u2|WideOr0~0_combout\ : std_logic;
SIGNAL \u2|i~0_combout\ : std_logic;
SIGNAL \u2|led_sel~4_combout\ : std_logic;
SIGNAL \u2|led_sel~5_combout\ : std_logic;
SIGNAL \u1|cnt1[0]~9_combout\ : std_logic;
SIGNAL \u1|LessThan1~0_combout\ : std_logic;
SIGNAL \u1|LessThan1~1_combout\ : std_logic;
SIGNAL \u1|LessThan1~2_combout\ : std_logic;
SIGNAL \u1|cnt1[0]~10\ : std_logic;
SIGNAL \u1|cnt1[1]~11_combout\ : std_logic;
SIGNAL \u1|cnt1[1]~12\ : std_logic;
SIGNAL \u1|cnt1[2]~13_combout\ : std_logic;
SIGNAL \u1|cnt1[2]~14\ : std_logic;
SIGNAL \u1|cnt1[3]~15_combout\ : std_logic;
SIGNAL \u1|cnt1[3]~16\ : std_logic;
SIGNAL \u1|cnt1[4]~17_combout\ : std_logic;
SIGNAL \u1|cnt1[4]~18\ : std_logic;
SIGNAL \u1|cnt1[5]~19_combout\ : std_logic;
SIGNAL \u1|cnt1[5]~20\ : std_logic;
SIGNAL \u1|cnt1[6]~21_combout\ : std_logic;
SIGNAL \u1|cnt1[6]~22\ : std_logic;
SIGNAL \u1|cnt1[7]~23_combout\ : std_logic;
SIGNAL \u1|cnt1[7]~24\ : std_logic;
SIGNAL \u1|cnt1[8]~25_combout\ : std_logic;
SIGNAL \u1|temp_counter_1Hz~0_combout\ : std_logic;
SIGNAL \u1|temp_counter_1Hz~q\ : std_logic;
SIGNAL \u1|temp_counter_1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \u3|seccnt0~6_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \u3|process_0~2_combout\ : std_logic;
SIGNAL \u3|process_0~2clkctrl_outclk\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u3|seccnt1[0]~1_combout\ : std_logic;
SIGNAL \u3|seccnt0[2]~3_combout\ : std_logic;
SIGNAL \u3|seccnt1[0]~0_combout\ : std_logic;
SIGNAL \u3|seccnt1[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \u3|seccnt0[2]~_emulated_q\ : std_logic;
SIGNAL \u3|seccnt0[2]~2_combout\ : std_logic;
SIGNAL \u3|LessThan0~0_combout\ : std_logic;
SIGNAL \u3|seccnt0[0]~1_combout\ : std_logic;
SIGNAL \u3|seccnt0[0]~_emulated_q\ : std_logic;
SIGNAL \u3|seccnt0[0]~0_combout\ : std_logic;
SIGNAL \u3|seccnt0~7_combout\ : std_logic;
SIGNAL \u3|process_0~3_combout\ : std_logic;
SIGNAL \u3|process_0~4_combout\ : std_logic;
SIGNAL \u3|seccnt0~8_combout\ : std_logic;
SIGNAL \u3|seccnt1[3]~10_combout\ : std_logic;
SIGNAL \u3|seccnt1[2]~11_combout\ : std_logic;
SIGNAL \u3|seccnt1[2]~5_combout\ : std_logic;
SIGNAL \u3|seccnt1[2]~_emulated_q\ : std_logic;
SIGNAL \u3|seccnt1[2]~4_combout\ : std_logic;
SIGNAL \u3|seccnt1[1]~12_combout\ : std_logic;
SIGNAL \u3|LessThan1~0_combout\ : std_logic;
SIGNAL \u3|seccnt1[0]~3_combout\ : std_logic;
SIGNAL \u3|seccnt1[0]~_emulated_q\ : std_logic;
SIGNAL \u3|seccnt1[0]~2_combout\ : std_logic;
SIGNAL \u3|process_0~5_combout\ : std_logic;
SIGNAL \u3|seccarry~0_combout\ : std_logic;
SIGNAL \u3|seccarry~q\ : std_logic;
SIGNAL \u3|seccarry~clkctrl_outclk\ : std_logic;
SIGNAL \u3|mincnt0[0]~1_combout\ : std_logic;
SIGNAL \u3|mincnt0[0]~_emulated_q\ : std_logic;
SIGNAL \u3|mincnt0[0]~0_combout\ : std_logic;
SIGNAL \u3|mincnt0~6_combout\ : std_logic;
SIGNAL \u3|Add2~0_combout\ : std_logic;
SIGNAL \u3|process_1~2_combout\ : std_logic;
SIGNAL \u3|process_1~3_combout\ : std_logic;
SIGNAL \u3|mincnt0~7_combout\ : std_logic;
SIGNAL \u3|LessThan2~0_combout\ : std_logic;
SIGNAL \u3|Add2~1_combout\ : std_logic;
SIGNAL \u3|mincnt0[3]~3_combout\ : std_logic;
SIGNAL \u3|mincnt0[3]~_emulated_q\ : std_logic;
SIGNAL \u3|mincnt0[3]~2_combout\ : std_logic;
SIGNAL \u3|mincnt1[3]~8_combout\ : std_logic;
SIGNAL \u3|mincnt1[2]~9_combout\ : std_logic;
SIGNAL \u3|mincnt1[2]~3_combout\ : std_logic;
SIGNAL \u3|mincnt1[2]~_emulated_q\ : std_logic;
SIGNAL \u3|mincnt1[2]~2_combout\ : std_logic;
SIGNAL \u3|mincnt1[1]~10_combout\ : std_logic;
SIGNAL \u3|LessThan3~0_combout\ : std_logic;
SIGNAL \u3|mincnt1[0]~1_combout\ : std_logic;
SIGNAL \u3|mincnt1[0]~_emulated_q\ : std_logic;
SIGNAL \u3|mincnt1[0]~0_combout\ : std_logic;
SIGNAL \u3|process_1~4_combout\ : std_logic;
SIGNAL \u3|mincarry~0_combout\ : std_logic;
SIGNAL \u3|mincarry~q\ : std_logic;
SIGNAL \u3|mincarry~clkctrl_outclk\ : std_logic;
SIGNAL \u3|houcnt0~1_combout\ : std_logic;
SIGNAL \u3|houcnt0~2_combout\ : std_logic;
SIGNAL \u3|LessThan4~0_combout\ : std_logic;
SIGNAL \u3|Add4~0_combout\ : std_logic;
SIGNAL \u3|houcnt0~3_combout\ : std_logic;
SIGNAL \u3|houcnt0~0_combout\ : std_logic;
SIGNAL \u3|process_2~0_combout\ : std_logic;
SIGNAL \u3|houcnt1[1]~1_combout\ : std_logic;
SIGNAL \u3|Add5~0_combout\ : std_logic;
SIGNAL \u3|houcnt1[2]~2_combout\ : std_logic;
SIGNAL \u3|Add5~1_combout\ : std_logic;
SIGNAL \u3|houcnt1[3]~3_combout\ : std_logic;
SIGNAL \u3|process_2~1_combout\ : std_logic;
SIGNAL \u3|process_2~2_combout\ : std_logic;
SIGNAL \u3|houcnt1[0]~0_combout\ : std_logic;
SIGNAL \u4|Mux8~2_combout\ : std_logic;
SIGNAL \u2|led_sel~2_combout\ : std_logic;
SIGNAL \u2|led_sel~3_combout\ : std_logic;
SIGNAL \u4|Mux12~0_combout\ : std_logic;
SIGNAL \u2|led_sel~1_combout\ : std_logic;
SIGNAL \u4|Mux12~1_combout\ : std_logic;
SIGNAL \u4|Mux8~3_combout\ : std_logic;
SIGNAL \u4|Mux8~4_combout\ : std_logic;
SIGNAL \u4|Mux8~5_combout\ : std_logic;
SIGNAL \u2|led_sel~0_combout\ : std_logic;
SIGNAL \u4|Mux9~0_combout\ : std_logic;
SIGNAL \u4|Mux9~1_combout\ : std_logic;
SIGNAL \u4|Mux9~2_combout\ : std_logic;
SIGNAL \u4|Mux9~2clkctrl_outclk\ : std_logic;
SIGNAL \u4|Mux10~2_combout\ : std_logic;
SIGNAL \u4|Mux10~3_combout\ : std_logic;
SIGNAL \u4|Mux10~4_combout\ : std_logic;
SIGNAL \u4|Mux10~5_combout\ : std_logic;
SIGNAL \u4|Mux11~2_combout\ : std_logic;
SIGNAL \u4|Mux11~3_combout\ : std_logic;
SIGNAL \u4|Mux11~4_combout\ : std_logic;
SIGNAL \u4|Mux11~5_combout\ : std_logic;
SIGNAL \u4|Mux12~2_combout\ : std_logic;
SIGNAL \u4|Mux12~3_combout\ : std_logic;
SIGNAL \u4|Mux12~4_combout\ : std_logic;
SIGNAL \u4|Mux7~0_combout\ : std_logic;
SIGNAL \u4|Mux6~0_combout\ : std_logic;
SIGNAL \u4|Mux5~0_combout\ : std_logic;
SIGNAL \u4|Mux4~0_combout\ : std_logic;
SIGNAL \u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|Mux0~0_combout\ : std_logic;
SIGNAL \u3|houcnt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|cnt\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u3|mincnt0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|cnt1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|seccnt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|led_sel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u3|houcnt0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|mincnt1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|seccnt0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u4|dig_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \u3|ALT_INV_process_0~2clkctrl_outclk\ : std_logic;
SIGNAL \u3|ALT_INV_mincarry~clkctrl_outclk\ : std_logic;
SIGNAL \u3|ALT_INV_seccarry~clkctrl_outclk\ : std_logic;
SIGNAL \u3|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \u4|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_clk_in <= clk_in;
ww_clr <= clr;
ww_set <= set;
speaker <= ww_speaker;
led_dig <= ww_led_dig;
led_sel <= ww_led_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|temp_counter_1Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|temp_counter_1Hz~q\);

\u1|temp_counter_1KHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u1|temp_counter_1KHz~q\);

\u3|seccarry~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|seccarry~q\);

\u3|mincarry~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|mincarry~q\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);

\u3|process_0~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|process_0~2_combout\);

\u4|Mux9~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u4|Mux9~2_combout\);

\u3|seccnt1[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u3|seccnt1[0]~0_combout\);
\u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\ <= NOT \u3|seccnt1[0]~0clkctrl_outclk\;
\u3|ALT_INV_process_0~2clkctrl_outclk\ <= NOT \u3|process_0~2clkctrl_outclk\;
\u3|ALT_INV_mincarry~clkctrl_outclk\ <= NOT \u3|mincarry~clkctrl_outclk\;
\u3|ALT_INV_seccarry~clkctrl_outclk\ <= NOT \u3|seccarry~clkctrl_outclk\;
\u3|ALT_INV_process_0~2_combout\ <= NOT \u3|process_0~2_combout\;
\u4|ALT_INV_Mux1~0_combout\ <= NOT \u4|Mux1~0_combout\;

-- Location: IOOBUF_X1_Y0_N23
\speaker~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_speaker);

-- Location: IOOBUF_X1_Y0_N16
\led_dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_led_dig(0));

-- Location: IOOBUF_X3_Y0_N2
\led_dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_led_dig(1));

-- Location: IOOBUF_X5_Y0_N23
\led_dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_led_dig(2));

-- Location: IOOBUF_X5_Y0_N16
\led_dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_led_dig(3));

-- Location: IOOBUF_X13_Y0_N16
\led_dig[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_led_dig(4));

-- Location: IOOBUF_X13_Y0_N2
\led_dig[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_led_dig(5));

-- Location: IOOBUF_X16_Y0_N23
\led_dig[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_led_dig(6));

-- Location: IOOBUF_X16_Y0_N9
\led_dig[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_led_dig(7));

-- Location: IOOBUF_X16_Y0_N2
\led_sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|led_sel\(0),
	devoe => ww_devoe,
	o => ww_led_sel(0));

-- Location: IOOBUF_X7_Y0_N2
\led_sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|led_sel\(1),
	devoe => ww_devoe,
	o => ww_led_sel(1));

-- Location: IOOBUF_X0_Y9_N9
\led_sel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|led_sel\(2),
	devoe => ww_devoe,
	o => ww_led_sel(2));

-- Location: IOOBUF_X0_Y8_N16
\led_sel[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|led_sel\(3),
	devoe => ww_devoe,
	o => ww_led_sel(3));

-- Location: IOOBUF_X0_Y6_N16
\led_sel[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|led_sel\(4),
	devoe => ww_devoe,
	o => ww_led_sel(4));

-- Location: IOOBUF_X0_Y6_N23
\led_sel[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|led_sel\(5),
	devoe => ww_devoe,
	o => ww_led_sel(5));

-- Location: IOIBUF_X0_Y11_N8
\clk_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G2
\clk_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

\u1|cnt[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[0]~15_combout\ = \u1|cnt\(0) $ (VCC)
-- \u1|cnt[0]~16\ = CARRY(\u1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(0),
	datad => VCC,
	combout => \u1|cnt[0]~15_combout\,
	cout => \u1|cnt[0]~16\);

\u1|cnt[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[6]~27_combout\ = (\u1|cnt\(6) & (\u1|cnt[5]~26\ $ (GND))) # (!\u1|cnt\(6) & (!\u1|cnt[5]~26\ & VCC))
-- \u1|cnt[6]~28\ = CARRY((\u1|cnt\(6) & !\u1|cnt[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(6),
	datad => VCC,
	cin => \u1|cnt[5]~26\,
	combout => \u1|cnt[6]~27_combout\,
	cout => \u1|cnt[6]~28\);

\u1|cnt[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[7]~29_combout\ = (\u1|cnt\(7) & (!\u1|cnt[6]~28\)) # (!\u1|cnt\(7) & ((\u1|cnt[6]~28\) # (GND)))
-- \u1|cnt[7]~30\ = CARRY((!\u1|cnt[6]~28\) # (!\u1|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(7),
	datad => VCC,
	cin => \u1|cnt[6]~28\,
	combout => \u1|cnt[7]~29_combout\,
	cout => \u1|cnt[7]~30\);

\u1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[7]~29_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(7));

\u1|cnt[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[8]~31_combout\ = (\u1|cnt\(8) & (\u1|cnt[7]~30\ $ (GND))) # (!\u1|cnt\(8) & (!\u1|cnt[7]~30\ & VCC))
-- \u1|cnt[8]~32\ = CARRY((\u1|cnt\(8) & !\u1|cnt[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(8),
	datad => VCC,
	cin => \u1|cnt[7]~30\,
	combout => \u1|cnt[8]~31_combout\,
	cout => \u1|cnt[8]~32\);

\u1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[8]~31_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(8));

\u1|cnt[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[9]~33_combout\ = (\u1|cnt\(9) & (!\u1|cnt[8]~32\)) # (!\u1|cnt\(9) & ((\u1|cnt[8]~32\) # (GND)))
-- \u1|cnt[9]~34\ = CARRY((!\u1|cnt[8]~32\) # (!\u1|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(9),
	datad => VCC,
	cin => \u1|cnt[8]~32\,
	combout => \u1|cnt[9]~33_combout\,
	cout => \u1|cnt[9]~34\);

\u1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[9]~33_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(9));

\u1|cnt[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[10]~35_combout\ = (\u1|cnt\(10) & (\u1|cnt[9]~34\ $ (GND))) # (!\u1|cnt\(10) & (!\u1|cnt[9]~34\ & VCC))
-- \u1|cnt[10]~36\ = CARRY((\u1|cnt\(10) & !\u1|cnt[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(10),
	datad => VCC,
	cin => \u1|cnt[9]~34\,
	combout => \u1|cnt[10]~35_combout\,
	cout => \u1|cnt[10]~36\);

\u1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[10]~35_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(10));

\u1|cnt[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[11]~37_combout\ = (\u1|cnt\(11) & (!\u1|cnt[10]~36\)) # (!\u1|cnt\(11) & ((\u1|cnt[10]~36\) # (GND)))
-- \u1|cnt[11]~38\ = CARRY((!\u1|cnt[10]~36\) # (!\u1|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(11),
	datad => VCC,
	cin => \u1|cnt[10]~36\,
	combout => \u1|cnt[11]~37_combout\,
	cout => \u1|cnt[11]~38\);

\u1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[11]~37_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(11));

\u1|cnt[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[12]~39_combout\ = (\u1|cnt\(12) & (\u1|cnt[11]~38\ $ (GND))) # (!\u1|cnt\(12) & (!\u1|cnt[11]~38\ & VCC))
-- \u1|cnt[12]~40\ = CARRY((\u1|cnt\(12) & !\u1|cnt[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(12),
	datad => VCC,
	cin => \u1|cnt[11]~38\,
	combout => \u1|cnt[12]~39_combout\,
	cout => \u1|cnt[12]~40\);

\u1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[12]~39_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(12));

\u1|cnt[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[13]~41_combout\ = (\u1|cnt\(13) & (!\u1|cnt[12]~40\)) # (!\u1|cnt\(13) & ((\u1|cnt[12]~40\) # (GND)))
-- \u1|cnt[13]~42\ = CARRY((!\u1|cnt[12]~40\) # (!\u1|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(13),
	datad => VCC,
	cin => \u1|cnt[12]~40\,
	combout => \u1|cnt[13]~41_combout\,
	cout => \u1|cnt[13]~42\);

\u1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[13]~41_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(13));

\u1|cnt[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[14]~43_combout\ = \u1|cnt\(14) $ (!\u1|cnt[13]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(14),
	cin => \u1|cnt[13]~42\,
	combout => \u1|cnt[14]~43_combout\);

\u1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[14]~43_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(14));

\u1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~5_combout\ = (!\u1|cnt\(9) & (!\u1|cnt\(10) & (!\u1|cnt\(11) & !\u1|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(9),
	datab => \u1|cnt\(10),
	datac => \u1|cnt\(11),
	datad => \u1|cnt\(12),
	combout => \u1|LessThan0~5_combout\);

\u1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~7_combout\ = (\u1|cnt\(13) & (\u1|cnt\(14) & ((!\u1|LessThan0~5_combout\) # (!\u1|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(13),
	datab => \u1|cnt\(14),
	datac => \u1|LessThan0~4_combout\,
	datad => \u1|LessThan0~5_combout\,
	combout => \u1|LessThan0~7_combout\);

\u1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[0]~15_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(0));

\u1|cnt[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[1]~17_combout\ = (\u1|cnt\(1) & (!\u1|cnt[0]~16\)) # (!\u1|cnt\(1) & ((\u1|cnt[0]~16\) # (GND)))
-- \u1|cnt[1]~18\ = CARRY((!\u1|cnt[0]~16\) # (!\u1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(1),
	datad => VCC,
	cin => \u1|cnt[0]~16\,
	combout => \u1|cnt[1]~17_combout\,
	cout => \u1|cnt[1]~18\);

\u1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[1]~17_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(1));

\u1|cnt[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[2]~19_combout\ = (\u1|cnt\(2) & (\u1|cnt[1]~18\ $ (GND))) # (!\u1|cnt\(2) & (!\u1|cnt[1]~18\ & VCC))
-- \u1|cnt[2]~20\ = CARRY((\u1|cnt\(2) & !\u1|cnt[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(2),
	datad => VCC,
	cin => \u1|cnt[1]~18\,
	combout => \u1|cnt[2]~19_combout\,
	cout => \u1|cnt[2]~20\);

\u1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[2]~19_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(2));

\u1|cnt[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[3]~21_combout\ = (\u1|cnt\(3) & (!\u1|cnt[2]~20\)) # (!\u1|cnt\(3) & ((\u1|cnt[2]~20\) # (GND)))
-- \u1|cnt[3]~22\ = CARRY((!\u1|cnt[2]~20\) # (!\u1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(3),
	datad => VCC,
	cin => \u1|cnt[2]~20\,
	combout => \u1|cnt[3]~21_combout\,
	cout => \u1|cnt[3]~22\);

\u1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[3]~21_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(3));

\u1|cnt[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[4]~23_combout\ = (\u1|cnt\(4) & (\u1|cnt[3]~22\ $ (GND))) # (!\u1|cnt\(4) & (!\u1|cnt[3]~22\ & VCC))
-- \u1|cnt[4]~24\ = CARRY((\u1|cnt\(4) & !\u1|cnt[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(4),
	datad => VCC,
	cin => \u1|cnt[3]~22\,
	combout => \u1|cnt[4]~23_combout\,
	cout => \u1|cnt[4]~24\);

\u1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[4]~23_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(4));

\u1|cnt[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt[5]~25_combout\ = (\u1|cnt\(5) & (!\u1|cnt[4]~24\)) # (!\u1|cnt\(5) & ((\u1|cnt[4]~24\) # (GND)))
-- \u1|cnt[5]~26\ = CARRY((!\u1|cnt[4]~24\) # (!\u1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(5),
	datad => VCC,
	cin => \u1|cnt[4]~24\,
	combout => \u1|cnt[5]~25_combout\,
	cout => \u1|cnt[5]~26\);

\u1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[5]~25_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(5));

\u1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|cnt[6]~27_combout\,
	sclr => \u1|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt\(6));

\u1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = (((!\u1|cnt\(6) & !\u1|cnt\(5))) # (!\u1|cnt\(8))) # (!\u1|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(6),
	datab => \u1|cnt\(5),
	datac => \u1|cnt\(7),
	datad => \u1|cnt\(8),
	combout => \u1|LessThan0~2_combout\);

\u1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = (!\u1|cnt\(3) & (((!\u1|cnt\(2)) # (!\u1|cnt\(1))) # (!\u1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt\(0),
	datab => \u1|cnt\(1),
	datac => \u1|cnt\(2),
	datad => \u1|cnt\(3),
	combout => \u1|LessThan0~3_combout\);

\u1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~4_combout\ = (\u1|LessThan0~2_combout\) # ((\u1|LessThan0~3_combout\ & (!\u1|cnt\(4) & !\u1|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~2_combout\,
	datab => \u1|LessThan0~3_combout\,
	datac => \u1|cnt\(4),
	datad => \u1|cnt\(6),
	combout => \u1|LessThan0~4_combout\);

\u1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan0~6_combout\ = (!\u1|cnt\(14)) # (!\u1|cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|cnt\(13),
	datad => \u1|cnt\(14),
	combout => \u1|LessThan0~6_combout\);

\u1|temp_counter_1KHz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|temp_counter_1KHz~0_combout\ = \u1|temp_counter_1KHz~q\ $ (((!\u1|LessThan0~6_combout\ & ((!\u1|LessThan0~5_combout\) # (!\u1|LessThan0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan0~4_combout\,
	datab => \u1|LessThan0~5_combout\,
	datac => \u1|LessThan0~6_combout\,
	datad => \u1|temp_counter_1KHz~q\,
	combout => \u1|temp_counter_1KHz~0_combout\);

\u1|temp_counter_1KHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \u1|temp_counter_1KHz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|temp_counter_1KHz~q\);

\u1|temp_counter_1KHz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|temp_counter_1KHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|temp_counter_1KHz~clkctrl_outclk\);

\u2|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|i\(31));

\u2|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|i~1_combout\ = (\u2|i\(31) & (!\u2|i\(2) & (\u2|i\(1) $ (!\u2|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(31),
	datab => \u2|i\(1),
	datac => \u2|i\(0),
	datad => \u2|i\(2),
	combout => \u2|i~1_combout\);

\u2|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|i\(1));

\u2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|WideOr0~0_combout\ = (((\u2|i\(2) & \u2|i\(1))) # (!\u2|i\(0))) # (!\u2|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(31),
	datab => \u2|i\(0),
	datac => \u2|i\(2),
	datad => \u2|i\(1),
	combout => \u2|WideOr0~0_combout\);

\u2|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|i\(0));

\u2|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|i~0_combout\ = (\u2|i\(31) & ((\u2|i\(2) & (\u2|i\(0) & !\u2|i\(1))) # (!\u2|i\(2) & (!\u2|i\(0) & \u2|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(31),
	datab => \u2|i\(2),
	datac => \u2|i\(0),
	datad => \u2|i\(1),
	combout => \u2|i~0_combout\);

\u2|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|i\(2));

\u2|led_sel~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_sel~4_combout\ = (\u2|i\(31) & (((!\u2|i\(1) & !\u2|i\(0))) # (!\u2|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(2),
	datab => \u2|i\(1),
	datac => \u2|i\(0),
	datad => \u2|i\(31),
	combout => \u2|led_sel~4_combout\);

\u2|led_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|led_sel~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_sel\(4));

\u2|led_sel~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_sel~5_combout\ = (\u2|i\(31) & (((!\u2|i\(1) & \u2|i\(0))) # (!\u2|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(2),
	datab => \u2|i\(1),
	datac => \u2|i\(0),
	datad => \u2|i\(31),
	combout => \u2|led_sel~5_combout\);

\u2|led_sel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|led_sel~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_sel\(5));

\u1|cnt1[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[0]~9_combout\ = \u1|cnt1\(0) $ (VCC)
-- \u1|cnt1[0]~10\ = CARRY(\u1|cnt1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(0),
	datad => VCC,
	combout => \u1|cnt1[0]~9_combout\,
	cout => \u1|cnt1[0]~10\);

\u1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~0_combout\ = (!\u1|cnt1\(2) & (!\u1|cnt1\(3) & ((!\u1|cnt1\(1)) # (!\u1|cnt1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(0),
	datab => \u1|cnt1\(1),
	datac => \u1|cnt1\(2),
	datad => \u1|cnt1\(3),
	combout => \u1|LessThan1~0_combout\);

\u1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~1_combout\ = (((!\u1|cnt1\(7)) # (!\u1|cnt1\(6))) # (!\u1|cnt1\(5))) # (!\u1|cnt1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(4),
	datab => \u1|cnt1\(5),
	datac => \u1|cnt1\(6),
	datad => \u1|cnt1\(7),
	combout => \u1|LessThan1~1_combout\);

\u1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|LessThan1~2_combout\ = (!\u1|LessThan1~0_combout\ & (!\u1|LessThan1~1_combout\ & \u1|cnt1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|LessThan1~0_combout\,
	datab => \u1|LessThan1~1_combout\,
	datad => \u1|cnt1\(8),
	combout => \u1|LessThan1~2_combout\);

\u1|cnt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[0]~9_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(0));

\u1|cnt1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[1]~11_combout\ = (\u1|cnt1\(1) & (!\u1|cnt1[0]~10\)) # (!\u1|cnt1\(1) & ((\u1|cnt1[0]~10\) # (GND)))
-- \u1|cnt1[1]~12\ = CARRY((!\u1|cnt1[0]~10\) # (!\u1|cnt1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(1),
	datad => VCC,
	cin => \u1|cnt1[0]~10\,
	combout => \u1|cnt1[1]~11_combout\,
	cout => \u1|cnt1[1]~12\);

\u1|cnt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[1]~11_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(1));

\u1|cnt1[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[2]~13_combout\ = (\u1|cnt1\(2) & (\u1|cnt1[1]~12\ $ (GND))) # (!\u1|cnt1\(2) & (!\u1|cnt1[1]~12\ & VCC))
-- \u1|cnt1[2]~14\ = CARRY((\u1|cnt1\(2) & !\u1|cnt1[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(2),
	datad => VCC,
	cin => \u1|cnt1[1]~12\,
	combout => \u1|cnt1[2]~13_combout\,
	cout => \u1|cnt1[2]~14\);

\u1|cnt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[2]~13_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(2));

\u1|cnt1[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[3]~15_combout\ = (\u1|cnt1\(3) & (!\u1|cnt1[2]~14\)) # (!\u1|cnt1\(3) & ((\u1|cnt1[2]~14\) # (GND)))
-- \u1|cnt1[3]~16\ = CARRY((!\u1|cnt1[2]~14\) # (!\u1|cnt1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(3),
	datad => VCC,
	cin => \u1|cnt1[2]~14\,
	combout => \u1|cnt1[3]~15_combout\,
	cout => \u1|cnt1[3]~16\);

\u1|cnt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[3]~15_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(3));

\u1|cnt1[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[4]~17_combout\ = (\u1|cnt1\(4) & (\u1|cnt1[3]~16\ $ (GND))) # (!\u1|cnt1\(4) & (!\u1|cnt1[3]~16\ & VCC))
-- \u1|cnt1[4]~18\ = CARRY((\u1|cnt1\(4) & !\u1|cnt1[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(4),
	datad => VCC,
	cin => \u1|cnt1[3]~16\,
	combout => \u1|cnt1[4]~17_combout\,
	cout => \u1|cnt1[4]~18\);

\u1|cnt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[4]~17_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(4));

\u1|cnt1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[5]~19_combout\ = (\u1|cnt1\(5) & (!\u1|cnt1[4]~18\)) # (!\u1|cnt1\(5) & ((\u1|cnt1[4]~18\) # (GND)))
-- \u1|cnt1[5]~20\ = CARRY((!\u1|cnt1[4]~18\) # (!\u1|cnt1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(5),
	datad => VCC,
	cin => \u1|cnt1[4]~18\,
	combout => \u1|cnt1[5]~19_combout\,
	cout => \u1|cnt1[5]~20\);

\u1|cnt1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[5]~19_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(5));

\u1|cnt1[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[6]~21_combout\ = (\u1|cnt1\(6) & (\u1|cnt1[5]~20\ $ (GND))) # (!\u1|cnt1\(6) & (!\u1|cnt1[5]~20\ & VCC))
-- \u1|cnt1[6]~22\ = CARRY((\u1|cnt1\(6) & !\u1|cnt1[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(6),
	datad => VCC,
	cin => \u1|cnt1[5]~20\,
	combout => \u1|cnt1[6]~21_combout\,
	cout => \u1|cnt1[6]~22\);

\u1|cnt1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[6]~21_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(6));

\u1|cnt1[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[7]~23_combout\ = (\u1|cnt1\(7) & (!\u1|cnt1[6]~22\)) # (!\u1|cnt1\(7) & ((\u1|cnt1[6]~22\) # (GND)))
-- \u1|cnt1[7]~24\ = CARRY((!\u1|cnt1[6]~22\) # (!\u1|cnt1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(7),
	datad => VCC,
	cin => \u1|cnt1[6]~22\,
	combout => \u1|cnt1[7]~23_combout\,
	cout => \u1|cnt1[7]~24\);

\u1|cnt1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[7]~23_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(7));

\u1|cnt1[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|cnt1[8]~25_combout\ = \u1|cnt1\(8) $ (!\u1|cnt1[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(8),
	cin => \u1|cnt1[7]~24\,
	combout => \u1|cnt1[8]~25_combout\);

\u1|cnt1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|cnt1[8]~25_combout\,
	sclr => \u1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|cnt1\(8));

\u1|temp_counter_1Hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|temp_counter_1Hz~0_combout\ = \u1|temp_counter_1Hz~q\ $ (((\u1|cnt1\(8) & (!\u1|LessThan1~0_combout\ & !\u1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|cnt1\(8),
	datab => \u1|LessThan1~0_combout\,
	datac => \u1|LessThan1~1_combout\,
	datad => \u1|temp_counter_1Hz~q\,
	combout => \u1|temp_counter_1Hz~0_combout\);

\u1|temp_counter_1Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u1|temp_counter_1Hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|temp_counter_1Hz~q\);

\u1|temp_counter_1Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|temp_counter_1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|temp_counter_1Hz~clkctrl_outclk\);

\u3|seccnt0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt0~6_combout\ = (\u3|LessThan0~0_combout\ & (!\u3|process_0~5_combout\ & (\u3|seccnt0[0]~0_combout\ $ (\u3|seccnt0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan0~0_combout\,
	datab => \u3|seccnt0[0]~0_combout\,
	datac => \u3|seccnt0\(1),
	datad => \u3|process_0~5_combout\,
	combout => \u3|seccnt0~6_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\set~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

\u3|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_0~2_combout\ = (!\set~input_o\) # (!\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|process_0~2_combout\);

\u3|process_0~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|process_0~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|process_0~2clkctrl_outclk\);

\u3|seccnt0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1Hz~clkctrl_outclk\,
	d => \u3|seccnt0~6_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|seccnt0\(1));

\u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|seccnt0[2]~2_combout\ $ (((\u3|seccnt0[0]~0_combout\ & \u3|seccnt0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|seccnt0[2]~2_combout\,
	datac => \u3|seccnt0[0]~0_combout\,
	datad => \u3|seccnt0\(1),
	combout => \u3|Add0~0_combout\);

\u3|seccnt1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[0]~1_combout\ = ((\u3|seccnt1[0]~1_combout\ & \clr~input_o\)) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|seccnt1[0]~1_combout\);

\u3|seccnt0[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt0[2]~3_combout\ = \u3|seccnt1[0]~1_combout\ $ (((\u3|LessThan0~0_combout\ & (!\u3|process_0~5_combout\ & \u3|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan0~0_combout\,
	datab => \u3|process_0~5_combout\,
	datac => \u3|Add0~0_combout\,
	datad => \u3|seccnt1[0]~1_combout\,
	combout => \u3|seccnt0[2]~3_combout\);

\u3|seccnt1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[0]~0_combout\ = (!\clr~input_o\) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set~input_o\,
	datab => \clr~input_o\,
	combout => \u3|seccnt1[0]~0_combout\);

\u3|seccnt1[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|seccnt1[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|seccnt1[0]~0clkctrl_outclk\);

\u3|seccnt0[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1Hz~clkctrl_outclk\,
	d => \u3|seccnt0[2]~3_combout\,
	clrn => \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|seccnt0[2]~_emulated_q\);

\u3|seccnt0[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt0[2]~2_combout\ = ((\clr~input_o\ & (\u3|seccnt0[2]~_emulated_q\ $ (\u3|seccnt1[0]~1_combout\)))) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt0[2]~_emulated_q\,
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|seccnt0[2]~2_combout\);

\u3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan0~0_combout\ = ((!\u3|seccnt0[0]~0_combout\ & (!\u3|seccnt0\(1) & !\u3|seccnt0[2]~2_combout\))) # (!\u3|seccnt0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt0[0]~0_combout\,
	datab => \u3|seccnt0\(1),
	datac => \u3|seccnt0[2]~2_combout\,
	datad => \u3|seccnt0\(3),
	combout => \u3|LessThan0~0_combout\);

\u3|seccnt0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt0[0]~1_combout\ = \u3|seccnt1[0]~1_combout\ $ (((\u3|process_0~5_combout\) # ((\u3|LessThan0~0_combout\ & !\u3|seccnt0[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan0~0_combout\,
	datab => \u3|seccnt0[0]~0_combout\,
	datac => \u3|process_0~5_combout\,
	datad => \u3|seccnt1[0]~1_combout\,
	combout => \u3|seccnt0[0]~1_combout\);

\u3|seccnt0[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1Hz~clkctrl_outclk\,
	d => \u3|seccnt0[0]~1_combout\,
	clrn => \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|seccnt0[0]~_emulated_q\);

\u3|seccnt0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt0[0]~0_combout\ = ((\clr~input_o\ & (\u3|seccnt0[0]~_emulated_q\ $ (\u3|seccnt1[0]~1_combout\)))) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt0[0]~_emulated_q\,
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|seccnt0[0]~0_combout\);

\u3|seccnt0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt0~7_combout\ = (\u3|seccnt0[0]~0_combout\ & (\u3|seccnt0\(1) & (\u3|seccnt0[2]~2_combout\ & !\u3|seccnt0\(3)))) # (!\u3|seccnt0[0]~0_combout\ & (!\u3|seccnt0\(1) & (!\u3|seccnt0[2]~2_combout\ & \u3|seccnt0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt0[0]~0_combout\,
	datab => \u3|seccnt0\(1),
	datac => \u3|seccnt0[2]~2_combout\,
	datad => \u3|seccnt0\(3),
	combout => \u3|seccnt0~7_combout\);

\u3|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_0~3_combout\ = (\u3|seccnt0\(3) & (!\u3|seccnt0[0]~0_combout\ & (!\u3|seccnt0\(1) & !\u3|seccnt0[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt0\(3),
	datab => \u3|seccnt0[0]~0_combout\,
	datac => \u3|seccnt0\(1),
	datad => \u3|seccnt0[2]~2_combout\,
	combout => \u3|process_0~3_combout\);

\u3|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_0~4_combout\ = (\u3|seccnt1[0]~2_combout\ & (\u3|seccnt1[2]~4_combout\ & !\u3|seccnt1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[0]~2_combout\,
	datab => \u3|seccnt1[2]~4_combout\,
	datad => \u3|seccnt1\(1),
	combout => \u3|process_0~4_combout\);

\u3|seccnt0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt0~8_combout\ = (\u3|seccnt0~7_combout\) # ((\u3|process_0~3_combout\ & \u3|process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt0~7_combout\,
	datab => \u3|process_0~3_combout\,
	datac => \u3|process_0~4_combout\,
	combout => \u3|seccnt0~8_combout\);

\u3|seccnt0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1Hz~clkctrl_outclk\,
	d => \u3|seccnt0~8_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|seccnt0\(3));

\u3|seccnt1[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[3]~10_combout\ = ((!\u3|seccnt0[0]~0_combout\ & (!\u3|seccnt0\(1) & !\u3|seccnt0[2]~2_combout\))) # (!\u3|seccnt0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt0\(3),
	datab => \u3|seccnt0[0]~0_combout\,
	datac => \u3|seccnt0\(1),
	datad => \u3|seccnt0[2]~2_combout\,
	combout => \u3|seccnt1[3]~10_combout\);

\u3|seccnt1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[2]~11_combout\ = (!\u3|seccnt1[3]~10_combout\ & ((\u3|seccnt1[0]~2_combout\ & (\u3|seccnt1\(1) & !\u3|seccnt1[2]~4_combout\)) # (!\u3|seccnt1[0]~2_combout\ & (!\u3|seccnt1\(1) & \u3|seccnt1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[0]~2_combout\,
	datab => \u3|seccnt1\(1),
	datac => \u3|seccnt1[2]~4_combout\,
	datad => \u3|seccnt1[3]~10_combout\,
	combout => \u3|seccnt1[2]~11_combout\);

\u3|seccnt1[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[2]~5_combout\ = \u3|seccnt1[0]~1_combout\ $ (((\u3|seccnt1[2]~11_combout\) # ((\u3|seccnt1[2]~4_combout\ & \u3|seccnt1[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[2]~4_combout\,
	datab => \u3|seccnt1[3]~10_combout\,
	datac => \u3|seccnt1[2]~11_combout\,
	datad => \u3|seccnt1[0]~1_combout\,
	combout => \u3|seccnt1[2]~5_combout\);

\u3|seccnt1[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1Hz~clkctrl_outclk\,
	d => \u3|seccnt1[2]~5_combout\,
	clrn => \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|seccnt1[2]~_emulated_q\);

\u3|seccnt1[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[2]~4_combout\ = ((\clr~input_o\ & (\u3|seccnt1[2]~_emulated_q\ $ (\u3|seccnt1[0]~1_combout\)))) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[2]~_emulated_q\,
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|seccnt1[2]~4_combout\);

\u3|seccnt1[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[1]~12_combout\ = (\u3|seccnt1[3]~10_combout\ & (((\u3|seccnt1\(1))))) # (!\u3|seccnt1[3]~10_combout\ & (!\u3|seccnt1[2]~4_combout\ & (\u3|seccnt1[0]~2_combout\ $ (\u3|seccnt1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[0]~2_combout\,
	datab => \u3|seccnt1\(1),
	datac => \u3|seccnt1[2]~4_combout\,
	datad => \u3|seccnt1[3]~10_combout\,
	combout => \u3|seccnt1[1]~12_combout\);

\u3|seccnt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1Hz~clkctrl_outclk\,
	d => \u3|seccnt1[1]~12_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|seccnt1\(1));

\u3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan1~0_combout\ = ((!\u3|seccnt1[0]~2_combout\ & !\u3|seccnt1\(1))) # (!\u3|seccnt1[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|seccnt1[0]~2_combout\,
	datac => \u3|seccnt1\(1),
	datad => \u3|seccnt1[2]~4_combout\,
	combout => \u3|LessThan1~0_combout\);

\u3|seccnt1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[0]~3_combout\ = \u3|seccnt1[0]~1_combout\ $ (((\u3|seccnt1[0]~2_combout\ & ((\u3|seccnt1[3]~10_combout\))) # (!\u3|seccnt1[0]~2_combout\ & (\u3|LessThan1~0_combout\ & !\u3|seccnt1[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan1~0_combout\,
	datab => \u3|seccnt1[0]~2_combout\,
	datac => \u3|seccnt1[3]~10_combout\,
	datad => \u3|seccnt1[0]~1_combout\,
	combout => \u3|seccnt1[0]~3_combout\);

\u3|seccnt1[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1Hz~clkctrl_outclk\,
	d => \u3|seccnt1[0]~3_combout\,
	clrn => \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|seccnt1[0]~_emulated_q\);

\u3|seccnt1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccnt1[0]~2_combout\ = ((\clr~input_o\ & (\u3|seccnt1[0]~_emulated_q\ $ (\u3|seccnt1[0]~1_combout\)))) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[0]~_emulated_q\,
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|seccnt1[0]~2_combout\);

\u3|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_0~5_combout\ = (\u3|seccnt1[0]~2_combout\ & (\u3|seccnt1[2]~4_combout\ & (!\u3|seccnt1\(1) & \u3|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[0]~2_combout\,
	datab => \u3|seccnt1[2]~4_combout\,
	datac => \u3|seccnt1\(1),
	datad => \u3|process_0~3_combout\,
	combout => \u3|process_0~5_combout\);

\u3|seccarry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|seccarry~0_combout\ = (\u3|process_0~5_combout\) # ((\u3|seccarry~q\ & ((\u3|LessThan0~0_combout\) # (\u3|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|process_0~5_combout\,
	datab => \u3|seccarry~q\,
	datac => \u3|LessThan0~0_combout\,
	datad => \u3|LessThan1~0_combout\,
	combout => \u3|seccarry~0_combout\);

\u3|seccarry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1Hz~clkctrl_outclk\,
	d => \u3|seccarry~0_combout\,
	ena => \u3|ALT_INV_process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|seccarry~q\);

\u3|seccarry~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|seccarry~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|seccarry~clkctrl_outclk\);

\u3|mincnt0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt0[0]~1_combout\ = \u3|seccnt1[0]~1_combout\ $ (((\u3|process_1~4_combout\) # ((\u3|LessThan2~0_combout\ & !\u3|mincnt0[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan2~0_combout\,
	datab => \u3|mincnt0[0]~0_combout\,
	datac => \u3|process_1~4_combout\,
	datad => \u3|seccnt1[0]~1_combout\,
	combout => \u3|mincnt0[0]~1_combout\);

\u3|mincnt0[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_seccarry~clkctrl_outclk\,
	d => \u3|mincnt0[0]~1_combout\,
	clrn => \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|mincnt0[0]~_emulated_q\);

\u3|mincnt0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt0[0]~0_combout\ = ((\clr~input_o\ & (\u3|mincnt0[0]~_emulated_q\ $ (\u3|seccnt1[0]~1_combout\)))) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt0[0]~_emulated_q\,
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|mincnt0[0]~0_combout\);

\u3|mincnt0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt0~6_combout\ = (\u3|LessThan2~0_combout\ & (!\u3|process_1~4_combout\ & (\u3|mincnt0[0]~0_combout\ $ (\u3|mincnt0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan2~0_combout\,
	datab => \u3|mincnt0[0]~0_combout\,
	datac => \u3|mincnt0\(1),
	datad => \u3|process_1~4_combout\,
	combout => \u3|mincnt0~6_combout\);

\u3|mincnt0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_seccarry~clkctrl_outclk\,
	d => \u3|mincnt0~6_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|mincnt0\(1));

\u3|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add2~0_combout\ = \u3|mincnt0\(2) $ (((\u3|mincnt0[0]~0_combout\ & \u3|mincnt0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|mincnt0\(2),
	datac => \u3|mincnt0[0]~0_combout\,
	datad => \u3|mincnt0\(1),
	combout => \u3|Add2~0_combout\);

\u3|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_1~2_combout\ = (!\u3|mincnt0[0]~0_combout\ & (!\u3|mincnt0\(1) & (!\u3|mincnt1\(1) & !\u3|mincnt0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt0[0]~0_combout\,
	datab => \u3|mincnt0\(1),
	datac => \u3|mincnt1\(1),
	datad => \u3|mincnt0\(2),
	combout => \u3|process_1~2_combout\);

\u3|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_1~3_combout\ = (\u3|mincnt1[0]~0_combout\ & (\u3|mincnt1[2]~2_combout\ & \u3|mincnt0[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt1[0]~0_combout\,
	datab => \u3|mincnt1[2]~2_combout\,
	datac => \u3|mincnt0[3]~2_combout\,
	combout => \u3|process_1~3_combout\);

\u3|mincnt0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt0~7_combout\ = (\u3|LessThan2~0_combout\ & (\u3|Add2~0_combout\ & ((!\u3|process_1~3_combout\) # (!\u3|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan2~0_combout\,
	datab => \u3|Add2~0_combout\,
	datac => \u3|process_1~2_combout\,
	datad => \u3|process_1~3_combout\,
	combout => \u3|mincnt0~7_combout\);

\u3|mincnt0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_seccarry~clkctrl_outclk\,
	d => \u3|mincnt0~7_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|mincnt0\(2));

\u3|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan2~0_combout\ = ((!\u3|mincnt0[0]~0_combout\ & (!\u3|mincnt0\(1) & !\u3|mincnt0\(2)))) # (!\u3|mincnt0[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt0[0]~0_combout\,
	datab => \u3|mincnt0\(1),
	datac => \u3|mincnt0\(2),
	datad => \u3|mincnt0[3]~2_combout\,
	combout => \u3|LessThan2~0_combout\);

\u3|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add2~1_combout\ = \u3|mincnt0[3]~2_combout\ $ (((\u3|mincnt0[0]~0_combout\ & (\u3|mincnt0\(1) & \u3|mincnt0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt0[3]~2_combout\,
	datab => \u3|mincnt0[0]~0_combout\,
	datac => \u3|mincnt0\(1),
	datad => \u3|mincnt0\(2),
	combout => \u3|Add2~1_combout\);

\u3|mincnt0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt0[3]~3_combout\ = \u3|seccnt1[0]~1_combout\ $ (((\u3|process_1~4_combout\) # ((\u3|LessThan2~0_combout\ & \u3|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan2~0_combout\,
	datab => \u3|Add2~1_combout\,
	datac => \u3|process_1~4_combout\,
	datad => \u3|seccnt1[0]~1_combout\,
	combout => \u3|mincnt0[3]~3_combout\);

\u3|mincnt0[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_seccarry~clkctrl_outclk\,
	d => \u3|mincnt0[3]~3_combout\,
	clrn => \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|mincnt0[3]~_emulated_q\);

\u3|mincnt0[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt0[3]~2_combout\ = ((\clr~input_o\ & (\u3|mincnt0[3]~_emulated_q\ $ (\u3|seccnt1[0]~1_combout\)))) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt0[3]~_emulated_q\,
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|mincnt0[3]~2_combout\);

\u3|mincnt1[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt1[3]~8_combout\ = ((!\u3|mincnt0[0]~0_combout\ & (!\u3|mincnt0\(1) & !\u3|mincnt0\(2)))) # (!\u3|mincnt0[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt0[3]~2_combout\,
	datab => \u3|mincnt0[0]~0_combout\,
	datac => \u3|mincnt0\(1),
	datad => \u3|mincnt0\(2),
	combout => \u3|mincnt1[3]~8_combout\);

\u3|mincnt1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt1[2]~9_combout\ = (!\u3|mincnt1[3]~8_combout\ & ((\u3|mincnt1[0]~0_combout\ & (\u3|mincnt1\(1) & !\u3|mincnt1[2]~2_combout\)) # (!\u3|mincnt1[0]~0_combout\ & (!\u3|mincnt1\(1) & \u3|mincnt1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt1[0]~0_combout\,
	datab => \u3|mincnt1\(1),
	datac => \u3|mincnt1[2]~2_combout\,
	datad => \u3|mincnt1[3]~8_combout\,
	combout => \u3|mincnt1[2]~9_combout\);

\u3|mincnt1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt1[2]~3_combout\ = \u3|seccnt1[0]~1_combout\ $ (((\u3|mincnt1[2]~9_combout\) # ((\u3|mincnt1[2]~2_combout\ & \u3|mincnt1[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt1[2]~2_combout\,
	datab => \u3|mincnt1[3]~8_combout\,
	datac => \u3|mincnt1[2]~9_combout\,
	datad => \u3|seccnt1[0]~1_combout\,
	combout => \u3|mincnt1[2]~3_combout\);

\u3|mincnt1[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_seccarry~clkctrl_outclk\,
	d => \u3|mincnt1[2]~3_combout\,
	clrn => \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|mincnt1[2]~_emulated_q\);

\u3|mincnt1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt1[2]~2_combout\ = ((\clr~input_o\ & (\u3|mincnt1[2]~_emulated_q\ $ (\u3|seccnt1[0]~1_combout\)))) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt1[2]~_emulated_q\,
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|mincnt1[2]~2_combout\);

\u3|mincnt1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt1[1]~10_combout\ = (\u3|mincnt1[3]~8_combout\ & (((\u3|mincnt1\(1))))) # (!\u3|mincnt1[3]~8_combout\ & (!\u3|mincnt1[2]~2_combout\ & (\u3|mincnt1[0]~0_combout\ $ (\u3|mincnt1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt1[0]~0_combout\,
	datab => \u3|mincnt1\(1),
	datac => \u3|mincnt1[2]~2_combout\,
	datad => \u3|mincnt1[3]~8_combout\,
	combout => \u3|mincnt1[1]~10_combout\);

\u3|mincnt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_seccarry~clkctrl_outclk\,
	d => \u3|mincnt1[1]~10_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|mincnt1\(1));

\u3|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan3~0_combout\ = ((!\u3|mincnt1[0]~0_combout\ & !\u3|mincnt1\(1))) # (!\u3|mincnt1[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|mincnt1[0]~0_combout\,
	datac => \u3|mincnt1\(1),
	datad => \u3|mincnt1[2]~2_combout\,
	combout => \u3|LessThan3~0_combout\);

\u3|mincnt1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt1[0]~1_combout\ = \u3|seccnt1[0]~1_combout\ $ (((\u3|mincnt1[0]~0_combout\ & ((\u3|mincnt1[3]~8_combout\))) # (!\u3|mincnt1[0]~0_combout\ & (\u3|LessThan3~0_combout\ & !\u3|mincnt1[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan3~0_combout\,
	datab => \u3|mincnt1[0]~0_combout\,
	datac => \u3|mincnt1[3]~8_combout\,
	datad => \u3|seccnt1[0]~1_combout\,
	combout => \u3|mincnt1[0]~1_combout\);

\u3|mincnt1[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_seccarry~clkctrl_outclk\,
	d => \u3|mincnt1[0]~1_combout\,
	clrn => \u3|ALT_INV_seccnt1[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|mincnt1[0]~_emulated_q\);

\u3|mincnt1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincnt1[0]~0_combout\ = ((\clr~input_o\ & (\u3|mincnt1[0]~_emulated_q\ $ (\u3|seccnt1[0]~1_combout\)))) # (!\set~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt1[0]~_emulated_q\,
	datab => \u3|seccnt1[0]~1_combout\,
	datac => \clr~input_o\,
	datad => \set~input_o\,
	combout => \u3|mincnt1[0]~0_combout\);

\u3|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_1~4_combout\ = (\u3|mincnt1[0]~0_combout\ & (\u3|mincnt1[2]~2_combout\ & (\u3|mincnt0[3]~2_combout\ & \u3|process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt1[0]~0_combout\,
	datab => \u3|mincnt1[2]~2_combout\,
	datac => \u3|mincnt0[3]~2_combout\,
	datad => \u3|process_1~2_combout\,
	combout => \u3|process_1~4_combout\);

\u3|mincarry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|mincarry~0_combout\ = (\u3|process_1~4_combout\) # ((\u3|mincarry~q\ & ((\u3|LessThan2~0_combout\) # (\u3|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|process_1~4_combout\,
	datab => \u3|mincarry~q\,
	datac => \u3|LessThan2~0_combout\,
	datad => \u3|LessThan3~0_combout\,
	combout => \u3|mincarry~0_combout\);

\u3|mincarry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_seccarry~clkctrl_outclk\,
	d => \u3|mincarry~0_combout\,
	ena => \u3|ALT_INV_process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|mincarry~q\);

\u3|mincarry~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u3|mincarry~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u3|mincarry~clkctrl_outclk\);

\u3|houcnt0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|houcnt0~1_combout\ = (\u3|LessThan4~0_combout\ & (!\u3|process_2~2_combout\ & (\u3|houcnt0\(0) $ (\u3|houcnt0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan4~0_combout\,
	datab => \u3|houcnt0\(0),
	datac => \u3|houcnt0\(1),
	datad => \u3|process_2~2_combout\,
	combout => \u3|houcnt0~1_combout\);

\u3|houcnt0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_mincarry~clkctrl_outclk\,
	d => \u3|houcnt0~1_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|houcnt0\(1));

\u3|houcnt0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|houcnt0~2_combout\ = (\u3|LessThan4~0_combout\ & (!\u3|process_2~2_combout\ & (\u3|houcnt0\(2) $ (\u3|process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan4~0_combout\,
	datab => \u3|houcnt0\(2),
	datac => \u3|process_2~0_combout\,
	datad => \u3|process_2~2_combout\,
	combout => \u3|houcnt0~2_combout\);

\u3|houcnt0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_mincarry~clkctrl_outclk\,
	d => \u3|houcnt0~2_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|houcnt0\(2));

\u3|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|LessThan4~0_combout\ = ((!\u3|houcnt0\(0) & (!\u3|houcnt0\(1) & !\u3|houcnt0\(2)))) # (!\u3|houcnt0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt0\(0),
	datab => \u3|houcnt0\(1),
	datac => \u3|houcnt0\(2),
	datad => \u3|houcnt0\(3),
	combout => \u3|LessThan4~0_combout\);

\u3|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~0_combout\ = \u3|houcnt0\(3) $ (((\u3|houcnt0\(0) & (\u3|houcnt0\(1) & \u3|houcnt0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt0\(3),
	datab => \u3|houcnt0\(0),
	datac => \u3|houcnt0\(1),
	datad => \u3|houcnt0\(2),
	combout => \u3|Add4~0_combout\);

\u3|houcnt0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|houcnt0~3_combout\ = (\u3|LessThan4~0_combout\ & (\u3|Add4~0_combout\ & !\u3|process_2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan4~0_combout\,
	datab => \u3|Add4~0_combout\,
	datad => \u3|process_2~2_combout\,
	combout => \u3|houcnt0~3_combout\);

\u3|houcnt0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_mincarry~clkctrl_outclk\,
	d => \u3|houcnt0~3_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|houcnt0\(3));

\u3|houcnt0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|houcnt0~0_combout\ = (!\u3|houcnt0\(0) & (((!\u3|houcnt0\(1) & !\u3|houcnt0\(2))) # (!\u3|houcnt0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt0\(0),
	datab => \u3|houcnt0\(3),
	datac => \u3|houcnt0\(1),
	datad => \u3|houcnt0\(2),
	combout => \u3|houcnt0~0_combout\);

\u3|houcnt0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_mincarry~clkctrl_outclk\,
	d => \u3|houcnt0~0_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|houcnt0\(0));

\u3|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_2~0_combout\ = (\u3|houcnt0\(0) & \u3|houcnt0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt0\(0),
	datab => \u3|houcnt0\(1),
	combout => \u3|process_2~0_combout\);

\u3|houcnt1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|houcnt1[1]~1_combout\ = (!\u3|process_2~2_combout\ & (\u3|houcnt1\(1) $ (((!\u3|LessThan4~0_combout\ & \u3|houcnt1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt1\(1),
	datab => \u3|LessThan4~0_combout\,
	datac => \u3|houcnt1\(0),
	datad => \u3|process_2~2_combout\,
	combout => \u3|houcnt1[1]~1_combout\);

\u3|houcnt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_mincarry~clkctrl_outclk\,
	d => \u3|houcnt1[1]~1_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|houcnt1\(1));

\u3|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add5~0_combout\ = \u3|houcnt1\(2) $ (((\u3|houcnt1\(0) & \u3|houcnt1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|houcnt1\(2),
	datac => \u3|houcnt1\(0),
	datad => \u3|houcnt1\(1),
	combout => \u3|Add5~0_combout\);

\u3|houcnt1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|houcnt1[2]~2_combout\ = (!\u3|process_2~2_combout\ & ((\u3|LessThan4~0_combout\ & (\u3|houcnt1\(2))) # (!\u3|LessThan4~0_combout\ & ((\u3|Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt1\(2),
	datab => \u3|Add5~0_combout\,
	datac => \u3|LessThan4~0_combout\,
	datad => \u3|process_2~2_combout\,
	combout => \u3|houcnt1[2]~2_combout\);

\u3|houcnt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_mincarry~clkctrl_outclk\,
	d => \u3|houcnt1[2]~2_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|houcnt1\(2));

\u3|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add5~1_combout\ = \u3|houcnt1\(3) $ (((\u3|houcnt1\(0) & (\u3|houcnt1\(1) & \u3|houcnt1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt1\(3),
	datab => \u3|houcnt1\(0),
	datac => \u3|houcnt1\(1),
	datad => \u3|houcnt1\(2),
	combout => \u3|Add5~1_combout\);

\u3|houcnt1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|houcnt1[3]~3_combout\ = (!\u3|process_2~2_combout\ & ((\u3|LessThan4~0_combout\ & (\u3|houcnt1\(3))) # (!\u3|LessThan4~0_combout\ & ((\u3|Add5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt1\(3),
	datab => \u3|Add5~1_combout\,
	datac => \u3|LessThan4~0_combout\,
	datad => \u3|process_2~2_combout\,
	combout => \u3|houcnt1[3]~3_combout\);

\u3|houcnt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_mincarry~clkctrl_outclk\,
	d => \u3|houcnt1[3]~3_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|houcnt1\(3));

\u3|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_2~1_combout\ = (\u3|houcnt1\(1) & (!\u3|houcnt1\(2) & (!\u3|houcnt0\(2) & !\u3|houcnt1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt1\(1),
	datab => \u3|houcnt1\(2),
	datac => \u3|houcnt0\(2),
	datad => \u3|houcnt1\(3),
	combout => \u3|process_2~1_combout\);

\u3|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|process_2~2_combout\ = (\u3|process_2~0_combout\ & (\u3|process_2~1_combout\ & (!\u3|houcnt1\(0) & !\u3|houcnt0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|process_2~0_combout\,
	datab => \u3|process_2~1_combout\,
	datac => \u3|houcnt1\(0),
	datad => \u3|houcnt0\(3),
	combout => \u3|process_2~2_combout\);

\u3|houcnt1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|houcnt1[0]~0_combout\ = (!\u3|process_2~2_combout\ & (\u3|houcnt1\(0) $ (!\u3|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|process_2~2_combout\,
	datac => \u3|houcnt1\(0),
	datad => \u3|LessThan4~0_combout\,
	combout => \u3|houcnt1[0]~0_combout\);

\u3|houcnt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u3|ALT_INV_mincarry~clkctrl_outclk\,
	d => \u3|houcnt1[0]~0_combout\,
	clrn => \u3|ALT_INV_process_0~2clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|houcnt1\(0));

\u4|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~2_combout\ = (\u2|led_sel\(5) & (((\u3|houcnt0\(0) & !\u2|led_sel\(4))))) # (!\u2|led_sel\(5) & (\u3|houcnt1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt1\(0),
	datab => \u2|led_sel\(5),
	datac => \u3|houcnt0\(0),
	datad => \u2|led_sel\(4),
	combout => \u4|Mux8~2_combout\);

\u2|led_sel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_sel~2_combout\ = (\u2|i\(31) & (((!\u2|i\(2) & !\u2|i\(0))) # (!\u2|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(1),
	datab => \u2|i\(2),
	datac => \u2|i\(0),
	datad => \u2|i\(31),
	combout => \u2|led_sel~2_combout\);

\u2|led_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|led_sel~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_sel\(2));

\u2|led_sel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_sel~3_combout\ = (\u2|i\(31) & (((!\u2|i\(2) & \u2|i\(0))) # (!\u2|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(1),
	datab => \u2|i\(2),
	datac => \u2|i\(0),
	datad => \u2|i\(31),
	combout => \u2|led_sel~3_combout\);

\u2|led_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|led_sel~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_sel\(3));

\u4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux12~0_combout\ = (\u2|led_sel\(2) & \u2|led_sel\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_sel\(2),
	datab => \u2|led_sel\(3),
	combout => \u4|Mux12~0_combout\);

\u2|led_sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_sel~1_combout\ = (\u2|i\(31) & ((\u2|i\(2) & (!\u2|i\(1))) # (!\u2|i\(2) & ((\u2|i\(1)) # (\u2|i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(2),
	datab => \u2|i\(1),
	datac => \u2|i\(0),
	datad => \u2|i\(31),
	combout => \u2|led_sel~1_combout\);

\u2|led_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|led_sel~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_sel\(1));

\u4|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux12~1_combout\ = (\u2|led_sel\(3) & ((\u2|led_sel\(1)) # (!\u2|led_sel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_sel\(3),
	datab => \u2|led_sel\(1),
	datad => \u2|led_sel\(2),
	combout => \u4|Mux12~1_combout\);

\u4|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~3_combout\ = (\u4|Mux12~0_combout\ & (((\u4|Mux12~1_combout\)))) # (!\u4|Mux12~0_combout\ & ((\u4|Mux12~1_combout\ & (\u3|mincnt0[0]~0_combout\)) # (!\u4|Mux12~1_combout\ & ((\u3|mincnt1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux12~0_combout\,
	datab => \u3|mincnt0[0]~0_combout\,
	datac => \u4|Mux12~1_combout\,
	datad => \u3|mincnt1[0]~0_combout\,
	combout => \u4|Mux8~3_combout\);

\u4|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~4_combout\ = (\u4|Mux12~0_combout\ & ((\u4|Mux8~3_combout\ & ((\u3|seccnt0[0]~0_combout\))) # (!\u4|Mux8~3_combout\ & (\u3|seccnt1[0]~2_combout\)))) # (!\u4|Mux12~0_combout\ & (((\u4|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[0]~2_combout\,
	datab => \u4|Mux12~0_combout\,
	datac => \u4|Mux8~3_combout\,
	datad => \u3|seccnt0[0]~0_combout\,
	combout => \u4|Mux8~4_combout\);

\u4|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux8~5_combout\ = (\u4|Mux8~2_combout\) # ((\u2|led_sel\(4) & (\u2|led_sel\(5) & \u4|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_sel\(4),
	datab => \u2|led_sel\(5),
	datac => \u4|Mux8~2_combout\,
	datad => \u4|Mux8~4_combout\,
	combout => \u4|Mux8~5_combout\);

\u2|led_sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|led_sel~0_combout\ = (\u2|i\(31) & ((\u2|i\(2) & (!\u2|i\(1))) # (!\u2|i\(2) & ((\u2|i\(1)) # (!\u2|i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|i\(2),
	datab => \u2|i\(1),
	datac => \u2|i\(0),
	datad => \u2|i\(31),
	combout => \u2|led_sel~0_combout\);

\u2|led_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u1|temp_counter_1KHz~clkctrl_outclk\,
	d => \u2|led_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|led_sel\(0));

\u4|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~0_combout\ = (\u2|led_sel\(0) & ((\u2|led_sel\(1) & (\u2|led_sel\(2) $ (\u2|led_sel\(3)))) # (!\u2|led_sel\(1) & (\u2|led_sel\(2) & \u2|led_sel\(3))))) # (!\u2|led_sel\(0) & (\u2|led_sel\(1) & (\u2|led_sel\(2) & \u2|led_sel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_sel\(0),
	datab => \u2|led_sel\(1),
	datac => \u2|led_sel\(2),
	datad => \u2|led_sel\(3),
	combout => \u4|Mux9~0_combout\);

\u4|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~1_combout\ = (\u2|led_sel\(0) & (\u2|led_sel\(1) & (\u2|led_sel\(2) & \u2|led_sel\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_sel\(0),
	datab => \u2|led_sel\(1),
	datac => \u2|led_sel\(2),
	datad => \u2|led_sel\(3),
	combout => \u4|Mux9~1_combout\);

\u4|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux9~2_combout\ = (\u2|led_sel\(4) & ((\u2|led_sel\(5) & (\u4|Mux9~0_combout\)) # (!\u2|led_sel\(5) & ((\u4|Mux9~1_combout\))))) # (!\u2|led_sel\(4) & (((\u4|Mux9~1_combout\ & \u2|led_sel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux9~0_combout\,
	datab => \u4|Mux9~1_combout\,
	datac => \u2|led_sel\(4),
	datad => \u2|led_sel\(5),
	combout => \u4|Mux9~2_combout\);

\u4|Mux9~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u4|Mux9~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u4|Mux9~2clkctrl_outclk\);

\u4|dig_temp[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|dig_temp\(0) = (GLOBAL(\u4|Mux9~2clkctrl_outclk\) & (\u4|Mux8~5_combout\)) # (!GLOBAL(\u4|Mux9~2clkctrl_outclk\) & ((\u4|dig_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux8~5_combout\,
	datac => \u4|dig_temp\(0),
	datad => \u4|Mux9~2clkctrl_outclk\,
	combout => \u4|dig_temp\(0));

\u4|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~2_combout\ = (\u2|led_sel\(5) & (((\u3|houcnt0\(1) & !\u2|led_sel\(4))))) # (!\u2|led_sel\(5) & (\u3|houcnt1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt1\(1),
	datab => \u2|led_sel\(5),
	datac => \u3|houcnt0\(1),
	datad => \u2|led_sel\(4),
	combout => \u4|Mux10~2_combout\);

\u4|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~3_combout\ = (\u4|Mux12~1_combout\ & (((\u4|Mux12~0_combout\)))) # (!\u4|Mux12~1_combout\ & ((\u4|Mux12~0_combout\ & (\u3|seccnt1\(1))) # (!\u4|Mux12~0_combout\ & ((\u3|mincnt1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux12~1_combout\,
	datab => \u3|seccnt1\(1),
	datac => \u4|Mux12~0_combout\,
	datad => \u3|mincnt1\(1),
	combout => \u4|Mux10~3_combout\);

\u4|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~4_combout\ = (\u4|Mux12~1_combout\ & ((\u4|Mux10~3_combout\ & ((\u3|seccnt0\(1)))) # (!\u4|Mux10~3_combout\ & (\u3|mincnt0\(1))))) # (!\u4|Mux12~1_combout\ & (((\u4|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|mincnt0\(1),
	datab => \u4|Mux12~1_combout\,
	datac => \u4|Mux10~3_combout\,
	datad => \u3|seccnt0\(1),
	combout => \u4|Mux10~4_combout\);

\u4|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux10~5_combout\ = (\u4|Mux10~2_combout\) # ((\u2|led_sel\(4) & (\u2|led_sel\(5) & \u4|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_sel\(4),
	datab => \u2|led_sel\(5),
	datac => \u4|Mux10~2_combout\,
	datad => \u4|Mux10~4_combout\,
	combout => \u4|Mux10~5_combout\);

\u4|dig_temp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|dig_temp\(1) = (GLOBAL(\u4|Mux9~2clkctrl_outclk\) & (\u4|Mux10~5_combout\)) # (!GLOBAL(\u4|Mux9~2clkctrl_outclk\) & ((\u4|dig_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux10~5_combout\,
	datac => \u4|dig_temp\(1),
	datad => \u4|Mux9~2clkctrl_outclk\,
	combout => \u4|dig_temp\(1));

\u4|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~2_combout\ = (\u2|led_sel\(5) & (((\u3|houcnt0\(2) & !\u2|led_sel\(4))))) # (!\u2|led_sel\(5) & (\u3|houcnt1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt1\(2),
	datab => \u2|led_sel\(5),
	datac => \u3|houcnt0\(2),
	datad => \u2|led_sel\(4),
	combout => \u4|Mux11~2_combout\);

\u4|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~3_combout\ = (\u4|Mux12~0_combout\ & (((\u4|Mux12~1_combout\)))) # (!\u4|Mux12~0_combout\ & ((\u4|Mux12~1_combout\ & (\u3|mincnt0\(2))) # (!\u4|Mux12~1_combout\ & ((\u3|mincnt1[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux12~0_combout\,
	datab => \u3|mincnt0\(2),
	datac => \u4|Mux12~1_combout\,
	datad => \u3|mincnt1[2]~2_combout\,
	combout => \u4|Mux11~3_combout\);

\u4|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~4_combout\ = (\u4|Mux12~0_combout\ & ((\u4|Mux11~3_combout\ & ((\u3|seccnt0[2]~2_combout\))) # (!\u4|Mux11~3_combout\ & (\u3|seccnt1[2]~4_combout\)))) # (!\u4|Mux12~0_combout\ & (((\u4|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|seccnt1[2]~4_combout\,
	datab => \u4|Mux12~0_combout\,
	datac => \u4|Mux11~3_combout\,
	datad => \u3|seccnt0[2]~2_combout\,
	combout => \u4|Mux11~4_combout\);

\u4|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux11~5_combout\ = (\u4|Mux11~2_combout\) # ((\u2|led_sel\(4) & (\u2|led_sel\(5) & \u4|Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_sel\(4),
	datab => \u2|led_sel\(5),
	datac => \u4|Mux11~2_combout\,
	datad => \u4|Mux11~4_combout\,
	combout => \u4|Mux11~5_combout\);

\u4|dig_temp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|dig_temp\(2) = (GLOBAL(\u4|Mux9~2clkctrl_outclk\) & (\u4|Mux11~5_combout\)) # (!GLOBAL(\u4|Mux9~2clkctrl_outclk\) & ((\u4|dig_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux11~5_combout\,
	datac => \u4|dig_temp\(2),
	datad => \u4|Mux9~2clkctrl_outclk\,
	combout => \u4|dig_temp\(2));

\u4|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux12~2_combout\ = (\u2|led_sel\(2) & (\u2|led_sel\(1) & ((\u3|seccnt0\(3))))) # (!\u2|led_sel\(2) & (((\u3|mincnt0[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|led_sel\(1),
	datab => \u2|led_sel\(2),
	datac => \u3|mincnt0[3]~2_combout\,
	datad => \u3|seccnt0\(3),
	combout => \u4|Mux12~2_combout\);

\u4|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux12~3_combout\ = (\u2|led_sel\(4) & (((\u4|Mux12~2_combout\ & \u2|led_sel\(3))))) # (!\u2|led_sel\(4) & (\u3|houcnt0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|houcnt0\(3),
	datab => \u2|led_sel\(4),
	datac => \u4|Mux12~2_combout\,
	datad => \u2|led_sel\(3),
	combout => \u4|Mux12~3_combout\);

\u4|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux12~4_combout\ = (\u2|led_sel\(5) & (\u4|Mux12~3_combout\)) # (!\u2|led_sel\(5) & ((\u3|houcnt1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux12~3_combout\,
	datac => \u3|houcnt1\(3),
	datad => \u2|led_sel\(5),
	combout => \u4|Mux12~4_combout\);

\u4|dig_temp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|dig_temp\(3) = (GLOBAL(\u4|Mux9~2clkctrl_outclk\) & (\u4|Mux12~4_combout\)) # (!GLOBAL(\u4|Mux9~2clkctrl_outclk\) & ((\u4|dig_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux12~4_combout\,
	datac => \u4|dig_temp\(3),
	datad => \u4|Mux9~2clkctrl_outclk\,
	combout => \u4|dig_temp\(3));

\u4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux7~0_combout\ = (!\u4|dig_temp\(1) & (!\u4|dig_temp\(3) & (\u4|dig_temp\(0) $ (\u4|dig_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dig_temp\(0),
	datab => \u4|dig_temp\(1),
	datac => \u4|dig_temp\(2),
	datad => \u4|dig_temp\(3),
	combout => \u4|Mux7~0_combout\);

\u4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux6~0_combout\ = (\u4|dig_temp\(2) & (!\u4|dig_temp\(3) & (\u4|dig_temp\(0) $ (\u4|dig_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dig_temp\(0),
	datab => \u4|dig_temp\(1),
	datac => \u4|dig_temp\(2),
	datad => \u4|dig_temp\(3),
	combout => \u4|Mux6~0_combout\);

\u4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux5~0_combout\ = (\u4|dig_temp\(1) & (!\u4|dig_temp\(0) & (!\u4|dig_temp\(2) & !\u4|dig_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dig_temp\(1),
	datab => \u4|dig_temp\(0),
	datac => \u4|dig_temp\(2),
	datad => \u4|dig_temp\(3),
	combout => \u4|Mux5~0_combout\);

\u4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux4~0_combout\ = (!\u4|dig_temp\(3) & ((\u4|dig_temp\(0) & (\u4|dig_temp\(1) $ (!\u4|dig_temp\(2)))) # (!\u4|dig_temp\(0) & (!\u4|dig_temp\(1) & \u4|dig_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dig_temp\(0),
	datab => \u4|dig_temp\(1),
	datac => \u4|dig_temp\(2),
	datad => \u4|dig_temp\(3),
	combout => \u4|Mux4~0_combout\);

\u4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux3~0_combout\ = (\u4|dig_temp\(1) & (\u4|dig_temp\(0) & ((!\u4|dig_temp\(3))))) # (!\u4|dig_temp\(1) & ((\u4|dig_temp\(2) & ((!\u4|dig_temp\(3)))) # (!\u4|dig_temp\(2) & (\u4|dig_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dig_temp\(0),
	datab => \u4|dig_temp\(1),
	datac => \u4|dig_temp\(2),
	datad => \u4|dig_temp\(3),
	combout => \u4|Mux3~0_combout\);

\u4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux2~0_combout\ = (!\u4|dig_temp\(3) & ((\u4|dig_temp\(0) & ((\u4|dig_temp\(1)) # (!\u4|dig_temp\(2)))) # (!\u4|dig_temp\(0) & (\u4|dig_temp\(1) & !\u4|dig_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dig_temp\(0),
	datab => \u4|dig_temp\(1),
	datac => \u4|dig_temp\(2),
	datad => \u4|dig_temp\(3),
	combout => \u4|Mux2~0_combout\);

\u4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux1~0_combout\ = (\u4|dig_temp\(3)) # ((\u4|dig_temp\(1) & ((!\u4|dig_temp\(2)) # (!\u4|dig_temp\(0)))) # (!\u4|dig_temp\(1) & ((\u4|dig_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|dig_temp\(0),
	datab => \u4|dig_temp\(1),
	datac => \u4|dig_temp\(2),
	datad => \u4|dig_temp\(3),
	combout => \u4|Mux1~0_combout\);

\u4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|Mux0~0_combout\ = ((!\u4|dig_temp\(1) & !\u4|dig_temp\(2))) # (!\u4|dig_temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|dig_temp\(1),
	datac => \u4|dig_temp\(2),
	datad => \u4|dig_temp\(3),
	combout => \u4|Mux0~0_combout\);

\~QUARTUS_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;
END structure;


