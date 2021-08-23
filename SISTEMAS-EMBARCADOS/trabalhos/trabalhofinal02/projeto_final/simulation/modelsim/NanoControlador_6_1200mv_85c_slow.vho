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

-- DATE "08/22/2021 22:04:51"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	NanoControlador IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ula_op : IN std_logic_vector(3 DOWNTO 0);
	C : BUFFER std_logic_vector(7 DOWNTO 0);
	enable : IN std_logic;
	clk : IN std_logic;
	address : IN std_logic_vector(3 DOWNTO 0)
	);
END NanoControlador;

-- Design Ports Information
-- C[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF NanoControlador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ula_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ula_op[3]~input_o\ : std_logic;
SIGNAL \ula_op[2]~input_o\ : std_logic;
SIGNAL \ula_op[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ula_op[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \ram~29feeder_combout\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \ram~173_combout\ : std_logic;
SIGNAL \ram~174_combout\ : std_logic;
SIGNAL \ram~29_q\ : std_logic;
SIGNAL \ram~179_combout\ : std_logic;
SIGNAL \ram~180_combout\ : std_logic;
SIGNAL \ram~37_q\ : std_logic;
SIGNAL \ram~21feeder_combout\ : std_logic;
SIGNAL \ram~175_combout\ : std_logic;
SIGNAL \ram~176_combout\ : std_logic;
SIGNAL \ram~21_q\ : std_logic;
SIGNAL \ram~177_combout\ : std_logic;
SIGNAL \ram~178_combout\ : std_logic;
SIGNAL \ram~13_q\ : std_logic;
SIGNAL \ram~103_combout\ : std_logic;
SIGNAL \ram~104_combout\ : std_logic;
SIGNAL \ram~61feeder_combout\ : std_logic;
SIGNAL \ram~167_combout\ : std_logic;
SIGNAL \ram~168_combout\ : std_logic;
SIGNAL \ram~61_q\ : std_logic;
SIGNAL \ram~169_combout\ : std_logic;
SIGNAL \ram~170_combout\ : std_logic;
SIGNAL \ram~45_q\ : std_logic;
SIGNAL \ram~101_combout\ : std_logic;
SIGNAL \ram~171_combout\ : std_logic;
SIGNAL \ram~172_combout\ : std_logic;
SIGNAL \ram~69_q\ : std_logic;
SIGNAL \ram~53feeder_combout\ : std_logic;
SIGNAL \ram~165_combout\ : std_logic;
SIGNAL \ram~166_combout\ : std_logic;
SIGNAL \ram~53_q\ : std_logic;
SIGNAL \ram~102_combout\ : std_logic;
SIGNAL \ram~105_combout\ : std_logic;
SIGNAL \ram~93feeder_combout\ : std_logic;
SIGNAL \ram~181_combout\ : std_logic;
SIGNAL \ram~182_combout\ : std_logic;
SIGNAL \ram~93_q\ : std_logic;
SIGNAL \ram~183_combout\ : std_logic;
SIGNAL \ram~184_combout\ : std_logic;
SIGNAL \ram~77_q\ : std_logic;
SIGNAL \ram~106_combout\ : std_logic;
SIGNAL \ram~185_combout\ : std_logic;
SIGNAL \ram~186_combout\ : std_logic;
SIGNAL \ram~85_q\ : std_logic;
SIGNAL \ram~107_combout\ : std_logic;
SIGNAL \ram~108_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \ram~78_q\ : std_logic;
SIGNAL \ram~94feeder_combout\ : std_logic;
SIGNAL \ram~94_q\ : std_logic;
SIGNAL \ram~114_combout\ : std_logic;
SIGNAL \ram~86_q\ : std_logic;
SIGNAL \ram~115_combout\ : std_logic;
SIGNAL \ram~22feeder_combout\ : std_logic;
SIGNAL \ram~22_q\ : std_logic;
SIGNAL \ram~14_q\ : std_logic;
SIGNAL \ram~111_combout\ : std_logic;
SIGNAL \ram~38_q\ : std_logic;
SIGNAL \ram~30feeder_combout\ : std_logic;
SIGNAL \ram~30_q\ : std_logic;
SIGNAL \ram~112_combout\ : std_logic;
SIGNAL \ram~62feeder_combout\ : std_logic;
SIGNAL \ram~62_q\ : std_logic;
SIGNAL \ram~46_q\ : std_logic;
SIGNAL \ram~109_combout\ : std_logic;
SIGNAL \ram~70_q\ : std_logic;
SIGNAL \ram~54feeder_combout\ : std_logic;
SIGNAL \ram~54_q\ : std_logic;
SIGNAL \ram~110_combout\ : std_logic;
SIGNAL \ram~113_combout\ : std_logic;
SIGNAL \ram~116_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \ram~63feeder_combout\ : std_logic;
SIGNAL \ram~63_q\ : std_logic;
SIGNAL \ram~47_q\ : std_logic;
SIGNAL \ram~117_combout\ : std_logic;
SIGNAL \ram~55feeder_combout\ : std_logic;
SIGNAL \ram~55_q\ : std_logic;
SIGNAL \ram~71_q\ : std_logic;
SIGNAL \ram~118_combout\ : std_logic;
SIGNAL \ram~31feeder_combout\ : std_logic;
SIGNAL \ram~31_q\ : std_logic;
SIGNAL \ram~39_q\ : std_logic;
SIGNAL \ram~23feeder_combout\ : std_logic;
SIGNAL \ram~23_q\ : std_logic;
SIGNAL \ram~15_q\ : std_logic;
SIGNAL \ram~119_combout\ : std_logic;
SIGNAL \ram~120_combout\ : std_logic;
SIGNAL \ram~121_combout\ : std_logic;
SIGNAL \ram~87_q\ : std_logic;
SIGNAL \ram~95feeder_combout\ : std_logic;
SIGNAL \ram~95_q\ : std_logic;
SIGNAL \ram~79_q\ : std_logic;
SIGNAL \ram~122_combout\ : std_logic;
SIGNAL \ram~123_combout\ : std_logic;
SIGNAL \ram~124_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \ram~24feeder_combout\ : std_logic;
SIGNAL \ram~24_q\ : std_logic;
SIGNAL \ram~16_q\ : std_logic;
SIGNAL \ram~127_combout\ : std_logic;
SIGNAL \ram~40_q\ : std_logic;
SIGNAL \ram~32_q\ : std_logic;
SIGNAL \ram~128_combout\ : std_logic;
SIGNAL \ram~56feeder_combout\ : std_logic;
SIGNAL \ram~56_q\ : std_logic;
SIGNAL \ram~72_q\ : std_logic;
SIGNAL \ram~64feeder_combout\ : std_logic;
SIGNAL \ram~64_q\ : std_logic;
SIGNAL \ram~48_q\ : std_logic;
SIGNAL \ram~125_combout\ : std_logic;
SIGNAL \ram~126_combout\ : std_logic;
SIGNAL \ram~129_combout\ : std_logic;
SIGNAL \ram~96feeder_combout\ : std_logic;
SIGNAL \ram~96_q\ : std_logic;
SIGNAL \ram~80_q\ : std_logic;
SIGNAL \ram~130_combout\ : std_logic;
SIGNAL \ram~88_q\ : std_logic;
SIGNAL \ram~131_combout\ : std_logic;
SIGNAL \ram~132_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \ram~57feeder_combout\ : std_logic;
SIGNAL \ram~57_q\ : std_logic;
SIGNAL \ram~73_q\ : std_logic;
SIGNAL \ram~65feeder_combout\ : std_logic;
SIGNAL \ram~65_q\ : std_logic;
SIGNAL \ram~49_q\ : std_logic;
SIGNAL \ram~133_combout\ : std_logic;
SIGNAL \ram~134_combout\ : std_logic;
SIGNAL \ram~33feeder_combout\ : std_logic;
SIGNAL \ram~33_q\ : std_logic;
SIGNAL \ram~41_q\ : std_logic;
SIGNAL \ram~25feeder_combout\ : std_logic;
SIGNAL \ram~25_q\ : std_logic;
SIGNAL \ram~17_q\ : std_logic;
SIGNAL \ram~135_combout\ : std_logic;
SIGNAL \ram~136_combout\ : std_logic;
SIGNAL \ram~137_combout\ : std_logic;
SIGNAL \ram~89_q\ : std_logic;
SIGNAL \ram~81_q\ : std_logic;
SIGNAL \ram~97feeder_combout\ : std_logic;
SIGNAL \ram~97_q\ : std_logic;
SIGNAL \ram~138_combout\ : std_logic;
SIGNAL \ram~139_combout\ : std_logic;
SIGNAL \ram~140_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \ram~66feeder_combout\ : std_logic;
SIGNAL \ram~66_q\ : std_logic;
SIGNAL \ram~50_q\ : std_logic;
SIGNAL \ram~141_combout\ : std_logic;
SIGNAL \ram~58feeder_combout\ : std_logic;
SIGNAL \ram~58_q\ : std_logic;
SIGNAL \ram~74_q\ : std_logic;
SIGNAL \ram~142_combout\ : std_logic;
SIGNAL \ram~34feeder_combout\ : std_logic;
SIGNAL \ram~34_q\ : std_logic;
SIGNAL \ram~42_q\ : std_logic;
SIGNAL \ram~18_q\ : std_logic;
SIGNAL \ram~26feeder_combout\ : std_logic;
SIGNAL \ram~26_q\ : std_logic;
SIGNAL \ram~143_combout\ : std_logic;
SIGNAL \ram~144_combout\ : std_logic;
SIGNAL \ram~145_combout\ : std_logic;
SIGNAL \ram~90_q\ : std_logic;
SIGNAL \ram~82_q\ : std_logic;
SIGNAL \ram~98feeder_combout\ : std_logic;
SIGNAL \ram~98_q\ : std_logic;
SIGNAL \ram~146_combout\ : std_logic;
SIGNAL \ram~147_combout\ : std_logic;
SIGNAL \ram~148_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \ram~99feeder_combout\ : std_logic;
SIGNAL \ram~99_q\ : std_logic;
SIGNAL \ram~83_q\ : std_logic;
SIGNAL \ram~154_combout\ : std_logic;
SIGNAL \ram~91_q\ : std_logic;
SIGNAL \ram~155_combout\ : std_logic;
SIGNAL \ram~59feeder_combout\ : std_logic;
SIGNAL \ram~59_q\ : std_logic;
SIGNAL \ram~75_q\ : std_logic;
SIGNAL \ram~67feeder_combout\ : std_logic;
SIGNAL \ram~67_q\ : std_logic;
SIGNAL \ram~51_q\ : std_logic;
SIGNAL \ram~149_combout\ : std_logic;
SIGNAL \ram~150_combout\ : std_logic;
SIGNAL \ram~27feeder_combout\ : std_logic;
SIGNAL \ram~27_q\ : std_logic;
SIGNAL \ram~19_q\ : std_logic;
SIGNAL \ram~151_combout\ : std_logic;
SIGNAL \ram~43_q\ : std_logic;
SIGNAL \ram~35feeder_combout\ : std_logic;
SIGNAL \ram~35_q\ : std_logic;
SIGNAL \ram~152_combout\ : std_logic;
SIGNAL \ram~153_combout\ : std_logic;
SIGNAL \ram~156_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \ram~92_q\ : std_logic;
SIGNAL \ram~100feeder_combout\ : std_logic;
SIGNAL \ram~100_q\ : std_logic;
SIGNAL \ram~84_q\ : std_logic;
SIGNAL \ram~162_combout\ : std_logic;
SIGNAL \ram~163_combout\ : std_logic;
SIGNAL \ram~68feeder_combout\ : std_logic;
SIGNAL \ram~68_q\ : std_logic;
SIGNAL \ram~52_q\ : std_logic;
SIGNAL \ram~157_combout\ : std_logic;
SIGNAL \ram~60feeder_combout\ : std_logic;
SIGNAL \ram~60_q\ : std_logic;
SIGNAL \ram~76_q\ : std_logic;
SIGNAL \ram~158_combout\ : std_logic;
SIGNAL \ram~28_q\ : std_logic;
SIGNAL \ram~20_q\ : std_logic;
SIGNAL \ram~159_combout\ : std_logic;
SIGNAL \ram~44_q\ : std_logic;
SIGNAL \ram~36feeder_combout\ : std_logic;
SIGNAL \ram~36_q\ : std_logic;
SIGNAL \ram~160_combout\ : std_logic;
SIGNAL \ram~161_combout\ : std_logic;
SIGNAL \ram~164_combout\ : std_logic;
SIGNAL B_int : std_logic_vector(7 DOWNTO 0);
SIGNAL A_int : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_ula_op <= ula_op;
C <= ww_C;
ww_enable <= enable;
ww_clk <= clk;
ww_address <= address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X33_Y15_N9
\C[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~108_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\C[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~116_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\C[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~124_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\C[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~132_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\C[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~140_combout\,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\C[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~148_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\C[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~156_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\C[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram~164_combout\,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

-- Location: IOIBUF_X33_Y24_N8
\address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y28_N8
\ula_op[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(3),
	o => \ula_op[3]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\ula_op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(2),
	o => \ula_op[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\ula_op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(0),
	o => \ula_op[0]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X25_Y26_N1
\B_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[0]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_int(0));

-- Location: LCCOMB_X25_Y26_N30
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \ula_op[0]~input_o\ $ (B_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[0]~input_o\,
	datad => B_int(0),
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\ula_op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(1),
	o => \ula_op[1]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: FF_X25_Y26_N27
\A_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[0]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_int(0));

-- Location: LCCOMB_X25_Y26_N28
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \ula_op[1]~input_o\ $ (A_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datad => A_int(0),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X25_Y26_N4
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY(\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[0]~input_o\,
	datad => VCC,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X25_Y26_N6
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~0_combout\ & ((\Add0~1_combout\ & (\Add0~3_cout\ & VCC)) # (!\Add0~1_combout\ & (!\Add0~3_cout\)))) # (!\Add0~0_combout\ & ((\Add0~1_combout\ & (!\Add0~3_cout\)) # (!\Add0~1_combout\ & ((\Add0~3_cout\) # (GND)))))
-- \Add0~5\ = CARRY((\Add0~0_combout\ & (!\Add0~1_combout\ & !\Add0~3_cout\)) # (!\Add0~0_combout\ & ((!\Add0~3_cout\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add0~3_cout\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X26_Y26_N24
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (B_int(0) & ((A_int(0) & ((\ula_op[1]~input_o\))) # (!A_int(0) & (!\ula_op[0]~input_o\)))) # (!B_int(0) & (\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\) # (!A_int(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => B_int(0),
	datad => A_int(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X26_Y26_N14
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (!\ula_op[3]~input_o\ & ((\ula_op[2]~input_o\ & ((\Mux7~0_combout\))) # (!\ula_op[2]~input_o\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[3]~input_o\,
	datac => \Add0~4_combout\,
	datad => \Mux7~0_combout\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X27_Y26_N18
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\ula_op[2]~input_o\ & \ula_op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[2]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X24_Y25_N26
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\ula_op[2]~input_o\) # (\ula_op[0]~input_o\ $ (!\ula_op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[0]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X26_Y26_N0
\Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (B_int(0) & (\Mux7~1_combout\ $ (((A_int(0)) # (!\Mux7~2_combout\))))) # (!B_int(0) & ((A_int(0) & ((\Mux7~2_combout\))) # (!A_int(0) & (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_int(0),
	datab => \Mux7~1_combout\,
	datac => \Mux7~2_combout\,
	datad => A_int(0),
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X26_Y26_N2
\Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6_combout\) # ((\ula_op[3]~input_o\ & \Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \Add0~6_combout\,
	datad => \Mux7~3_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X26_Y25_N0
\ram~29feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~29feeder_combout\ = \Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	combout => \ram~29feeder_combout\);

-- Location: IOIBUF_X24_Y31_N8
\address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: LCCOMB_X24_Y24_N0
\ram~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~173_combout\ = (!\address[0]~input_o\ & (!\address[2]~input_o\ & (!\address[3]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \ram~173_combout\);

-- Location: LCCOMB_X24_Y24_N26
\ram~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~174_combout\ = (\ram~173_combout\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~173_combout\,
	datac => \enable~input_o\,
	combout => \ram~174_combout\);

-- Location: FF_X26_Y25_N1
\ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~29feeder_combout\,
	ena => \ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~29_q\);

-- Location: LCCOMB_X24_Y24_N12
\ram~179\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~179_combout\ = (\address[0]~input_o\ & (!\address[2]~input_o\ & (!\address[3]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \ram~179_combout\);

-- Location: LCCOMB_X24_Y24_N10
\ram~180\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~180_combout\ = (\ram~179_combout\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~179_combout\,
	datac => \enable~input_o\,
	combout => \ram~180_combout\);

-- Location: FF_X26_Y25_N19
\ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~7_combout\,
	sload => VCC,
	ena => \ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~37_q\);

-- Location: LCCOMB_X25_Y25_N16
\ram~21feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~21feeder_combout\ = \Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~7_combout\,
	combout => \ram~21feeder_combout\);

-- Location: LCCOMB_X26_Y25_N28
\ram~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~175_combout\ = (\address[0]~input_o\ & (!\address[3]~input_o\ & (!\address[1]~input_o\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[2]~input_o\,
	combout => \ram~175_combout\);

-- Location: LCCOMB_X25_Y25_N8
\ram~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~176_combout\ = (\enable~input_o\ & \ram~175_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datad => \ram~175_combout\,
	combout => \ram~176_combout\);

-- Location: FF_X25_Y25_N17
\ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~21feeder_combout\,
	ena => \ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~21_q\);

-- Location: LCCOMB_X24_Y25_N20
\ram~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~177_combout\ = (!\address[0]~input_o\ & (!\address[2]~input_o\ & (!\address[1]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \ram~177_combout\);

-- Location: LCCOMB_X24_Y25_N22
\ram~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~178_combout\ = (\enable~input_o\ & \ram~177_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \ram~177_combout\,
	combout => \ram~178_combout\);

-- Location: FF_X25_Y25_N15
\ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~7_combout\,
	sload => VCC,
	ena => \ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~13_q\);

-- Location: LCCOMB_X25_Y25_N14
\ram~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~103_combout\ = (\address[0]~input_o\ & ((\ram~21_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\ram~13_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~21_q\,
	datac => \ram~13_q\,
	datad => \address[1]~input_o\,
	combout => \ram~103_combout\);

-- Location: LCCOMB_X26_Y25_N18
\ram~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~104_combout\ = (\address[1]~input_o\ & ((\ram~103_combout\ & ((\ram~37_q\))) # (!\ram~103_combout\ & (\ram~29_q\)))) # (!\address[1]~input_o\ & (((\ram~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~29_q\,
	datac => \ram~37_q\,
	datad => \ram~103_combout\,
	combout => \ram~104_combout\);

-- Location: LCCOMB_X23_Y26_N8
\ram~61feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~61feeder_combout\ = \Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	combout => \ram~61feeder_combout\);

-- Location: LCCOMB_X24_Y25_N8
\ram~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~167_combout\ = (!\address[0]~input_o\ & (\address[2]~input_o\ & (\address[1]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \ram~167_combout\);

-- Location: LCCOMB_X24_Y25_N30
\ram~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~168_combout\ = (\enable~input_o\ & \ram~167_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \ram~167_combout\,
	combout => \ram~168_combout\);

-- Location: FF_X23_Y26_N9
\ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~61feeder_combout\,
	ena => \ram~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~61_q\);

-- Location: LCCOMB_X24_Y25_N0
\ram~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~169_combout\ = (!\address[0]~input_o\ & (\address[2]~input_o\ & (!\address[1]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \ram~169_combout\);

-- Location: LCCOMB_X24_Y25_N18
\ram~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~170_combout\ = (\enable~input_o\ & \ram~169_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \ram~169_combout\,
	combout => \ram~170_combout\);

-- Location: FF_X23_Y26_N31
\ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~7_combout\,
	sload => VCC,
	ena => \ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~45_q\);

-- Location: LCCOMB_X23_Y26_N30
\ram~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~101_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~61_q\)) # (!\address[1]~input_o\ & ((\ram~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~61_q\,
	datac => \ram~45_q\,
	datad => \address[1]~input_o\,
	combout => \ram~101_combout\);

-- Location: LCCOMB_X24_Y24_N24
\ram~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~171_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ & (!\address[3]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \ram~171_combout\);

-- Location: LCCOMB_X24_Y24_N14
\ram~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~172_combout\ = (\ram~171_combout\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~171_combout\,
	datac => \enable~input_o\,
	combout => \ram~172_combout\);

-- Location: FF_X23_Y25_N15
\ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~7_combout\,
	sload => VCC,
	ena => \ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~69_q\);

-- Location: LCCOMB_X23_Y25_N28
\ram~53feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~53feeder_combout\ = \Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	combout => \ram~53feeder_combout\);

-- Location: LCCOMB_X24_Y24_N20
\ram~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~165_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ & (!\address[3]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \ram~165_combout\);

-- Location: LCCOMB_X24_Y24_N18
\ram~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~166_combout\ = (\ram~165_combout\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~165_combout\,
	datac => \enable~input_o\,
	combout => \ram~166_combout\);

-- Location: FF_X23_Y25_N29
\ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~53feeder_combout\,
	ena => \ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~53_q\);

-- Location: LCCOMB_X23_Y25_N14
\ram~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~102_combout\ = (\address[0]~input_o\ & ((\ram~101_combout\ & (\ram~69_q\)) # (!\ram~101_combout\ & ((\ram~53_q\))))) # (!\address[0]~input_o\ & (\ram~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~101_combout\,
	datac => \ram~69_q\,
	datad => \ram~53_q\,
	combout => \ram~102_combout\);

-- Location: LCCOMB_X26_Y25_N16
\ram~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~105_combout\ = (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((\ram~102_combout\))) # (!\address[2]~input_o\ & (\ram~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \ram~104_combout\,
	datac => \ram~102_combout\,
	datad => \address[2]~input_o\,
	combout => \ram~105_combout\);

-- Location: LCCOMB_X25_Y27_N16
\ram~93feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~93feeder_combout\ = \Add0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~7_combout\,
	combout => \ram~93feeder_combout\);

-- Location: LCCOMB_X24_Y24_N16
\ram~181\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~181_combout\ = (!\address[0]~input_o\ & (!\address[2]~input_o\ & (\address[3]~input_o\ & \address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \ram~181_combout\);

-- Location: LCCOMB_X24_Y24_N2
\ram~182\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~182_combout\ = (\ram~181_combout\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~181_combout\,
	datac => \enable~input_o\,
	combout => \ram~182_combout\);

-- Location: FF_X25_Y27_N17
\ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~93feeder_combout\,
	ena => \ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~93_q\);

-- Location: LCCOMB_X24_Y24_N4
\ram~183\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~183_combout\ = (!\address[0]~input_o\ & (!\address[2]~input_o\ & (\address[3]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \ram~183_combout\);

-- Location: LCCOMB_X24_Y24_N30
\ram~184\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~184_combout\ = (\enable~input_o\ & \ram~183_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \ram~183_combout\,
	combout => \ram~184_combout\);

-- Location: FF_X25_Y27_N27
\ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~7_combout\,
	sload => VCC,
	ena => \ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~77_q\);

-- Location: LCCOMB_X25_Y27_N26
\ram~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~106_combout\ = (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~93_q\)) # (!\address[1]~input_o\ & ((\ram~77_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~93_q\,
	datab => \address[0]~input_o\,
	datac => \ram~77_q\,
	datad => \address[1]~input_o\,
	combout => \ram~106_combout\);

-- Location: LCCOMB_X24_Y24_N28
\ram~185\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~185_combout\ = (\address[0]~input_o\ & (!\address[2]~input_o\ & (\address[3]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[1]~input_o\,
	combout => \ram~185_combout\);

-- Location: LCCOMB_X24_Y24_N6
\ram~186\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~186_combout\ = (\ram~185_combout\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram~185_combout\,
	datac => \enable~input_o\,
	combout => \ram~186_combout\);

-- Location: FF_X26_Y26_N5
\ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~7_combout\,
	sload => VCC,
	ena => \ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~85_q\);

-- Location: LCCOMB_X26_Y25_N22
\ram~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~107_combout\ = (\ram~106_combout\) # ((!\address[1]~input_o\ & (\address[0]~input_o\ & \ram~85_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~106_combout\,
	datac => \address[0]~input_o\,
	datad => \ram~85_q\,
	combout => \ram~107_combout\);

-- Location: LCCOMB_X26_Y25_N12
\ram~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~108_combout\ = (\ram~105_combout\) # ((\address[3]~input_o\ & (\ram~107_combout\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \ram~105_combout\,
	datac => \ram~107_combout\,
	datad => \address[2]~input_o\,
	combout => \ram~108_combout\);

-- Location: IOIBUF_X33_Y22_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X25_Y26_N25
\A_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[1]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_int(1));

-- Location: IOIBUF_X24_Y31_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: FF_X25_Y26_N3
\B_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[1]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_int(1));

-- Location: LCCOMB_X26_Y26_N28
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (A_int(1) & ((B_int(1) & ((!\Mux7~1_combout\))) # (!B_int(1) & (\Mux7~2_combout\)))) # (!A_int(1) & (\Mux7~1_combout\ $ (((!\Mux7~2_combout\ & B_int(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => A_int(1),
	datac => \Mux7~1_combout\,
	datad => B_int(1),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (B_int(1) & ((A_int(1) & ((\ula_op[1]~input_o\))) # (!A_int(1) & (!\ula_op[0]~input_o\)))) # (!B_int(1) & (\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\) # (!A_int(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_int(1),
	datab => \ula_op[0]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => A_int(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X25_Y26_N22
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \ula_op[1]~input_o\ $ (A_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datad => A_int(1),
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X25_Y26_N24
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \ula_op[0]~input_o\ $ (B_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[0]~input_o\,
	datad => B_int(1),
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X25_Y26_N8
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = ((\Add0~9_combout\ $ (\Add0~8_combout\ $ (!\Add0~5\)))) # (GND)
-- \Add0~11\ = CARRY((\Add0~9_combout\ & ((\Add0~8_combout\) # (!\Add0~5\))) # (!\Add0~9_combout\ & (\Add0~8_combout\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X26_Y26_N10
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (!\ula_op[3]~input_o\ & ((\ula_op[2]~input_o\ & (\Mux6~0_combout\)) # (!\ula_op[2]~input_o\ & ((\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[3]~input_o\,
	datac => \Mux6~0_combout\,
	datad => \Add0~10_combout\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X26_Y26_N22
\Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12_combout\) # ((\Mux6~1_combout\ & \ula_op[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \ula_op[3]~input_o\,
	datad => \Add0~12_combout\,
	combout => \Add0~13_combout\);

-- Location: FF_X25_Y26_N7
\ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~13_combout\,
	sload => VCC,
	ena => \ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~78_q\);

-- Location: LCCOMB_X27_Y26_N0
\ram~94feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~94feeder_combout\ = \Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~13_combout\,
	combout => \ram~94feeder_combout\);

-- Location: FF_X27_Y26_N1
\ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~94feeder_combout\,
	ena => \ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~94_q\);

-- Location: LCCOMB_X24_Y26_N8
\ram~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~114_combout\ = (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\ram~94_q\))) # (!\address[1]~input_o\ & (\ram~78_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~78_q\,
	datab => \ram~94_q\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \ram~114_combout\);

-- Location: FF_X26_Y26_N27
\ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~13_combout\,
	sload => VCC,
	ena => \ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~86_q\);

-- Location: LCCOMB_X26_Y25_N8
\ram~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~115_combout\ = (\ram~114_combout\) # ((\address[0]~input_o\ & (!\address[1]~input_o\ & \ram~86_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~114_combout\,
	datac => \address[1]~input_o\,
	datad => \ram~86_q\,
	combout => \ram~115_combout\);

-- Location: LCCOMB_X25_Y25_N4
\ram~22feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~22feeder_combout\ = \Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~13_combout\,
	combout => \ram~22feeder_combout\);

-- Location: FF_X25_Y25_N5
\ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~22feeder_combout\,
	ena => \ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~22_q\);

-- Location: FF_X25_Y25_N31
\ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~13_combout\,
	sload => VCC,
	ena => \ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~14_q\);

-- Location: LCCOMB_X25_Y25_N30
\ram~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~111_combout\ = (\address[0]~input_o\ & ((\ram~22_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\ram~14_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~22_q\,
	datac => \ram~14_q\,
	datad => \address[1]~input_o\,
	combout => \ram~111_combout\);

-- Location: FF_X26_Y25_N25
\ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~13_combout\,
	sload => VCC,
	ena => \ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~38_q\);

-- Location: LCCOMB_X26_Y25_N2
\ram~30feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~30feeder_combout\ = \Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~13_combout\,
	combout => \ram~30feeder_combout\);

-- Location: FF_X26_Y25_N3
\ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~30feeder_combout\,
	ena => \ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~30_q\);

-- Location: LCCOMB_X26_Y25_N24
\ram~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~112_combout\ = (\address[1]~input_o\ & ((\ram~111_combout\ & (\ram~38_q\)) # (!\ram~111_combout\ & ((\ram~30_q\))))) # (!\address[1]~input_o\ & (\ram~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~111_combout\,
	datac => \ram~38_q\,
	datad => \ram~30_q\,
	combout => \ram~112_combout\);

-- Location: LCCOMB_X23_Y26_N28
\ram~62feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~62feeder_combout\ = \Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~13_combout\,
	combout => \ram~62feeder_combout\);

-- Location: FF_X23_Y26_N29
\ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~62feeder_combout\,
	ena => \ram~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~62_q\);

-- Location: FF_X23_Y26_N3
\ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~13_combout\,
	sload => VCC,
	ena => \ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~46_q\);

-- Location: LCCOMB_X23_Y26_N2
\ram~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~109_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~62_q\)) # (!\address[1]~input_o\ & ((\ram~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~62_q\,
	datac => \ram~46_q\,
	datad => \address[1]~input_o\,
	combout => \ram~109_combout\);

-- Location: FF_X26_Y27_N23
\ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~13_combout\,
	sload => VCC,
	ena => \ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~70_q\);

-- Location: LCCOMB_X26_Y27_N0
\ram~54feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~54feeder_combout\ = \Add0~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~13_combout\,
	combout => \ram~54feeder_combout\);

-- Location: FF_X26_Y27_N1
\ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~54feeder_combout\,
	ena => \ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~54_q\);

-- Location: LCCOMB_X26_Y27_N22
\ram~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~110_combout\ = (\ram~109_combout\ & (((\ram~70_q\)) # (!\address[0]~input_o\))) # (!\ram~109_combout\ & (\address[0]~input_o\ & ((\ram~54_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~109_combout\,
	datab => \address[0]~input_o\,
	datac => \ram~70_q\,
	datad => \ram~54_q\,
	combout => \ram~110_combout\);

-- Location: LCCOMB_X26_Y25_N14
\ram~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~113_combout\ = (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((\ram~110_combout\))) # (!\address[2]~input_o\ & (\ram~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \ram~112_combout\,
	datac => \ram~110_combout\,
	datad => \address[2]~input_o\,
	combout => \ram~113_combout\);

-- Location: LCCOMB_X26_Y25_N30
\ram~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~116_combout\ = (\ram~113_combout\) # ((!\address[2]~input_o\ & (\ram~115_combout\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \ram~115_combout\,
	datac => \ram~113_combout\,
	datad => \address[3]~input_o\,
	combout => \ram~116_combout\);

-- Location: IOIBUF_X20_Y31_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: FF_X25_Y26_N23
\B_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[2]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_int(2));

-- Location: IOIBUF_X14_Y31_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X25_Y26_N29
\A_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[2]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_int(2));

-- Location: LCCOMB_X24_Y25_N16
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (B_int(2) & (\Mux7~1_combout\ $ (((A_int(2)) # (!\Mux7~2_combout\))))) # (!B_int(2) & ((A_int(2) & (\Mux7~2_combout\)) # (!A_int(2) & ((\Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux7~1_combout\,
	datac => B_int(2),
	datad => A_int(2),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X24_Y25_N12
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (B_int(2) & ((A_int(2) & (\ula_op[1]~input_o\)) # (!A_int(2) & ((!\ula_op[0]~input_o\))))) # (!B_int(2) & (\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\) # (!A_int(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datab => \ula_op[0]~input_o\,
	datac => B_int(2),
	datad => A_int(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y26_N26
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \ula_op[0]~input_o\ $ (B_int(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[0]~input_o\,
	datad => B_int(2),
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X25_Y26_N0
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \ula_op[1]~input_o\ $ (A_int(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datad => A_int(2),
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X25_Y26_N10
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~14_combout\ & ((\Add0~15_combout\ & (\Add0~11\ & VCC)) # (!\Add0~15_combout\ & (!\Add0~11\)))) # (!\Add0~14_combout\ & ((\Add0~15_combout\ & (!\Add0~11\)) # (!\Add0~15_combout\ & ((\Add0~11\) # (GND)))))
-- \Add0~17\ = CARRY((\Add0~14_combout\ & (!\Add0~15_combout\ & !\Add0~11\)) # (!\Add0~14_combout\ & ((!\Add0~11\) # (!\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X24_Y25_N2
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (!\ula_op[3]~input_o\ & ((\ula_op[2]~input_o\ & (\Mux5~0_combout\)) # (!\ula_op[2]~input_o\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \ula_op[3]~input_o\,
	datac => \Add0~16_combout\,
	datad => \ula_op[2]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X24_Y25_N10
\Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18_combout\) # ((\ula_op[3]~input_o\ & \Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[3]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \Add0~18_combout\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X22_Y25_N0
\ram~63feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~63feeder_combout\ = \Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~19_combout\,
	combout => \ram~63feeder_combout\);

-- Location: FF_X22_Y25_N1
\ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~63feeder_combout\,
	ena => \ram~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~63_q\);

-- Location: FF_X22_Y25_N15
\ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~19_combout\,
	sload => VCC,
	ena => \ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~47_q\);

-- Location: LCCOMB_X22_Y25_N14
\ram~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~117_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~63_q\)) # (!\address[1]~input_o\ & ((\ram~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~63_q\,
	datac => \ram~47_q\,
	datad => \address[1]~input_o\,
	combout => \ram~117_combout\);

-- Location: LCCOMB_X23_Y25_N0
\ram~55feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~55feeder_combout\ = \Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~19_combout\,
	combout => \ram~55feeder_combout\);

-- Location: FF_X23_Y25_N1
\ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~55feeder_combout\,
	ena => \ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~55_q\);

-- Location: FF_X23_Y25_N31
\ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~19_combout\,
	sload => VCC,
	ena => \ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~71_q\);

-- Location: LCCOMB_X23_Y25_N30
\ram~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~118_combout\ = (\ram~117_combout\ & (((\ram~71_q\) # (!\address[0]~input_o\)))) # (!\ram~117_combout\ & (\ram~55_q\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~117_combout\,
	datab => \ram~55_q\,
	datac => \ram~71_q\,
	datad => \address[0]~input_o\,
	combout => \ram~118_combout\);

-- Location: LCCOMB_X26_Y25_N4
\ram~31feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~31feeder_combout\ = \Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~19_combout\,
	combout => \ram~31feeder_combout\);

-- Location: FF_X26_Y25_N5
\ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~31feeder_combout\,
	ena => \ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~31_q\);

-- Location: FF_X26_Y25_N27
\ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~19_combout\,
	sload => VCC,
	ena => \ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~39_q\);

-- Location: LCCOMB_X25_Y25_N28
\ram~23feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~23feeder_combout\ = \Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~19_combout\,
	combout => \ram~23feeder_combout\);

-- Location: FF_X25_Y25_N29
\ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~23feeder_combout\,
	ena => \ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~23_q\);

-- Location: FF_X25_Y25_N3
\ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~19_combout\,
	sload => VCC,
	ena => \ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~15_q\);

-- Location: LCCOMB_X25_Y25_N2
\ram~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~119_combout\ = (\address[0]~input_o\ & ((\ram~23_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\ram~15_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~23_q\,
	datac => \ram~15_q\,
	datad => \address[1]~input_o\,
	combout => \ram~119_combout\);

-- Location: LCCOMB_X26_Y25_N26
\ram~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~120_combout\ = (\address[1]~input_o\ & ((\ram~119_combout\ & ((\ram~39_q\))) # (!\ram~119_combout\ & (\ram~31_q\)))) # (!\address[1]~input_o\ & (((\ram~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~31_q\,
	datac => \ram~39_q\,
	datad => \ram~119_combout\,
	combout => \ram~120_combout\);

-- Location: LCCOMB_X26_Y25_N20
\ram~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~121_combout\ = (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\ram~118_combout\)) # (!\address[2]~input_o\ & ((\ram~120_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \ram~118_combout\,
	datac => \ram~120_combout\,
	datad => \address[3]~input_o\,
	combout => \ram~121_combout\);

-- Location: FF_X24_Y25_N11
\ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~19_combout\,
	ena => \ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~87_q\);

-- Location: LCCOMB_X27_Y25_N24
\ram~95feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~95feeder_combout\ = \Add0~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~19_combout\,
	combout => \ram~95feeder_combout\);

-- Location: FF_X27_Y25_N25
\ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~95feeder_combout\,
	ena => \ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~95_q\);

-- Location: FF_X24_Y25_N29
\ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~19_combout\,
	sload => VCC,
	ena => \ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~79_q\);

-- Location: LCCOMB_X24_Y25_N28
\ram~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~122_combout\ = (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~95_q\)) # (!\address[1]~input_o\ & ((\ram~79_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~95_q\,
	datac => \ram~79_q\,
	datad => \address[0]~input_o\,
	combout => \ram~122_combout\);

-- Location: LCCOMB_X24_Y25_N24
\ram~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~123_combout\ = (\ram~122_combout\) # ((\ram~87_q\ & (!\address[1]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~87_q\,
	datab => \ram~122_combout\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \ram~123_combout\);

-- Location: LCCOMB_X26_Y25_N10
\ram~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~124_combout\ = (\ram~121_combout\) # ((\address[3]~input_o\ & (\ram~123_combout\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \ram~121_combout\,
	datac => \ram~123_combout\,
	datad => \address[2]~input_o\,
	combout => \ram~124_combout\);

