-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/26/2019 15:26:08"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	module IS
    PORT (
	fpga_clk : IN std_logic;
	alu : BUFFER std_logic_vector(31 DOWNTO 0);
	inst : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END module;

-- Design Ports Information
-- fpga_clk	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[2]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[3]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[4]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[5]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[7]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[8]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[9]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[10]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[11]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[12]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[13]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[14]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[15]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[16]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[17]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[18]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[19]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[20]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[21]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[22]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[23]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[24]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[25]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[26]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[27]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[28]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[29]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[30]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu[31]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[1]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[4]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[6]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[7]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[8]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[10]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[11]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[12]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[13]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[14]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[15]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[16]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[17]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[18]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[19]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[20]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[21]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[22]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[23]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[24]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[25]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[26]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[27]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[28]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[29]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[30]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[31]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fpga_clk : std_logic;
SIGNAL ww_alu : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inst : std_logic_vector(31 DOWNTO 0);
SIGNAL \fpga_clk~input_o\ : std_logic;
SIGNAL \alu[0]~output_o\ : std_logic;
SIGNAL \alu[1]~output_o\ : std_logic;
SIGNAL \alu[2]~output_o\ : std_logic;
SIGNAL \alu[3]~output_o\ : std_logic;
SIGNAL \alu[4]~output_o\ : std_logic;
SIGNAL \alu[5]~output_o\ : std_logic;
SIGNAL \alu[6]~output_o\ : std_logic;
SIGNAL \alu[7]~output_o\ : std_logic;
SIGNAL \alu[8]~output_o\ : std_logic;
SIGNAL \alu[9]~output_o\ : std_logic;
SIGNAL \alu[10]~output_o\ : std_logic;
SIGNAL \alu[11]~output_o\ : std_logic;
SIGNAL \alu[12]~output_o\ : std_logic;
SIGNAL \alu[13]~output_o\ : std_logic;
SIGNAL \alu[14]~output_o\ : std_logic;
SIGNAL \alu[15]~output_o\ : std_logic;
SIGNAL \alu[16]~output_o\ : std_logic;
SIGNAL \alu[17]~output_o\ : std_logic;
SIGNAL \alu[18]~output_o\ : std_logic;
SIGNAL \alu[19]~output_o\ : std_logic;
SIGNAL \alu[20]~output_o\ : std_logic;
SIGNAL \alu[21]~output_o\ : std_logic;
SIGNAL \alu[22]~output_o\ : std_logic;
SIGNAL \alu[23]~output_o\ : std_logic;
SIGNAL \alu[24]~output_o\ : std_logic;
SIGNAL \alu[25]~output_o\ : std_logic;
SIGNAL \alu[26]~output_o\ : std_logic;
SIGNAL \alu[27]~output_o\ : std_logic;
SIGNAL \alu[28]~output_o\ : std_logic;
SIGNAL \alu[29]~output_o\ : std_logic;
SIGNAL \alu[30]~output_o\ : std_logic;
SIGNAL \alu[31]~output_o\ : std_logic;
SIGNAL \inst[0]~output_o\ : std_logic;
SIGNAL \inst[1]~output_o\ : std_logic;
SIGNAL \inst[2]~output_o\ : std_logic;
SIGNAL \inst[3]~output_o\ : std_logic;
SIGNAL \inst[4]~output_o\ : std_logic;
SIGNAL \inst[5]~output_o\ : std_logic;
SIGNAL \inst[6]~output_o\ : std_logic;
SIGNAL \inst[7]~output_o\ : std_logic;
SIGNAL \inst[8]~output_o\ : std_logic;
SIGNAL \inst[9]~output_o\ : std_logic;
SIGNAL \inst[10]~output_o\ : std_logic;
SIGNAL \inst[11]~output_o\ : std_logic;
SIGNAL \inst[12]~output_o\ : std_logic;
SIGNAL \inst[13]~output_o\ : std_logic;
SIGNAL \inst[14]~output_o\ : std_logic;
SIGNAL \inst[15]~output_o\ : std_logic;
SIGNAL \inst[16]~output_o\ : std_logic;
SIGNAL \inst[17]~output_o\ : std_logic;
SIGNAL \inst[18]~output_o\ : std_logic;
SIGNAL \inst[19]~output_o\ : std_logic;
SIGNAL \inst[20]~output_o\ : std_logic;
SIGNAL \inst[21]~output_o\ : std_logic;
SIGNAL \inst[22]~output_o\ : std_logic;
SIGNAL \inst[23]~output_o\ : std_logic;
SIGNAL \inst[24]~output_o\ : std_logic;
SIGNAL \inst[25]~output_o\ : std_logic;
SIGNAL \inst[26]~output_o\ : std_logic;
SIGNAL \inst[27]~output_o\ : std_logic;
SIGNAL \inst[28]~output_o\ : std_logic;
SIGNAL \inst[29]~output_o\ : std_logic;
SIGNAL \inst[30]~output_o\ : std_logic;
SIGNAL \inst[31]~output_o\ : std_logic;

BEGIN

ww_fpga_clk <= fpga_clk;
alu <= ww_alu;
inst <= ww_inst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X96_Y73_N16
\alu[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\alu[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[1]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\alu[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[2]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\alu[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\alu[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[4]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\alu[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[5]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\alu[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\alu[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[7]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\alu[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[8]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\alu[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[9]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\alu[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[10]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\alu[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\alu[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\alu[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[13]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\alu[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[14]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\alu[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[15]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\alu[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[16]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\alu[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[17]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\alu[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[18]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\alu[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[19]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\alu[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[20]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\alu[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[21]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\alu[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[22]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\alu[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[23]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\alu[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[24]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\alu[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[25]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\alu[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[26]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\alu[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[27]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\alu[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[28]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\alu[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[29]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\alu[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[30]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\alu[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu[31]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\inst[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[0]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\inst[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\inst[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\inst[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[3]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\inst[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[4]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\inst[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[5]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\inst[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[6]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\inst[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\inst[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[8]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\inst[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[9]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\inst[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[10]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\inst[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[11]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\inst[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[12]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\inst[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[13]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\inst[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[14]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\inst[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[15]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\inst[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[16]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\inst[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[17]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\inst[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[18]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\inst[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[19]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\inst[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[20]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\inst[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[21]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\inst[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[22]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\inst[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[23]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\inst[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[24]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\inst[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[25]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\inst[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[26]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\inst[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[27]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\inst[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[28]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\inst[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[29]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\inst[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[30]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\inst[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst[31]~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\fpga_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_clk,
	o => \fpga_clk~input_o\);

ww_alu(0) <= \alu[0]~output_o\;

ww_alu(1) <= \alu[1]~output_o\;

ww_alu(2) <= \alu[2]~output_o\;

ww_alu(3) <= \alu[3]~output_o\;

ww_alu(4) <= \alu[4]~output_o\;

ww_alu(5) <= \alu[5]~output_o\;

ww_alu(6) <= \alu[6]~output_o\;

ww_alu(7) <= \alu[7]~output_o\;

ww_alu(8) <= \alu[8]~output_o\;

ww_alu(9) <= \alu[9]~output_o\;

ww_alu(10) <= \alu[10]~output_o\;

ww_alu(11) <= \alu[11]~output_o\;

ww_alu(12) <= \alu[12]~output_o\;

ww_alu(13) <= \alu[13]~output_o\;

ww_alu(14) <= \alu[14]~output_o\;

ww_alu(15) <= \alu[15]~output_o\;

ww_alu(16) <= \alu[16]~output_o\;

ww_alu(17) <= \alu[17]~output_o\;

ww_alu(18) <= \alu[18]~output_o\;

ww_alu(19) <= \alu[19]~output_o\;

ww_alu(20) <= \alu[20]~output_o\;

ww_alu(21) <= \alu[21]~output_o\;

ww_alu(22) <= \alu[22]~output_o\;

ww_alu(23) <= \alu[23]~output_o\;

ww_alu(24) <= \alu[24]~output_o\;

ww_alu(25) <= \alu[25]~output_o\;

ww_alu(26) <= \alu[26]~output_o\;

ww_alu(27) <= \alu[27]~output_o\;

ww_alu(28) <= \alu[28]~output_o\;

ww_alu(29) <= \alu[29]~output_o\;

ww_alu(30) <= \alu[30]~output_o\;

ww_alu(31) <= \alu[31]~output_o\;

ww_inst(0) <= \inst[0]~output_o\;

ww_inst(1) <= \inst[1]~output_o\;

ww_inst(2) <= \inst[2]~output_o\;

ww_inst(3) <= \inst[3]~output_o\;

ww_inst(4) <= \inst[4]~output_o\;

ww_inst(5) <= \inst[5]~output_o\;

ww_inst(6) <= \inst[6]~output_o\;

ww_inst(7) <= \inst[7]~output_o\;

ww_inst(8) <= \inst[8]~output_o\;

ww_inst(9) <= \inst[9]~output_o\;

ww_inst(10) <= \inst[10]~output_o\;

ww_inst(11) <= \inst[11]~output_o\;

ww_inst(12) <= \inst[12]~output_o\;

ww_inst(13) <= \inst[13]~output_o\;

ww_inst(14) <= \inst[14]~output_o\;

ww_inst(15) <= \inst[15]~output_o\;

ww_inst(16) <= \inst[16]~output_o\;

ww_inst(17) <= \inst[17]~output_o\;

ww_inst(18) <= \inst[18]~output_o\;

ww_inst(19) <= \inst[19]~output_o\;

ww_inst(20) <= \inst[20]~output_o\;

ww_inst(21) <= \inst[21]~output_o\;

ww_inst(22) <= \inst[22]~output_o\;

ww_inst(23) <= \inst[23]~output_o\;

ww_inst(24) <= \inst[24]~output_o\;

ww_inst(25) <= \inst[25]~output_o\;

ww_inst(26) <= \inst[26]~output_o\;

ww_inst(27) <= \inst[27]~output_o\;

ww_inst(28) <= \inst[28]~output_o\;

ww_inst(29) <= \inst[29]~output_o\;

ww_inst(30) <= \inst[30]~output_o\;

ww_inst(31) <= \inst[31]~output_o\;
END structure;


