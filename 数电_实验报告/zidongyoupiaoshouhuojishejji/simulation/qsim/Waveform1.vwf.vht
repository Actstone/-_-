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
-- Generated on "07/07/2018 16:11:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          piaojiasheding
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY piaojiasheding_vhd_vec_tst IS
END piaojiasheding_vhd_vec_tst;
ARCHITECTURE piaojiasheding_arch OF piaojiasheding_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rd1 : STD_LOGIC;
COMPONENT piaojiasheding
	PORT (
	clk : IN STD_LOGIC;
	en : IN STD_LOGIC;
	q : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	rd1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : piaojiasheding
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	en => en,
	q => q,
	rd1 => rd1
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- en
t_prcs_en: PROCESS
BEGIN
LOOP
	en <= '0';
	WAIT FOR 20000 ps;
	en <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_en;

-- rd1
t_prcs_rd1: PROCESS
BEGIN
	rd1 <= '0';
WAIT;
END PROCESS t_prcs_rd1;
END piaojiasheding_arch;