-- Location: IOIBUF_X29_Y31_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: FF_X26_Y26_N21
\A_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[3]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_int(3));

-- Location: IOIBUF_X29_Y31_N1
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: FF_X25_Y26_N31
\B_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[3]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_int(3));

-- Location: LCCOMB_X24_Y25_N14
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (A_int(3) & (\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\ & !B_int(3)))))) # (!A_int(3) & ((B_int(3) & ((!\ula_op[0]~input_o\))) # (!B_int(3) & (!\ula_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datab => A_int(3),
	datac => \ula_op[0]~input_o\,
	datad => B_int(3),
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X25_Y26_N2
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \ula_op[0]~input_o\ $ (B_int(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[0]~input_o\,
	datad => B_int(3),
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X26_Y26_N18
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = \ula_op[1]~input_o\ $ (A_int(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[1]~input_o\,
	datad => A_int(3),
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X25_Y26_N12
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = ((\Add0~20_combout\ $ (\Add0~21_combout\ $ (!\Add0~17\)))) # (GND)
-- \Add0~23\ = CARRY((\Add0~20_combout\ & ((\Add0~21_combout\) # (!\Add0~17\))) # (!\Add0~20_combout\ & (\Add0~21_combout\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~21_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X24_Y26_N10
\Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (A_int(3) & ((B_int(3) & (!\Mux7~1_combout\)) # (!B_int(3) & ((\Mux7~2_combout\))))) # (!A_int(3) & (\Mux7~1_combout\ $ (((B_int(3) & !\Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_int(3),
	datab => \Mux7~1_combout\,
	datac => B_int(3),
	datad => \Mux7~2_combout\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X24_Y26_N2
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\ula_op[3]~input_o\ & (\Add0~25_combout\)) # (!\ula_op[3]~input_o\ & ((!\ula_op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \ula_op[2]~input_o\,
	datad => \ula_op[3]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X24_Y26_N28
\Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\ula_op[3]~input_o\ & (((\Add0~26_combout\)))) # (!\ula_op[3]~input_o\ & ((\Add0~26_combout\ & ((\Add0~22_combout\))) # (!\Add0~26_combout\ & (\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \ula_op[3]~input_o\,
	datac => \Add0~22_combout\,
	datad => \Add0~26_combout\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X25_Y25_N0
\ram~24feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~24feeder_combout\ = \Add0~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~27_combout\,
	combout => \ram~24feeder_combout\);

-- Location: FF_X25_Y25_N1
\ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~24feeder_combout\,
	ena => \ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~24_q\);

-- Location: FF_X25_Y25_N11
\ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~27_combout\,
	sload => VCC,
	ena => \ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~16_q\);

-- Location: LCCOMB_X25_Y25_N10
\ram~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~127_combout\ = (\address[0]~input_o\ & ((\ram~24_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\ram~16_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~24_q\,
	datac => \ram~16_q\,
	datad => \address[1]~input_o\,
	combout => \ram~127_combout\);

-- Location: FF_X24_Y27_N13
\ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~27_combout\,
	sload => VCC,
	ena => \ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~40_q\);

-- Location: FF_X24_Y26_N3
\ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~27_combout\,
	sload => VCC,
	ena => \ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~32_q\);

-- Location: LCCOMB_X24_Y27_N12
\ram~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~128_combout\ = (\address[1]~input_o\ & ((\ram~127_combout\ & (\ram~40_q\)) # (!\ram~127_combout\ & ((\ram~32_q\))))) # (!\address[1]~input_o\ & (\ram~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~127_combout\,
	datac => \ram~40_q\,
	datad => \ram~32_q\,
	combout => \ram~128_combout\);

-- Location: LCCOMB_X23_Y25_N8
\ram~56feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~56feeder_combout\ = \Add0~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~27_combout\,
	combout => \ram~56feeder_combout\);

-- Location: FF_X23_Y25_N9
\ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~56feeder_combout\,
	ena => \ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~56_q\);

-- Location: FF_X23_Y25_N27
\ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~27_combout\,
	sload => VCC,
	ena => \ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~72_q\);

-- Location: LCCOMB_X23_Y26_N0
\ram~64feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~64feeder_combout\ = \Add0~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~27_combout\,
	combout => \ram~64feeder_combout\);

-- Location: FF_X23_Y26_N1
\ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~64feeder_combout\,
	ena => \ram~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~64_q\);

