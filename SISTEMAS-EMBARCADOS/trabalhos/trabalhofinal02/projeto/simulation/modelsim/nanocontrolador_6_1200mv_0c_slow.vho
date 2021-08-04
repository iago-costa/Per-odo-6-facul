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

-- DATE "08/02/2021 12:36:14"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	NanoControlador IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ula_op : IN std_logic_vector(2 DOWNTO 0);
	C : OUT std_logic_vector(7 DOWNTO 0);
	n_inst : OUT std_logic;
	z_inst : OUT std_logic;
	c_inst : OUT std_logic;
	v_inst : OUT std_logic
	);
END NanoControlador;

-- Design Ports Information
-- C[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_inst	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_inst	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_inst	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_inst	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ula_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_n_inst : std_logic;
SIGNAL ww_z_inst : std_logic;
SIGNAL ww_c_inst : std_logic;
SIGNAL ww_v_inst : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \n_inst~output_o\ : std_logic;
SIGNAL \z_inst~output_o\ : std_logic;
SIGNAL \c_inst~output_o\ : std_logic;
SIGNAL \v_inst~output_o\ : std_logic;
SIGNAL \ula_op[0]~input_o\ : std_logic;
SIGNAL \ula_op[2]~input_o\ : std_logic;
SIGNAL \ula_op[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \v_inst~0_combout\ : std_logic;
SIGNAL \ALT_INV_v_inst~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ula_op <= ula_op;
C <= ww_C;
n_inst <= ww_n_inst;
z_inst <= ww_z_inst;
c_inst <= ww_c_inst;
v_inst <= ww_v_inst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_v_inst~0_combout\ <= NOT \v_inst~0_combout\;

-- Location: IOOBUF_X33_Y11_N9
\C[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\C[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\C[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\C[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\C[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
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
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\C[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\C[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\n_inst~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \n_inst~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\z_inst~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \z_inst~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\c_inst~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \c_inst~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\v_inst~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_v_inst~0_combout\,
	devoe => ww_devoe,
	o => \v_inst~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\ula_op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(0),
	o => \ula_op[0]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\ula_op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(2),
	o => \ula_op[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\ula_op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(1),
	o => \ula_op[1]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X9_Y4_N10
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\ula_op[2]~input_o\ & ((\A[0]~input_o\ & (\ula_op[0]~input_o\)) # (!\A[0]~input_o\ & ((\ula_op[1]~input_o\))))) # (!\ula_op[2]~input_o\ & (((\ula_op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[2]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: IOIBUF_X12_Y31_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X9_Y3_N20
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \ula_op[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X9_Y3_N0
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X9_Y3_N2
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\A[0]~input_o\ & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\A[0]~input_o\ & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\A[0]~input_o\ & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\A[0]~input_o\ & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X9_Y4_N0
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\ula_op[2]~input_o\ & (((!\A[0]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[2]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X9_Y4_N28
\Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~1_combout\ & (((!\Mux8~0_combout\)))) # (!\Mux8~1_combout\ & ((\Mux8~0_combout\ & ((\B[0]~input_o\))) # (!\Mux8~0_combout\ & (\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Add0~3_combout\,
	datac => \B[0]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: IOIBUF_X10_Y0_N8
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X9_Y3_N30
\Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \B[1]~input_o\ $ (\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X9_Y3_N4
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\A[1]~input_o\ $ (\Add0~5_combout\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\A[1]~input_o\ & ((\Add0~5_combout\) # (!\Add0~4\))) # (!\A[1]~input_o\ & (\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X9_Y4_N24
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\ula_op[2]~input_o\ & (((!\A[1]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X9_Y4_N6
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ula_op[1]~input_o\ & (\A[1]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X9_Y4_N2
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\ & (((\B[1]~input_o\ & \Mux7~0_combout\)))) # (!\Mux7~1_combout\ & ((\Add0~6_combout\) # ((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux7~1_combout\,
	datac => \B[1]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~2_combout\);

-- Location: IOIBUF_X31_Y0_N8
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X9_Y4_N30
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ula_op[1]~input_o\ & (\A[2]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X9_Y4_N4
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \ula_op[0]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X9_Y3_N6
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\A[2]~input_o\ & (\Add0~7\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\A[2]~input_o\ & (!\Add0~7\)) # (!\A[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\A[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X9_Y4_N8
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ula_op[2]~input_o\ & (((!\A[2]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X9_Y4_N18
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~0_combout\ & (((\B[2]~input_o\) # (!\Mux6~1_combout\)))) # (!\Mux6~0_combout\ & (\Add0~9_combout\ & (!\Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Add0~9_combout\,
	datac => \Mux6~1_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X33_Y16_N22
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N15
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X9_Y2_N18
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ula_op[1]~input_o\ & (\A[3]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X9_Y2_N0
\Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \ula_op[0]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_op[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X9_Y3_N8
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A[3]~input_o\ $ (\Add0~11_combout\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\A[3]~input_o\ & ((\Add0~11_combout\) # (!\Add0~10\))) # (!\A[3]~input_o\ & (\Add0~11_combout\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X9_Y2_N20
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\ula_op[2]~input_o\ & (((!\A[3]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X9_Y2_N6
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~0_combout\ & ((\B[3]~input_o\) # ((!\Mux5~1_combout\)))) # (!\Mux5~0_combout\ & (((\Add0~12_combout\ & !\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

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

-- Location: IOIBUF_X29_Y0_N8
\B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X9_Y3_N24
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B[4]~input_o\ $ (\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X9_Y3_N10
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\A[4]~input_o\ & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\A[4]~input_o\ & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\A[4]~input_o\ & (!\Add0~14_combout\ & !\Add0~13\)) # (!\A[4]~input_o\ & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X9_Y2_N24
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ula_op[1]~input_o\ & (\A[4]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X9_Y2_N26
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\ula_op[2]~input_o\ & (((!\A[4]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X9_Y2_N4
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~0_combout\ & (((\B[4]~input_o\) # (!\Mux4~1_combout\)))) # (!\Mux4~0_combout\ & (\Add0~15_combout\ & (!\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux4~1_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: IOIBUF_X14_Y31_N1
\A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X9_Y2_N10
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\ula_op[2]~input_o\ & (((!\A[5]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \A[5]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X9_Y2_N8
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ula_op[1]~input_o\ & (\A[5]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \A[5]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux3~0_combout\);

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

-- Location: LCCOMB_X9_Y2_N22
\Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \B[5]~input_o\ $ (\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ula_op[0]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X9_Y3_N12
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\A[5]~input_o\ $ (\Add0~17_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\A[5]~input_o\ & ((\Add0~17_combout\) # (!\Add0~16\))) # (!\A[5]~input_o\ & (\Add0~17_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X9_Y2_N28
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & (\Mux3~0_combout\ & (\B[5]~input_o\))) # (!\Mux3~1_combout\ & ((\Mux3~0_combout\) # ((\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \B[5]~input_o\,
	datad => \Add0~18_combout\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X24_Y0_N1
\A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X9_Y2_N16
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\ula_op[2]~input_o\ & (((!\A[6]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X9_Y2_N14
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ula_op[1]~input_o\ & (\A[6]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X9_Y3_N26
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \ula_op[0]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X9_Y3_N14
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & ((\A[6]~input_o\ & (\Add0~19\ & VCC)) # (!\A[6]~input_o\ & (!\Add0~19\)))) # (!\Add0~20_combout\ & ((\A[6]~input_o\ & (!\Add0~19\)) # (!\A[6]~input_o\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\Add0~20_combout\ & (!\A[6]~input_o\ & !\Add0~19\)) # (!\Add0~20_combout\ & ((!\Add0~19\) # (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X9_Y2_N2
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\ & (\Mux2~0_combout\ & (\B[6]~input_o\))) # (!\Mux2~1_combout\ & ((\Mux2~0_combout\) # ((\Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~0_combout\,
	datac => \B[6]~input_o\,
	datad => \Add0~21_combout\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X26_Y0_N8
\A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X9_Y4_N22
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\ula_op[2]~input_o\ & (((!\A[7]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[2]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X8_Y0_N8
\B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X9_Y3_N28
\Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \ula_op[0]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X9_Y3_N16
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Add0~23_combout\ $ (\A[7]~input_o\ $ (!\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((\Add0~23_combout\ & ((\A[7]~input_o\) # (!\Add0~22\))) # (!\Add0~23_combout\ & (\A[7]~input_o\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \A[7]~input_o\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X9_Y4_N12
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ula_op[1]~input_o\ & (\A[7]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[2]~input_o\,
	datac => \ula_op[1]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X9_Y4_N16
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & (\B[7]~input_o\ & ((\Mux1~0_combout\)))) # (!\Mux1~1_combout\ & (((\Add0~24_combout\) # (\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \B[7]~input_o\,
	datac => \Add0~24_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X9_Y2_N12
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux5~2_combout\ & (!\Mux3~2_combout\ & (!\Mux4~2_combout\ & !\Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux2~2_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X9_Y4_N26
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux6~2_combout\ & (!\Mux7~2_combout\ & !\Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~2_combout\,
	datac => \Mux7~2_combout\,
	datad => \Mux8~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X9_Y4_N20
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & !\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux1~2_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X9_Y3_N18
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \Add0~25\ $ (\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ula_op[0]~input_o\,
	cin => \Add0~25\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X9_Y2_N30
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & (!\ula_op[0]~input_o\)) # (!\ula_op[1]~input_o\ & ((\Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \Add0~26_combout\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X9_Y3_N22
\v_inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \v_inst~0_combout\ = (\B[7]~input_o\ & ((\Mux1~2_combout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & ((\A[7]~input_o\) # (!\Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[7]~input_o\,
	datac => \A[7]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \v_inst~0_combout\);

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;

ww_n_inst <= \n_inst~output_o\;

ww_z_inst <= \z_inst~output_o\;

ww_c_inst <= \c_inst~output_o\;

ww_v_inst <= \v_inst~output_o\;
END structure;


