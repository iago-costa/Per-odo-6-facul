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

-- DATE "07/29/2021 11:07:27"

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
	A_bus : IN std_logic_vector(7 DOWNTO 0);
	B_bus : IN std_logic_vector(7 DOWNTO 0);
	ula_op : IN std_logic_vector(2 DOWNTO 0);
	C_Bus : OUT std_logic_vector(7 DOWNTO 0);
	n_inst : OUT std_logic;
	z_inst : OUT std_logic;
	c_inst : OUT std_logic;
	v_inst : OUT std_logic
	);
END NanoControlador;

-- Design Ports Information
-- C_Bus[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_Bus[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_Bus[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_Bus[3]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_Bus[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_Bus[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_Bus[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_Bus[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_inst	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_inst	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_inst	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_inst	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_bus[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_bus[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_bus[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_bus[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_bus[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_bus[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_bus[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_bus[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_bus[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_bus[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_bus[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_bus[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_bus[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_bus[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_bus[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_bus[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ula_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_C_Bus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_n_inst : std_logic;
SIGNAL ww_z_inst : std_logic;
SIGNAL ww_c_inst : std_logic;
SIGNAL ww_v_inst : std_logic;
SIGNAL \C_Bus[0]~output_o\ : std_logic;
SIGNAL \C_Bus[1]~output_o\ : std_logic;
SIGNAL \C_Bus[2]~output_o\ : std_logic;
SIGNAL \C_Bus[3]~output_o\ : std_logic;
SIGNAL \C_Bus[4]~output_o\ : std_logic;
SIGNAL \C_Bus[5]~output_o\ : std_logic;
SIGNAL \C_Bus[6]~output_o\ : std_logic;
SIGNAL \C_Bus[7]~output_o\ : std_logic;
SIGNAL \n_inst~output_o\ : std_logic;
SIGNAL \z_inst~output_o\ : std_logic;
SIGNAL \c_inst~output_o\ : std_logic;
SIGNAL \v_inst~output_o\ : std_logic;
SIGNAL \A_bus[0]~input_o\ : std_logic;
SIGNAL \ula_op[1]~input_o\ : std_logic;
SIGNAL \ula_op[2]~input_o\ : std_logic;
SIGNAL \ula_op[0]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \B_bus[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \B_bus[1]~input_o\ : std_logic;
SIGNAL \A_bus[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \A_bus[2]~input_o\ : std_logic;
SIGNAL \B_bus[2]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \A_bus[3]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \B_bus[3]~input_o\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \A_bus[4]~input_o\ : std_logic;
SIGNAL \B_bus[4]~input_o\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \A_bus[5]~input_o\ : std_logic;
SIGNAL \B_bus[5]~input_o\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \A_bus[6]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \B_bus[6]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \A_bus[7]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \B_bus[7]~input_o\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \v_inst~0_combout\ : std_logic;
SIGNAL \ALT_INV_v_inst~0_combout\ : std_logic;

BEGIN

ww_A_bus <= A_bus;
ww_B_bus <= B_bus;
ww_ula_op <= ula_op;
C_Bus <= ww_C_Bus;
n_inst <= ww_n_inst;
z_inst <= ww_z_inst;
c_inst <= ww_c_inst;
v_inst <= ww_v_inst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_v_inst~0_combout\ <= NOT \v_inst~0_combout\;

-- Location: IOOBUF_X26_Y0_N9
\C_Bus[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => \C_Bus[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\C_Bus[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~2_combout\,
	devoe => ww_devoe,
	o => \C_Bus[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\C_Bus[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \C_Bus[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\C_Bus[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \C_Bus[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\C_Bus[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \C_Bus[4]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\C_Bus[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \C_Bus[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\C_Bus[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \C_Bus[6]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\C_Bus[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \C_Bus[7]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
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

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOOBUF_X10_Y31_N2
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

-- Location: IOOBUF_X20_Y31_N9
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

-- Location: IOIBUF_X12_Y0_N8
\A_bus[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_bus(0),
	o => \A_bus[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\ula_op[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(1),
	o => \ula_op[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\ula_op[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(2),
	o => \ula_op[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\ula_op[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_op(0),
	o => \ula_op[0]~input_o\);

-- Location: LCCOMB_X12_Y2_N12
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\A_bus[0]~input_o\ & ((\ula_op[2]~input_o\ & ((\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\)))) # (!\A_bus[0]~input_o\ & (\ula_op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X12_Y2_N18
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\ula_op[2]~input_o\ & (((!\ula_op[0]~input_o\)) # (!\A_bus[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\A_bus[0]~input_o\ $ (\ula_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\B_bus[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_bus(0),
	o => \B_bus[0]~input_o\);

-- Location: LCCOMB_X12_Y2_N0
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B_bus[0]~input_o\) # (\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_bus[0]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X5_Y2_N0
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Add0~0_combout\ & (\A_bus[0]~input_o\ $ (VCC))) # (!\Add0~0_combout\ & (\A_bus[0]~input_o\ & VCC))
-- \Add0~2\ = CARRY((\Add0~0_combout\ & \A_bus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \A_bus[0]~input_o\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X12_Y2_N14
\Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~1_combout\ & (!\Mux8~0_combout\)) # (!\Mux8~1_combout\ & ((\Mux8~0_combout\ & ((\B_bus[0]~input_o\))) # (!\Mux8~0_combout\ & (\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux8~0_combout\,
	datac => \Add0~1_combout\,
	datad => \B_bus[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: IOIBUF_X20_Y0_N8
\B_bus[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_bus(1),
	o => \B_bus[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\A_bus[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_bus(1),
	o => \A_bus[1]~input_o\);

-- Location: LCCOMB_X5_Y2_N20
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\ula_op[1]~input_o\ & (\A_bus[1]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datab => \A_bus[1]~input_o\,
	datac => \ula_op[0]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X5_Y2_N22
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\ula_op[2]~input_o\ & (((!\ula_op[0]~input_o\) # (!\A_bus[1]~input_o\)))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\A_bus[1]~input_o\ $ (\ula_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[1]~input_o\,
	datab => \A_bus[1]~input_o\,
	datac => \ula_op[0]~input_o\,
	datad => \ula_op[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X5_Y2_N18
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\B_bus[1]~input_o\ & !\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_bus[1]~input_o\,
	datac => \ula_op[0]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X5_Y2_N2
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~3_combout\ & ((\A_bus[1]~input_o\ & (\Add0~2\ & VCC)) # (!\A_bus[1]~input_o\ & (!\Add0~2\)))) # (!\Add0~3_combout\ & ((\A_bus[1]~input_o\ & (!\Add0~2\)) # (!\A_bus[1]~input_o\ & ((\Add0~2\) # (GND)))))
-- \Add0~5\ = CARRY((\Add0~3_combout\ & (!\A_bus[1]~input_o\ & !\Add0~2\)) # (!\Add0~3_combout\ & ((!\Add0~2\) # (!\A_bus[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \A_bus[1]~input_o\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X5_Y2_N24
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~0_combout\ & ((\B_bus[1]~input_o\) # ((!\Mux7~1_combout\)))) # (!\Mux7~0_combout\ & (((!\Mux7~1_combout\ & \Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_bus[1]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux7~2_combout\);

-- Location: IOIBUF_X14_Y31_N8
\A_bus[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_bus(2),
	o => \A_bus[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\B_bus[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_bus(2),
	o => \B_bus[2]~input_o\);

-- Location: LCCOMB_X12_Y2_N16
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (!\ula_op[0]~input_o\ & \B_bus[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datad => \B_bus[2]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X5_Y2_N4
\Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = ((\A_bus[2]~input_o\ $ (\Add0~6_combout\ $ (!\Add0~5\)))) # (GND)
-- \Add0~8\ = CARRY((\A_bus[2]~input_o\ & ((\Add0~6_combout\) # (!\Add0~5\))) # (!\A_bus[2]~input_o\ & (\Add0~6_combout\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[2]~input_o\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X12_Y2_N20
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\ula_op[2]~input_o\ & (((!\ula_op[0]~input_o\)) # (!\A_bus[2]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\A_bus[2]~input_o\ $ (\ula_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X12_Y2_N26
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ula_op[1]~input_o\ & (\A_bus[2]~input_o\ $ (((!\ula_op[2]~input_o\ & !\ula_op[0]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X12_Y2_N22
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & (((\Mux6~0_combout\ & \B_bus[2]~input_o\)))) # (!\Mux6~1_combout\ & ((\Add0~7_combout\) # ((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~0_combout\,
	datad => \B_bus[2]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X33_Y16_N15
\A_bus[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_bus(3),
	o => \A_bus[3]~input_o\);

-- Location: LCCOMB_X6_Y2_N10
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\ula_op[2]~input_o\ & (((!\ula_op[0]~input_o\) # (!\A_bus[3]~input_o\)))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\A_bus[3]~input_o\ $ (\ula_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \A_bus[3]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X6_Y2_N24
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ula_op[1]~input_o\ & (\A_bus[3]~input_o\ $ (((!\ula_op[2]~input_o\ & !\ula_op[0]~input_o\))))) # (!\ula_op[1]~input_o\ & (\ula_op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[2]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \A_bus[3]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X33_Y16_N22
\B_bus[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_bus(3),
	o => \B_bus[3]~input_o\);

-- Location: LCCOMB_X5_Y2_N26
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\B_bus[3]~input_o\ & !\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_bus[3]~input_o\,
	datac => \ula_op[0]~input_o\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X5_Y2_N6
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9_combout\ & ((\A_bus[3]~input_o\ & (\Add0~8\ & VCC)) # (!\A_bus[3]~input_o\ & (!\Add0~8\)))) # (!\Add0~9_combout\ & ((\A_bus[3]~input_o\ & (!\Add0~8\)) # (!\A_bus[3]~input_o\ & ((\Add0~8\) # (GND)))))
-- \Add0~11\ = CARRY((\Add0~9_combout\ & (!\A_bus[3]~input_o\ & !\Add0~8\)) # (!\Add0~9_combout\ & ((!\Add0~8\) # (!\A_bus[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \A_bus[3]~input_o\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X6_Y2_N20
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & (\Mux5~0_combout\ & ((\B_bus[3]~input_o\)))) # (!\Mux5~1_combout\ & ((\Mux5~0_combout\) # ((\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~0_combout\,
	datac => \Add0~10_combout\,
	datad => \B_bus[3]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: IOIBUF_X33_Y16_N8
\A_bus[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_bus(4),
	o => \A_bus[4]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\B_bus[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_bus(4),
	o => \B_bus[4]~input_o\);

-- Location: LCCOMB_X5_Y2_N28
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (!\ula_op[0]~input_o\ & \B_bus[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_op[0]~input_o\,
	datad => \B_bus[4]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X5_Y2_N8
\Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\A_bus[4]~input_o\ $ (\Add0~12_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~14\ = CARRY((\A_bus[4]~input_o\ & ((\Add0~12_combout\) # (!\Add0~11\))) # (!\A_bus[4]~input_o\ & (\Add0~12_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[4]~input_o\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X6_Y2_N8
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\ula_op[2]~input_o\ & (((!\A_bus[4]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A_bus[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A_bus[4]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X6_Y2_N14
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ula_op[1]~input_o\ & (\A_bus[4]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A_bus[4]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X6_Y2_N2
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\ & (((\Mux4~0_combout\ & \B_bus[4]~input_o\)))) # (!\Mux4~1_combout\ & ((\Add0~13_combout\) # ((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux4~0_combout\,
	datad => \B_bus[4]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: IOIBUF_X14_Y0_N1
\A_bus[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_bus(5),
	o => \A_bus[5]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\B_bus[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_bus(5),
	o => \B_bus[5]~input_o\);

-- Location: LCCOMB_X6_Y2_N28
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (!\ula_op[0]~input_o\ & \B_bus[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datad => \B_bus[5]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X5_Y2_N10
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\A_bus[5]~input_o\ & ((\Add0~15_combout\ & (\Add0~14\ & VCC)) # (!\Add0~15_combout\ & (!\Add0~14\)))) # (!\A_bus[5]~input_o\ & ((\Add0~15_combout\ & (!\Add0~14\)) # (!\Add0~15_combout\ & ((\Add0~14\) # (GND)))))
-- \Add0~17\ = CARRY((\A_bus[5]~input_o\ & (!\Add0~15_combout\ & !\Add0~14\)) # (!\A_bus[5]~input_o\ & ((!\Add0~14\) # (!\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[5]~input_o\,
	datab => \Add0~15_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X6_Y2_N16
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\ula_op[2]~input_o\ & (((!\A_bus[5]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A_bus[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \A_bus[5]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X6_Y2_N22
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ula_op[1]~input_o\ & (\A_bus[5]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \A_bus[5]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X6_Y2_N18
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & (((\Mux3~0_combout\ & \B_bus[5]~input_o\)))) # (!\Mux3~1_combout\ & ((\Add0~16_combout\) # ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \B_bus[5]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X20_Y31_N1
\A_bus[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_bus(6),
	o => \A_bus[6]~input_o\);

-- Location: LCCOMB_X6_Y2_N12
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ula_op[1]~input_o\ & (\A_bus[6]~input_o\ $ (((!\ula_op[2]~input_o\ & !\ula_op[0]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[6]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X12_Y31_N1
\B_bus[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_bus(6),
	o => \B_bus[6]~input_o\);

-- Location: LCCOMB_X6_Y2_N30
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\ula_op[2]~input_o\ & (((!\ula_op[0]~input_o\)) # (!\A_bus[6]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\A_bus[6]~input_o\ $ (\ula_op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[6]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X5_Y2_N30
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (!\ula_op[0]~input_o\ & \B_bus[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula_op[0]~input_o\,
	datad => \B_bus[6]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X5_Y2_N12
\Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = ((\Add0~18_combout\ $ (\A_bus[6]~input_o\ $ (!\Add0~17\)))) # (GND)
-- \Add0~20\ = CARRY((\Add0~18_combout\ & ((\A_bus[6]~input_o\) # (!\Add0~17\))) # (!\Add0~18_combout\ & (\A_bus[6]~input_o\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \A_bus[6]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X6_Y2_N0
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~0_combout\ & ((\B_bus[6]~input_o\) # ((!\Mux2~1_combout\)))) # (!\Mux2~0_combout\ & (((!\Mux2~1_combout\ & \Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \B_bus[6]~input_o\,
	datac => \Mux2~1_combout\,
	datad => \Add0~19_combout\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X24_Y0_N8
\A_bus[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_bus(7),
	o => \A_bus[7]~input_o\);

-- Location: LCCOMB_X12_Y2_N10
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ula_op[1]~input_o\ & (\A_bus[7]~input_o\ $ (((!\ula_op[0]~input_o\ & !\ula_op[2]~input_o\))))) # (!\ula_op[1]~input_o\ & (((\ula_op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A_bus[7]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X10_Y0_N8
\B_bus[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_bus(7),
	o => \B_bus[7]~input_o\);

-- Location: LCCOMB_X12_Y2_N8
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\B_bus[7]~input_o\ & !\ula_op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_bus[7]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X5_Y2_N14
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\A_bus[7]~input_o\ & ((\Add0~21_combout\ & (\Add0~20\ & VCC)) # (!\Add0~21_combout\ & (!\Add0~20\)))) # (!\A_bus[7]~input_o\ & ((\Add0~21_combout\ & (!\Add0~20\)) # (!\Add0~21_combout\ & ((\Add0~20\) # (GND)))))
-- \Add0~23\ = CARRY((\A_bus[7]~input_o\ & (!\Add0~21_combout\ & !\Add0~20\)) # (!\A_bus[7]~input_o\ & ((!\Add0~20\) # (!\Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A_bus[7]~input_o\,
	datab => \Add0~21_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X12_Y2_N28
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\ula_op[2]~input_o\ & (((!\A_bus[7]~input_o\)) # (!\ula_op[0]~input_o\))) # (!\ula_op[2]~input_o\ & (\ula_op[1]~input_o\ & (\ula_op[0]~input_o\ $ (\A_bus[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_op[0]~input_o\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \A_bus[7]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X12_Y2_N30
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~0_combout\ & ((\B_bus[7]~input_o\) # ((!\Mux1~1_combout\)))) # (!\Mux1~0_combout\ & (((\Add0~22_combout\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \B_bus[7]~input_o\,
	datac => \Add0~22_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X6_Y2_N26
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux5~2_combout\ & (!\Mux4~2_combout\ & (!\Mux3~2_combout\ & !\Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux3~2_combout\,
	datad => \Mux2~2_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X12_Y2_N24
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux6~2_combout\ & (!\Mux8~2_combout\ & !\Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux7~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X12_Y2_N2
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (!\Mux1~2_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Mux1~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X5_Y2_N16
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = !\Add0~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~23\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X6_Y2_N4
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\ula_op[2]~input_o\ & ((\ula_op[1]~input_o\ & ((!\ula_op[0]~input_o\))) # (!\ula_op[1]~input_o\ & (\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \ula_op[1]~input_o\,
	datac => \ula_op[2]~input_o\,
	datad => \ula_op[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X12_Y2_N4
\v_inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \v_inst~0_combout\ = (\B_bus[7]~input_o\ & ((\Mux1~2_combout\) # (!\A_bus[7]~input_o\))) # (!\B_bus[7]~input_o\ & ((\A_bus[7]~input_o\) # (!\Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_bus[7]~input_o\,
	datac => \Mux1~2_combout\,
	datad => \A_bus[7]~input_o\,
	combout => \v_inst~0_combout\);

ww_C_Bus(0) <= \C_Bus[0]~output_o\;

ww_C_Bus(1) <= \C_Bus[1]~output_o\;

ww_C_Bus(2) <= \C_Bus[2]~output_o\;

ww_C_Bus(3) <= \C_Bus[3]~output_o\;

ww_C_Bus(4) <= \C_Bus[4]~output_o\;

ww_C_Bus(5) <= \C_Bus[5]~output_o\;

ww_C_Bus(6) <= \C_Bus[6]~output_o\;

ww_C_Bus(7) <= \C_Bus[7]~output_o\;

ww_n_inst <= \n_inst~output_o\;

ww_z_inst <= \z_inst~output_o\;

ww_c_inst <= \c_inst~output_o\;

ww_v_inst <= \v_inst~output_o\;
END structure;