-- Location: FF_X23_Y26_N15
\ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~27_combout\,
	sload => VCC,
	ena => \ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~48_q\);

-- Location: LCCOMB_X23_Y26_N14
\ram~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~125_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~64_q\)) # (!\address[1]~input_o\ & ((\ram~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~64_q\,
	datac => \ram~48_q\,
	datad => \address[1]~input_o\,
	combout => \ram~125_combout\);

-- Location: LCCOMB_X23_Y25_N26
\ram~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~126_combout\ = (\address[0]~input_o\ & ((\ram~125_combout\ & ((\ram~72_q\))) # (!\ram~125_combout\ & (\ram~56_q\)))) # (!\address[0]~input_o\ & (((\ram~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~56_q\,
	datac => \ram~72_q\,
	datad => \ram~125_combout\,
	combout => \ram~126_combout\);

-- Location: LCCOMB_X24_Y27_N10
\ram~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~129_combout\ = (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((\ram~126_combout\))) # (!\address[2]~input_o\ & (\ram~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~128_combout\,
	datab => \address[2]~input_o\,
	datac => \ram~126_combout\,
	datad => \address[3]~input_o\,
	combout => \ram~129_combout\);

-- Location: LCCOMB_X25_Y27_N12
\ram~96feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~96feeder_combout\ = \Add0~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~27_combout\,
	combout => \ram~96feeder_combout\);

