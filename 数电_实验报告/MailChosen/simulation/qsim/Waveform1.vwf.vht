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
-- Generated on "06/24/2018 19:25:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clk_source
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clk_source_vhd_vec_tst IS
END clk_source_vhd_vec_tst;
ARCHITECTURE clk_source_arch OF clk_source_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_50m : STD_LOGIC;
COMPONENT clk_source
	PORT (
	clk : OUT STD_LOGIC;
	clk_50m : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clk_source
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_50m => clk_50m
	);

-- clk_50m
t_prcs_clk_50m: PROCESS
BEGIN
	clk_50m <= '0';
	WAIT FOR 15000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 15000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 15000 ps;
	clk_50m <= '0';
	WAIT FOR 20000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 30000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 20000 ps;
	clk_50m <= '0';
	WAIT FOR 20000 ps;
	clk_50m <= '1';
	WAIT FOR 20000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 15000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 20000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 25000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 20000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 15000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 20000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 20000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 15000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 15000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 15000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 15000 ps;
	clk_50m <= '1';
	WAIT FOR 20000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 35000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 40000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 15000 ps;
	clk_50m <= '1';
	WAIT FOR 15000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 15000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 10000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 15000 ps;
	clk_50m <= '0';
	WAIT FOR 5000 ps;
	clk_50m <= '1';
	WAIT FOR 15000 ps;
	clk_50m <= '0';
	WAIT FOR 10000 ps;
	clk_50m <= '1';
	WAIT FOR 5000 ps;
	clk_50m <= '0';
WAIT;
END PROCESS t_prcs_clk_50m;
END clk_source_arch;
