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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/07/2018 16:13:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          szz
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY szz_vhd_vec_tst IS
END szz_vhd_vec_tst;
ARCHITECTURE szz_arch OF szz_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_in : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL led_dig : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL led_sel : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL set : STD_LOGIC;
SIGNAL speaker : STD_LOGIC;
COMPONENT szz
	PORT (
	clk_in : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	led_dig : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	led_sel : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	set : IN STD_LOGIC;
	speaker : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : szz
	PORT MAP (
-- list connections between master ports and signals
	clk_in => clk_in,
	clr => clr,
	led_dig => led_dig,
	led_sel => led_sel,
	set => set,
	speaker => speaker
	);

-- clk_in
t_prcs_clk_in: PROCESS
BEGIN
	clk_in <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clk_in <= '0';
		WAIT FOR 10000 ps;
		clk_in <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk_in <= '0';
WAIT;
END PROCESS t_prcs_clk_in;

-- clr
t_prcs_clr: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clr <= '0';
		WAIT FOR 30000 ps;
		clr <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clr <= '0';
	WAIT FOR 30000 ps;
	clr <= '1';
WAIT;
END PROCESS t_prcs_clr;

-- set
t_prcs_set: PROCESS
BEGIN
LOOP
	set <= '0';
	WAIT FOR 50000 ps;
	set <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_set;
END szz_arch;