-- Location: FF_X25_Y27_N13
\ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~96feeder_combout\,
	ena => \ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~96_q\);

-- Location: FF_X25_Y27_N23
\ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~27_combout\,
	sload => VCC,
	ena => \ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~80_q\);

-- Location: LCCOMB_X25_Y27_N22
\ram~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~130_combout\ = (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~96_q\)) # (!\address[1]~input_o\ & ((\ram~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~96_q\,
	datab => \address[0]~input_o\,
	datac => \ram~80_q\,
	datad => \address[1]~input_o\,
	combout => \ram~130_combout\);

-- Location: FF_X24_Y26_N29
\ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~27_combout\,
	ena => \ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~88_q\);

-- Location: LCCOMB_X25_Y27_N20
\ram~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~131_combout\ = (\ram~130_combout\) # ((\address[0]~input_o\ & (\ram~88_q\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~130_combout\,
	datab => \address[0]~input_o\,
	datac => \ram~88_q\,
	datad => \address[1]~input_o\,
	combout => \ram~131_combout\);

-- Location: LCCOMB_X24_Y27_N24
\ram~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~132_combout\ = (\ram~129_combout\) # ((!\address[2]~input_o\ & (\ram~131_combout\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~129_combout\,
	datab => \address[2]~input_o\,
	datac => \ram~131_combout\,
	datad => \address[3]~input_o\,
	combout => \ram~132_combout\);

-- Location: IOIBUF_X33_Y16_N8
\A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: FF_X26_Y26_N3
\A_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[4]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_int(4));

-- Location: IOIBUF_X31_Y31_N8
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: FF_X26_Y26_N23
\B_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[4]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_int(4));

-- Location: LCCOMB_X27_Y26_N28
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (A_int(4) & (\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\ & !B_int(4)))))) # (!A_int(4) & ((B_int(4) & (!\ula_op[0]~input_o\)) # (!B_int(4) & ((!\ula_op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_int(4),
	datab => \ula_op[0]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => B_int(4),
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X26_Y26_N4
\Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \ula_op[1]~input_o\ $ (A_int(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[1]~input_o\,
	datad => A_int(4),
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X26_Y26_N26
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = B_int(4) $ (\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_int(4),
	datad => \ula_op[0]~input_o\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X25_Y26_N14
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\Add0~29_combout\ & ((\Add0~28_combout\ & (\Add0~23\ & VCC)) # (!\Add0~28_combout\ & (!\Add0~23\)))) # (!\Add0~29_combout\ & ((\Add0~28_combout\ & (!\Add0~23\)) # (!\Add0~28_combout\ & ((\Add0~23\) # (GND)))))
-- \Add0~31\ = CARRY((\Add0~29_combout\ & (!\Add0~28_combout\ & !\Add0~23\)) # (!\Add0~29_combout\ & ((!\Add0~23\) # (!\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X27_Y26_N14
\Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (A_int(4) & ((B_int(4) & ((!\Mux7~1_combout\))) # (!B_int(4) & (\Mux7~2_combout\)))) # (!A_int(4) & (\Mux7~1_combout\ $ (((!\Mux7~2_combout\ & B_int(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_int(4),
	datab => \Mux7~2_combout\,
	datac => \Mux7~1_combout\,
	datad => B_int(4),
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X24_Y26_N12
\Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\ula_op[3]~input_o\ & ((\Add0~33_combout\))) # (!\ula_op[3]~input_o\ & (!\ula_op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[3]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \Add0~33_combout\,
	combout => \Add0~34_combout\);

-- Location: LCCOMB_X24_Y26_N16
\Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\ula_op[3]~input_o\ & (((\Add0~34_combout\)))) # (!\ula_op[3]~input_o\ & ((\Add0~34_combout\ & ((\Add0~30_combout\))) # (!\Add0~34_combout\ & (\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[3]~input_o\,
	datab => \Add0~32_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~34_combout\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X23_Y25_N20
\ram~57feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~57feeder_combout\ = \Add0~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~35_combout\,
	combout => \ram~57feeder_combout\);

-- Location: FF_X23_Y25_N21
\ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~57feeder_combout\,
	ena => \ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~57_q\);

-- Location: FF_X23_Y25_N11
\ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~35_combout\,
	sload => VCC,
	ena => \ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~73_q\);

-- Location: LCCOMB_X23_Y26_N16
\ram~65feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~65feeder_combout\ = \Add0~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~35_combout\,
	combout => \ram~65feeder_combout\);

-- Location: FF_X23_Y26_N17
\ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~65feeder_combout\,
	ena => \ram~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~65_q\);

-- Location: FF_X23_Y26_N23
\ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~35_combout\,
	sload => VCC,
	ena => \ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~49_q\);

-- Location: LCCOMB_X23_Y26_N22
\ram~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~133_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~65_q\)) # (!\address[1]~input_o\ & ((\ram~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~65_q\,
	datac => \ram~49_q\,
	datad => \address[1]~input_o\,
	combout => \ram~133_combout\);

-- Location: LCCOMB_X23_Y25_N10
\ram~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~134_combout\ = (\address[0]~input_o\ & ((\ram~133_combout\ & ((\ram~73_q\))) # (!\ram~133_combout\ & (\ram~57_q\)))) # (!\address[0]~input_o\ & (((\ram~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~57_q\,
	datac => \ram~73_q\,
	datad => \ram~133_combout\,
	combout => \ram~134_combout\);

-- Location: LCCOMB_X24_Y26_N18
\ram~33feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~33feeder_combout\ = \Add0~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~35_combout\,
	combout => \ram~33feeder_combout\);

-- Location: FF_X24_Y26_N19
\ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~33feeder_combout\,
	ena => \ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~33_q\);

-- Location: FF_X24_Y27_N31
\ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~35_combout\,
	sload => VCC,
	ena => \ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~41_q\);

-- Location: LCCOMB_X25_Y25_N24
\ram~25feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~25feeder_combout\ = \Add0~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~35_combout\,
	combout => \ram~25feeder_combout\);

-- Location: FF_X25_Y25_N25
\ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~25feeder_combout\,
	ena => \ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~25_q\);

-- Location: FF_X25_Y25_N27
\ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~35_combout\,
	sload => VCC,
	ena => \ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~17_q\);

-- Location: LCCOMB_X25_Y25_N26
\ram~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~135_combout\ = (\address[0]~input_o\ & ((\ram~25_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\ram~17_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~25_q\,
	datac => \ram~17_q\,
	datad => \address[1]~input_o\,
	combout => \ram~135_combout\);

-- Location: LCCOMB_X24_Y27_N30
\ram~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~136_combout\ = (\address[1]~input_o\ & ((\ram~135_combout\ & ((\ram~41_q\))) # (!\ram~135_combout\ & (\ram~33_q\)))) # (!\address[1]~input_o\ & (((\ram~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~33_q\,
	datac => \ram~41_q\,
	datad => \ram~135_combout\,
	combout => \ram~136_combout\);

-- Location: LCCOMB_X23_Y25_N12
\ram~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~137_combout\ = (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\ram~134_combout\)) # (!\address[2]~input_o\ & ((\ram~136_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~134_combout\,
	datab => \ram~136_combout\,
	datac => \address[3]~input_o\,
	datad => \address[2]~input_o\,
	combout => \ram~137_combout\);

-- Location: FF_X24_Y26_N17
\ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~35_combout\,
	ena => \ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~89_q\);

-- Location: FF_X25_Y26_N15
\ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~35_combout\,
	sload => VCC,
	ena => \ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~81_q\);

-- Location: LCCOMB_X25_Y27_N30
\ram~97feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~97feeder_combout\ = \Add0~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~35_combout\,
	combout => \ram~97feeder_combout\);

-- Location: FF_X25_Y27_N31
\ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~97feeder_combout\,
	ena => \ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~97_q\);

-- Location: LCCOMB_X25_Y27_N8
\ram~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~138_combout\ = (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\ram~97_q\))) # (!\address[1]~input_o\ & (\ram~81_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~81_q\,
	datab => \address[0]~input_o\,
	datac => \ram~97_q\,
	datad => \address[1]~input_o\,
	combout => \ram~138_combout\);

-- Location: LCCOMB_X25_Y27_N2
\ram~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~139_combout\ = (\ram~138_combout\) # ((\ram~89_q\ & (!\address[1]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~89_q\,
	datab => \address[1]~input_o\,
	datac => \ram~138_combout\,
	datad => \address[0]~input_o\,
	combout => \ram~139_combout\);

-- Location: LCCOMB_X23_Y25_N18
\ram~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~140_combout\ = (\ram~137_combout\) # ((\ram~139_combout\ & (\address[3]~input_o\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~137_combout\,
	datab => \ram~139_combout\,
	datac => \address[3]~input_o\,
	datad => \address[2]~input_o\,
	combout => \ram~140_combout\);

-- Location: IOIBUF_X33_Y16_N1
\B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: FF_X26_Y26_N17
\B_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[5]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_int(5));

-- Location: IOIBUF_X33_Y28_N1
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: FF_X26_Y26_N13
\A_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[5]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_int(5));

-- Location: LCCOMB_X27_Y26_N16
\Add0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (B_int(5) & (\Mux7~1_combout\ $ (((A_int(5)) # (!\Mux7~2_combout\))))) # (!B_int(5) & ((A_int(5) & ((\Mux7~2_combout\))) # (!A_int(5) & (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~2_combout\,
	datac => B_int(5),
	datad => A_int(5),
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X24_Y26_N26
\Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\ula_op[3]~input_o\ & ((\Add0~41_combout\))) # (!\ula_op[3]~input_o\ & (!\ula_op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[2]~input_o\,
	datac => \Add0~41_combout\,
	datad => \ula_op[3]~input_o\,
	combout => \Add0~42_combout\);

-- Location: LCCOMB_X26_Y26_N12
\Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (A_int(5) & (\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\ & !B_int(5)))))) # (!A_int(5) & ((B_int(5) & ((!\ula_op[0]~input_o\))) # (!B_int(5) & (!\ula_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datab => \ula_op[0]~input_o\,
	datac => A_int(5),
	datad => B_int(5),
	combout => \Add0~40_combout\);

-- Location: LCCOMB_X26_Y26_N6
\Add0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = \ula_op[1]~input_o\ $ (A_int(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_op[1]~input_o\,
	datad => A_int(5),
	combout => \Add0~37_combout\);

-- Location: LCCOMB_X26_Y26_N30
\Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = \ula_op[0]~input_o\ $ (B_int(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datad => B_int(5),
	combout => \Add0~36_combout\);

-- Location: LCCOMB_X25_Y26_N16
\Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = ((\Add0~37_combout\ $ (\Add0~36_combout\ $ (!\Add0~31\)))) # (GND)
-- \Add0~39\ = CARRY((\Add0~37_combout\ & ((\Add0~36_combout\) # (!\Add0~31\))) # (!\Add0~37_combout\ & (\Add0~36_combout\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X24_Y26_N24
\Add0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~42_combout\ & ((\ula_op[3]~input_o\) # ((\Add0~38_combout\)))) # (!\Add0~42_combout\ & (!\ula_op[3]~input_o\ & (\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \ula_op[3]~input_o\,
	datac => \Add0~40_combout\,
	datad => \Add0~38_combout\,
	combout => \Add0~43_combout\);

-- Location: LCCOMB_X23_Y26_N12
\ram~66feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~66feeder_combout\ = \Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~43_combout\,
	combout => \ram~66feeder_combout\);

-- Location: FF_X23_Y26_N13
\ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~66feeder_combout\,
	ena => \ram~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~66_q\);

-- Location: FF_X23_Y26_N11
\ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~43_combout\,
	sload => VCC,
	ena => \ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~50_q\);

-- Location: LCCOMB_X23_Y26_N10
\ram~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~141_combout\ = (\address[1]~input_o\ & ((\ram~66_q\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\ram~50_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~66_q\,
	datab => \address[1]~input_o\,
	datac => \ram~50_q\,
	datad => \address[0]~input_o\,
	combout => \ram~141_combout\);

-- Location: LCCOMB_X23_Y25_N24
\ram~58feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~58feeder_combout\ = \Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~43_combout\,
	combout => \ram~58feeder_combout\);

-- Location: FF_X23_Y25_N25
\ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~58feeder_combout\,
	ena => \ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~58_q\);

-- Location: FF_X23_Y25_N23
\ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~43_combout\,
	sload => VCC,
	ena => \ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~74_q\);

-- Location: LCCOMB_X23_Y25_N22
\ram~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~142_combout\ = (\ram~141_combout\ & (((\ram~74_q\) # (!\address[0]~input_o\)))) # (!\ram~141_combout\ & (\ram~58_q\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~141_combout\,
	datab => \ram~58_q\,
	datac => \ram~74_q\,
	datad => \address[0]~input_o\,
	combout => \ram~142_combout\);

-- Location: LCCOMB_X24_Y26_N30
\ram~34feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~34feeder_combout\ = \Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~43_combout\,
	combout => \ram~34feeder_combout\);

-- Location: FF_X24_Y26_N31
\ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~34feeder_combout\,
	ena => \ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~34_q\);

-- Location: FF_X24_Y27_N9
\ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~43_combout\,
	sload => VCC,
	ena => \ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~42_q\);

-- Location: FF_X25_Y25_N23
\ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~43_combout\,
	sload => VCC,
	ena => \ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~18_q\);

-- Location: LCCOMB_X25_Y25_N12
\ram~26feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~26feeder_combout\ = \Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~43_combout\,
	combout => \ram~26feeder_combout\);

-- Location: FF_X25_Y25_N13
\ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~26feeder_combout\,
	ena => \ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~26_q\);

-- Location: LCCOMB_X25_Y25_N22
\ram~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~143_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\ram~26_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\ram~18_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \ram~18_q\,
	datad => \ram~26_q\,
	combout => \ram~143_combout\);

-- Location: LCCOMB_X24_Y27_N8
\ram~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~144_combout\ = (\address[1]~input_o\ & ((\ram~143_combout\ & ((\ram~42_q\))) # (!\ram~143_combout\ & (\ram~34_q\)))) # (!\address[1]~input_o\ & (((\ram~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~34_q\,
	datac => \ram~42_q\,
	datad => \ram~143_combout\,
	combout => \ram~144_combout\);

-- Location: LCCOMB_X24_Y27_N26
\ram~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~145_combout\ = (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\ram~142_combout\)) # (!\address[2]~input_o\ & ((\ram~144_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~142_combout\,
	datab => \address[2]~input_o\,
	datac => \ram~144_combout\,
	datad => \address[3]~input_o\,
	combout => \ram~145_combout\);

-- Location: FF_X24_Y26_N25
\ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~43_combout\,
	ena => \ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~90_q\);

-- Location: FF_X25_Y26_N11
\ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~43_combout\,
	sload => VCC,
	ena => \ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~82_q\);

-- Location: LCCOMB_X25_Y27_N4
\ram~98feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~98feeder_combout\ = \Add0~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~43_combout\,
	combout => \ram~98feeder_combout\);

-- Location: FF_X25_Y27_N5
\ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~98feeder_combout\,
	ena => \ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~98_q\);

-- Location: LCCOMB_X25_Y27_N18
\ram~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~146_combout\ = (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\ram~98_q\))) # (!\address[1]~input_o\ & (\ram~82_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~82_q\,
	datab => \address[0]~input_o\,
	datac => \ram~98_q\,
	datad => \address[1]~input_o\,
	combout => \ram~146_combout\);

-- Location: LCCOMB_X24_Y27_N0
\ram~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~147_combout\ = (\ram~146_combout\) # ((\ram~90_q\ & (!\address[1]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~90_q\,
	datab => \ram~146_combout\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \ram~147_combout\);

-- Location: LCCOMB_X24_Y27_N22
\ram~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~148_combout\ = (\ram~145_combout\) # ((\address[3]~input_o\ & (!\address[2]~input_o\ & \ram~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \ram~145_combout\,
	datad => \ram~147_combout\,
	combout => \ram~148_combout\);

-- Location: IOIBUF_X31_Y31_N1
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: FF_X26_Y26_N31
\B_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[6]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_int(6));

-- Location: IOIBUF_X26_Y31_N8
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: FF_X26_Y26_N19
\A_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[6]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_int(6));

-- Location: LCCOMB_X27_Y26_N2
\Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (B_int(6) & ((A_int(6) & (\ula_op[1]~input_o\)) # (!A_int(6) & ((!\ula_op[0]~input_o\))))) # (!B_int(6) & (\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\) # (!A_int(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datab => B_int(6),
	datac => \ula_op[0]~input_o\,
	datad => A_int(6),
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X27_Y26_N20
\Add0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (B_int(6) & (\Mux7~1_combout\ $ (((A_int(6)) # (!\Mux7~2_combout\))))) # (!B_int(6) & ((A_int(6) & ((\Mux7~2_combout\))) # (!A_int(6) & (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => B_int(6),
	datac => \Mux7~2_combout\,
	datad => A_int(6),
	combout => \Add0~49_combout\);

-- Location: LCCOMB_X24_Y26_N4
\Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\ula_op[3]~input_o\ & ((\Add0~49_combout\))) # (!\ula_op[3]~input_o\ & (!\ula_op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[2]~input_o\,
	datac => \Add0~49_combout\,
	datad => \ula_op[3]~input_o\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X26_Y26_N20
\Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = B_int(6) $ (\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_int(6),
	datad => \ula_op[0]~input_o\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X26_Y26_N16
\Add0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = \ula_op[1]~input_o\ $ (A_int(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[1]~input_o\,
	datad => A_int(6),
	combout => \Add0~45_combout\);

-- Location: LCCOMB_X25_Y26_N18
\Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\Add0~44_combout\ & ((\Add0~45_combout\ & (\Add0~39\ & VCC)) # (!\Add0~45_combout\ & (!\Add0~39\)))) # (!\Add0~44_combout\ & ((\Add0~45_combout\ & (!\Add0~39\)) # (!\Add0~45_combout\ & ((\Add0~39\) # (GND)))))
-- \Add0~47\ = CARRY((\Add0~44_combout\ & (!\Add0~45_combout\ & !\Add0~39\)) # (!\Add0~44_combout\ & ((!\Add0~39\) # (!\Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add0~45_combout\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X24_Y26_N0
\Add0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\ula_op[3]~input_o\ & (((\Add0~50_combout\)))) # (!\ula_op[3]~input_o\ & ((\Add0~50_combout\ & ((\Add0~46_combout\))) # (!\Add0~50_combout\ & (\Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \ula_op[3]~input_o\,
	datac => \Add0~50_combout\,
	datad => \Add0~46_combout\,
	combout => \Add0~51_combout\);

-- Location: LCCOMB_X25_Y27_N24
\ram~99feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~99feeder_combout\ = \Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~51_combout\,
	combout => \ram~99feeder_combout\);

-- Location: FF_X25_Y27_N25
\ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~99feeder_combout\,
	ena => \ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~99_q\);

-- Location: FF_X24_Y27_N21
\ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~51_combout\,
	sload => VCC,
	ena => \ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~83_q\);

-- Location: LCCOMB_X24_Y27_N20
\ram~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~154_combout\ = (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~99_q\)) # (!\address[1]~input_o\ & ((\ram~83_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~99_q\,
	datac => \ram~83_q\,
	datad => \address[0]~input_o\,
	combout => \ram~154_combout\);

-- Location: FF_X24_Y26_N1
\ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~51_combout\,
	ena => \ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~91_q\);

-- Location: LCCOMB_X24_Y27_N6
\ram~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~155_combout\ = (\ram~154_combout\) # ((\address[0]~input_o\ & (!\address[1]~input_o\ & \ram~91_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~154_combout\,
	datac => \address[1]~input_o\,
	datad => \ram~91_q\,
	combout => \ram~155_combout\);

-- Location: LCCOMB_X23_Y25_N16
\ram~59feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~59feeder_combout\ = \Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~51_combout\,
	combout => \ram~59feeder_combout\);

-- Location: FF_X23_Y25_N17
\ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~59feeder_combout\,
	ena => \ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~59_q\);

-- Location: FF_X23_Y25_N7
\ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~51_combout\,
	sload => VCC,
	ena => \ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~75_q\);

-- Location: LCCOMB_X23_Y26_N24
\ram~67feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~67feeder_combout\ = \Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~51_combout\,
	combout => \ram~67feeder_combout\);

-- Location: FF_X23_Y26_N25
\ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~67feeder_combout\,
	ena => \ram~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~67_q\);

-- Location: FF_X23_Y26_N27
\ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~51_combout\,
	sload => VCC,
	ena => \ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~51_q\);

-- Location: LCCOMB_X23_Y26_N26
\ram~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~149_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~67_q\)) # (!\address[1]~input_o\ & ((\ram~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~67_q\,
	datac => \ram~51_q\,
	datad => \address[1]~input_o\,
	combout => \ram~149_combout\);

-- Location: LCCOMB_X23_Y25_N6
\ram~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~150_combout\ = (\address[0]~input_o\ & ((\ram~149_combout\ & ((\ram~75_q\))) # (!\ram~149_combout\ & (\ram~59_q\)))) # (!\address[0]~input_o\ & (((\ram~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~59_q\,
	datac => \ram~75_q\,
	datad => \ram~149_combout\,
	combout => \ram~150_combout\);

-- Location: LCCOMB_X25_Y25_N20
\ram~27feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~27feeder_combout\ = \Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~51_combout\,
	combout => \ram~27feeder_combout\);

-- Location: FF_X25_Y25_N21
\ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~27feeder_combout\,
	ena => \ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~27_q\);

-- Location: FF_X25_Y25_N19
\ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~51_combout\,
	sload => VCC,
	ena => \ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~19_q\);

-- Location: LCCOMB_X25_Y25_N18
\ram~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~151_combout\ = (\address[0]~input_o\ & ((\ram~27_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\ram~19_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~27_q\,
	datac => \ram~19_q\,
	datad => \address[1]~input_o\,
	combout => \ram~151_combout\);

-- Location: FF_X24_Y27_N29
\ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~51_combout\,
	sload => VCC,
	ena => \ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~43_q\);

-- Location: LCCOMB_X24_Y26_N6
\ram~35feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~35feeder_combout\ = \Add0~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~51_combout\,
	combout => \ram~35feeder_combout\);

-- Location: FF_X24_Y26_N7
\ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~35feeder_combout\,
	ena => \ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~35_q\);

-- Location: LCCOMB_X24_Y27_N28
\ram~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~152_combout\ = (\address[1]~input_o\ & ((\ram~151_combout\ & (\ram~43_q\)) # (!\ram~151_combout\ & ((\ram~35_q\))))) # (!\address[1]~input_o\ & (\ram~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~151_combout\,
	datac => \ram~43_q\,
	datad => \ram~35_q\,
	combout => \ram~152_combout\);

-- Location: LCCOMB_X24_Y27_N2
\ram~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~153_combout\ = (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\ram~150_combout\)) # (!\address[2]~input_o\ & ((\ram~152_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \ram~150_combout\,
	datad => \ram~152_combout\,
	combout => \ram~153_combout\);

-- Location: LCCOMB_X24_Y27_N16
\ram~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~156_combout\ = (\ram~153_combout\) # ((\ram~155_combout\ & (!\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~155_combout\,
	datab => \address[2]~input_o\,
	datac => \ram~153_combout\,
	datad => \address[3]~input_o\,
	combout => \ram~156_combout\);

-- Location: IOIBUF_X33_Y15_N1
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: FF_X27_Y26_N13
\A_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \A[7]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_int(7));

-- Location: IOIBUF_X33_Y27_N1
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: FF_X27_Y26_N19
\B_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B[7]~input_o\,
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_int(7));

-- Location: LCCOMB_X27_Y26_N10
\Add0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (A_int(7) & ((B_int(7) & ((!\Mux7~1_combout\))) # (!B_int(7) & (\Mux7~2_combout\)))) # (!A_int(7) & (\Mux7~1_combout\ $ (((!\Mux7~2_combout\ & B_int(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_int(7),
	datab => \Mux7~2_combout\,
	datac => \Mux7~1_combout\,
	datad => B_int(7),
	combout => \Add0~57_combout\);

-- Location: LCCOMB_X24_Y26_N22
\Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\ula_op[3]~input_o\ & ((\Add0~57_combout\))) # (!\ula_op[3]~input_o\ & (!\ula_op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_op[2]~input_o\,
	datac => \Add0~57_combout\,
	datad => \ula_op[3]~input_o\,
	combout => \Add0~58_combout\);

-- Location: LCCOMB_X27_Y26_N26
\Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = \ula_op[0]~input_o\ $ (B_int(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_op[0]~input_o\,
	datad => B_int(7),
	combout => \Add0~52_combout\);

-- Location: LCCOMB_X27_Y26_N22
\Add0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \ula_op[1]~input_o\ $ (A_int(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_op[1]~input_o\,
	datad => A_int(7),
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X25_Y26_N20
\Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = \Add0~52_combout\ $ (\Add0~47\ $ (!\Add0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datad => \Add0~53_combout\,
	cin => \Add0~47\,
	combout => \Add0~54_combout\);

-- Location: LCCOMB_X27_Y26_N8
\Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (B_int(7) & ((A_int(7) & ((\ula_op[1]~input_o\))) # (!A_int(7) & (!\ula_op[0]~input_o\)))) # (!B_int(7) & (\ula_op[1]~input_o\ $ (((\ula_op[0]~input_o\) # (!A_int(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => B_int(7),
	datac => \ula_op[1]~input_o\,
	datad => A_int(7),
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X24_Y26_N20
\Add0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~58_combout\ & ((\ula_op[3]~input_o\) # ((\Add0~54_combout\)))) # (!\Add0~58_combout\ & (!\ula_op[3]~input_o\ & ((\Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \ula_op[3]~input_o\,
	datac => \Add0~54_combout\,
	datad => \Add0~56_combout\,
	combout => \Add0~59_combout\);

-- Location: FF_X24_Y26_N21
\ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~59_combout\,
	ena => \ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~92_q\);

-- Location: LCCOMB_X25_Y27_N10
\ram~100feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~100feeder_combout\ = \Add0~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~59_combout\,
	combout => \ram~100feeder_combout\);

-- Location: FF_X25_Y27_N11
\ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~100feeder_combout\,
	ena => \ram~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~100_q\);

-- Location: FF_X25_Y26_N17
\ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~59_combout\,
	sload => VCC,
	ena => \ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~84_q\);

-- Location: LCCOMB_X25_Y27_N28
\ram~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~162_combout\ = (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~100_q\)) # (!\address[1]~input_o\ & ((\ram~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~100_q\,
	datab => \address[0]~input_o\,
	datac => \ram~84_q\,
	datad => \address[1]~input_o\,
	combout => \ram~162_combout\);

-- Location: LCCOMB_X25_Y27_N6
\ram~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~163_combout\ = (\ram~162_combout\) # ((\ram~92_q\ & (\address[0]~input_o\ & !\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~92_q\,
	datab => \ram~162_combout\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \ram~163_combout\);

-- Location: LCCOMB_X23_Y26_N20
\ram~68feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~68feeder_combout\ = \Add0~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~59_combout\,
	combout => \ram~68feeder_combout\);

-- Location: FF_X23_Y26_N21
\ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~68feeder_combout\,
	ena => \ram~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~68_q\);

-- Location: FF_X23_Y26_N19
\ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~59_combout\,
	sload => VCC,
	ena => \ram~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~52_q\);

-- Location: LCCOMB_X23_Y26_N18
\ram~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~157_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\ram~68_q\)) # (!\address[1]~input_o\ & ((\ram~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~68_q\,
	datac => \ram~52_q\,
	datad => \address[1]~input_o\,
	combout => \ram~157_combout\);

-- Location: LCCOMB_X23_Y25_N4
\ram~60feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~60feeder_combout\ = \Add0~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~59_combout\,
	combout => \ram~60feeder_combout\);

-- Location: FF_X23_Y25_N5
\ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~60feeder_combout\,
	ena => \ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~60_q\);

-- Location: FF_X23_Y25_N3
\ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~59_combout\,
	sload => VCC,
	ena => \ram~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~76_q\);

-- Location: LCCOMB_X23_Y25_N2
\ram~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~158_combout\ = (\ram~157_combout\ & (((\ram~76_q\) # (!\address[0]~input_o\)))) # (!\ram~157_combout\ & (\ram~60_q\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~157_combout\,
	datab => \ram~60_q\,
	datac => \ram~76_q\,
	datad => \address[0]~input_o\,
	combout => \ram~158_combout\);

-- Location: FF_X25_Y25_N9
\ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~59_combout\,
	sload => VCC,
	ena => \ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~28_q\);

-- Location: FF_X25_Y25_N7
\ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~59_combout\,
	sload => VCC,
	ena => \ram~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~20_q\);

-- Location: LCCOMB_X25_Y25_N6
\ram~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~159_combout\ = (\address[0]~input_o\ & ((\ram~28_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\ram~20_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \ram~28_q\,
	datac => \ram~20_q\,
	datad => \address[1]~input_o\,
	combout => \ram~159_combout\);

-- Location: FF_X24_Y27_N15
\ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~59_combout\,
	sload => VCC,
	ena => \ram~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~44_q\);

-- Location: LCCOMB_X24_Y26_N14
\ram~36feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~36feeder_combout\ = \Add0~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~59_combout\,
	combout => \ram~36feeder_combout\);

-- Location: FF_X24_Y26_N15
\ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ram~36feeder_combout\,
	ena => \ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram~36_q\);

-- Location: LCCOMB_X24_Y27_N14
\ram~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~160_combout\ = (\address[1]~input_o\ & ((\ram~159_combout\ & (\ram~44_q\)) # (!\ram~159_combout\ & ((\ram~36_q\))))) # (!\address[1]~input_o\ & (\ram~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \ram~159_combout\,
	datac => \ram~44_q\,
	datad => \ram~36_q\,
	combout => \ram~160_combout\);

-- Location: LCCOMB_X24_Y27_N4
\ram~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~161_combout\ = (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\ram~158_combout\)) # (!\address[2]~input_o\ & ((\ram~160_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~158_combout\,
	datab => \address[2]~input_o\,
	datac => \ram~160_combout\,
	datad => \address[3]~input_o\,
	combout => \ram~161_combout\);

-- Location: LCCOMB_X24_Y27_N18
\ram~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram~164_combout\ = (\ram~161_combout\) # ((\ram~163_combout\ & (!\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram~163_combout\,
	datab => \address[2]~input_o\,
	datac => \ram~161_combout\,
	datad => \address[3]~input_o\,
	combout => \ram~164_combout\);

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;
END structure;


