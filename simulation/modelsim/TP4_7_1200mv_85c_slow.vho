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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/03/2019 10:22:11"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Affichage7Segment IS
    PORT (
	ok : OUT std_logic;
	CLOCK_50 : IN std_logic;
	\constant\ : OUT std_logic_vector(2 DOWNTO 0);
	cpteur : OUT std_logic_vector(2 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(5 DOWNTO 0)
	);
END Affichage7Segment;

-- Design Ports Information
-- ok	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- constant[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- constant[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- constant[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpteur[2]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpteur[1]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpteur[0]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Affichage7Segment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ok : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \ww_constant\ : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cpteur : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(5 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ok~output_o\ : std_logic;
SIGNAL \constant[2]~output_o\ : std_logic;
SIGNAL \constant[1]~output_o\ : std_logic;
SIGNAL \constant[0]~output_o\ : std_logic;
SIGNAL \cpteur[2]~output_o\ : std_logic;
SIGNAL \cpteur[1]~output_o\ : std_logic;
SIGNAL \cpteur[0]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|compteur~9_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|compteur~7_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|compteur~6_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|compteur~8_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|compteur~10_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|compteur~11_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|compteur~12_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|compteur~13_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|compteur~14_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|compteur~15_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|compteur~16_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|compteur~17_combout\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|OK~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst1|etatFutur.ETAT1~0_combout\ : std_logic;
SIGNAL \inst1|etatPresent.ETAT1~q\ : std_logic;
SIGNAL \inst1|etatFutur.ETAT2~0_combout\ : std_logic;
SIGNAL \inst1|etatPresent.ETAT2~q\ : std_logic;
SIGNAL \inst1|etatFutur.ETAT0~1_combout\ : std_logic;
SIGNAL \inst1|etatFutur.ETAT3~0_combout\ : std_logic;
SIGNAL \inst1|etatFutur.ETAT3~1_combout\ : std_logic;
SIGNAL \inst1|etatPresent.ETAT3~q\ : std_logic;
SIGNAL \inst1|etatFutur.ETAT0~0_combout\ : std_logic;
SIGNAL \inst1|etatFutur.ETAT0~2_combout\ : std_logic;
SIGNAL \inst1|etatPresent.ETAT0~q\ : std_logic;
SIGNAL \inst1|process_1~0_combout\ : std_logic;
SIGNAL \inst8|inst1|tmp[0]~3_combout\ : std_logic;
SIGNAL \inst8|inst2|EGAL~0_combout\ : std_logic;
SIGNAL \inst8|inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst8|inst1|tmp~2_combout\ : std_logic;
SIGNAL \inst8|inst1|tmp[2]~0_combout\ : std_logic;
SIGNAL \inst8|inst1|tmp[2]~1_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst|Mux5~5_combout\ : std_logic;
SIGNAL \inst8|inst1|tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|compteur\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux5~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ok <= ww_ok;
ww_CLOCK_50 <= CLOCK_50;
\constant\ <= \ww_constant\;
cpteur <= ww_cpteur;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst|ALT_INV_Mux5~5_combout\ <= NOT \inst|Mux5~5_combout\;
\inst|ALT_INV_Mux5~4_combout\ <= NOT \inst|Mux5~4_combout\;
\inst|ALT_INV_Mux5~3_combout\ <= NOT \inst|Mux5~3_combout\;
\inst|ALT_INV_Mux5~2_combout\ <= NOT \inst|Mux5~2_combout\;
\inst|ALT_INV_Mux5~1_combout\ <= NOT \inst|Mux5~1_combout\;
\inst|ALT_INV_Mux5~0_combout\ <= NOT \inst|Mux5~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y66_N23
\ok~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OK~q\,
	devoe => ww_devoe,
	o => \ok~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\constant[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \constant[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\constant[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \constant[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\constant[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \constant[0]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\cpteur[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|tmp\(2),
	devoe => ww_devoe,
	o => \cpteur[2]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\cpteur[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|tmp\(1),
	devoe => ww_devoe,
	o => \cpteur[1]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\cpteur[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst1|tmp\(0),
	devoe => ww_devoe,
	o => \cpteur[0]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux5~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux5~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux5~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux5~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux5~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y67_N8
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|compteur\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|compteur\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: FF_X112_Y67_N9
\inst3|compteur[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(0));

-- Location: LCCOMB_X112_Y67_N10
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|compteur\(1) & (!\inst3|Add0~1\)) # (!\inst3|compteur\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|compteur\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X112_Y67_N6
\inst3|compteur~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~9_combout\ = (\inst3|Add0~2_combout\ & (((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|compteur~9_combout\);

-- Location: FF_X112_Y67_N7
\inst3|compteur[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(1));

-- Location: LCCOMB_X112_Y67_N12
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|compteur\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|compteur\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|compteur\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X112_Y67_N2
\inst3|compteur~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~7_combout\ = (\inst3|Add0~4_combout\ & (((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Add0~4_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|compteur~7_combout\);

-- Location: FF_X112_Y67_N3
\inst3|compteur[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(2));

-- Location: LCCOMB_X112_Y67_N14
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|compteur\(3) & (!\inst3|Add0~5\)) # (!\inst3|compteur\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|compteur\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: FF_X112_Y67_N15
\inst3|compteur[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(3));

-- Location: LCCOMB_X112_Y67_N16
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|compteur\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|compteur\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|compteur\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X112_Y67_N0
\inst3|compteur~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~6_combout\ = (\inst3|Add0~8_combout\ & (((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Add0~8_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|compteur~6_combout\);

-- Location: FF_X112_Y67_N1
\inst3|compteur[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(4));

-- Location: LCCOMB_X112_Y67_N18
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|compteur\(5) & (!\inst3|Add0~9\)) # (!\inst3|compteur\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|compteur\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: FF_X112_Y67_N19
\inst3|compteur[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(5));

-- Location: LCCOMB_X112_Y67_N20
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|compteur\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|compteur\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|compteur\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: FF_X112_Y67_N21
\inst3|compteur[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(6));

-- Location: LCCOMB_X113_Y67_N30
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (!\inst3|compteur\(3) & (!\inst3|compteur\(5) & (\inst3|compteur\(4) & !\inst3|compteur\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(3),
	datab => \inst3|compteur\(5),
	datac => \inst3|compteur\(4),
	datad => \inst3|compteur\(6),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y67_N22
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|compteur\(7) & (!\inst3|Add0~13\)) # (!\inst3|compteur\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|compteur\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: FF_X112_Y67_N23
\inst3|compteur[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(7));

-- Location: LCCOMB_X112_Y67_N24
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|compteur\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|compteur\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|compteur\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: FF_X112_Y67_N25
\inst3|compteur[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(8));

-- Location: LCCOMB_X112_Y67_N26
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|compteur\(9) & (!\inst3|Add0~17\)) # (!\inst3|compteur\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|compteur\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: FF_X112_Y67_N27
\inst3|compteur[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(9));

-- Location: LCCOMB_X112_Y67_N28
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|compteur\(10) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|compteur\(10) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|compteur\(10) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: FF_X112_Y67_N29
\inst3|compteur[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(10));

-- Location: LCCOMB_X112_Y67_N30
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|compteur\(11) & (!\inst3|Add0~21\)) # (!\inst3|compteur\(11) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|compteur\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X112_Y67_N4
\inst3|compteur~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~8_combout\ = (\inst3|Add0~22_combout\ & (((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Add0~22_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|compteur~8_combout\);

-- Location: FF_X112_Y67_N5
\inst3|compteur[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(11));

-- Location: LCCOMB_X112_Y66_N0
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|compteur\(12) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|compteur\(12) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|compteur\(12) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: FF_X112_Y66_N1
\inst3|compteur[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(12));

-- Location: LCCOMB_X112_Y66_N2
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|compteur\(13) & (!\inst3|Add0~25\)) # (!\inst3|compteur\(13) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|compteur\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X113_Y66_N6
\inst3|compteur~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~10_combout\ = (\inst3|Add0~26_combout\ & (((!\inst3|Equal0~5_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~4_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~5_combout\,
	datad => \inst3|Add0~26_combout\,
	combout => \inst3|compteur~10_combout\);

-- Location: FF_X113_Y66_N7
\inst3|compteur[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(13));

-- Location: LCCOMB_X112_Y66_N4
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|compteur\(14) & (\inst3|Add0~27\ $ (GND))) # (!\inst3|compteur\(14) & (!\inst3|Add0~27\ & VCC))
-- \inst3|Add0~29\ = CARRY((\inst3|compteur\(14) & !\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: FF_X112_Y66_N5
\inst3|compteur[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(14));

-- Location: LCCOMB_X112_Y66_N6
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|compteur\(15) & (!\inst3|Add0~29\)) # (!\inst3|compteur\(15) & ((\inst3|Add0~29\) # (GND)))
-- \inst3|Add0~31\ = CARRY((!\inst3|Add0~29\) # (!\inst3|compteur\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: FF_X112_Y66_N7
\inst3|compteur[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(15));

-- Location: LCCOMB_X113_Y66_N0
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|compteur\(12) & (!\inst3|compteur\(14) & (!\inst3|compteur\(15) & \inst3|compteur\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(12),
	datab => \inst3|compteur\(14),
	datac => \inst3|compteur\(15),
	datad => \inst3|compteur\(13),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y67_N4
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|compteur\(9) & (!\inst3|compteur\(8) & (!\inst3|compteur\(10) & !\inst3|compteur\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(9),
	datab => \inst3|compteur\(8),
	datac => \inst3|compteur\(10),
	datad => \inst3|compteur\(7),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y67_N8
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (\inst3|compteur\(0) & (!\inst3|compteur\(1) & (\inst3|compteur\(11) & \inst3|compteur\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(0),
	datab => \inst3|compteur\(1),
	datac => \inst3|compteur\(11),
	datad => \inst3|compteur\(2),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y66_N18
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~1_combout\ & (\inst3|Equal0~3_combout\ & (\inst3|Equal0~0_combout\ & \inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~1_combout\,
	datab => \inst3|Equal0~3_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~2_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y66_N8
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|compteur\(16) & (\inst3|Add0~31\ $ (GND))) # (!\inst3|compteur\(16) & (!\inst3|Add0~31\ & VCC))
-- \inst3|Add0~33\ = CARRY((\inst3|compteur\(16) & !\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X113_Y66_N20
\inst3|compteur~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~11_combout\ = (\inst3|Add0~32_combout\ & (((!\inst3|Equal0~5_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~4_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~5_combout\,
	datad => \inst3|Add0~32_combout\,
	combout => \inst3|compteur~11_combout\);

-- Location: FF_X113_Y66_N21
\inst3|compteur[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(16));

-- Location: LCCOMB_X112_Y66_N10
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|compteur\(17) & (!\inst3|Add0~33\)) # (!\inst3|compteur\(17) & ((\inst3|Add0~33\) # (GND)))
-- \inst3|Add0~35\ = CARRY((!\inst3|Add0~33\) # (!\inst3|compteur\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X113_Y66_N30
\inst3|compteur~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~12_combout\ = (\inst3|Add0~34_combout\ & (((!\inst3|Equal0~5_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~4_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~5_combout\,
	datad => \inst3|Add0~34_combout\,
	combout => \inst3|compteur~12_combout\);

-- Location: FF_X113_Y66_N31
\inst3|compteur[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(17));

-- Location: LCCOMB_X112_Y66_N12
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|compteur\(18) & (\inst3|Add0~35\ $ (GND))) # (!\inst3|compteur\(18) & (!\inst3|Add0~35\ & VCC))
-- \inst3|Add0~37\ = CARRY((\inst3|compteur\(18) & !\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X113_Y66_N24
\inst3|compteur~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~13_combout\ = (\inst3|Add0~36_combout\ & (((!\inst3|Equal0~5_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~4_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~5_combout\,
	datad => \inst3|Add0~36_combout\,
	combout => \inst3|compteur~13_combout\);

-- Location: FF_X113_Y66_N25
\inst3|compteur[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(18));

-- Location: LCCOMB_X112_Y66_N14
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|compteur\(19) & (!\inst3|Add0~37\)) # (!\inst3|compteur\(19) & ((\inst3|Add0~37\) # (GND)))
-- \inst3|Add0~39\ = CARRY((!\inst3|Add0~37\) # (!\inst3|compteur\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X112_Y66_N28
\inst3|compteur~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~14_combout\ = (\inst3|Add0~38_combout\ & (((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Add0~38_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|compteur~14_combout\);

-- Location: FF_X112_Y66_N29
\inst3|compteur[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(19));

-- Location: LCCOMB_X113_Y66_N14
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (\inst3|compteur\(17) & (\inst3|compteur\(19) & (\inst3|compteur\(16) & \inst3|compteur\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(17),
	datab => \inst3|compteur\(19),
	datac => \inst3|compteur\(16),
	datad => \inst3|compteur\(18),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X112_Y66_N16
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|compteur\(20) & (\inst3|Add0~39\ $ (GND))) # (!\inst3|compteur\(20) & (!\inst3|Add0~39\ & VCC))
-- \inst3|Add0~41\ = CARRY((\inst3|compteur\(20) & !\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X112_Y66_N26
\inst3|compteur~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~15_combout\ = (\inst3|Add0~40_combout\ & (((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~4_combout\,
	datad => \inst3|Add0~40_combout\,
	combout => \inst3|compteur~15_combout\);

-- Location: FF_X112_Y66_N27
\inst3|compteur[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(20));

-- Location: LCCOMB_X112_Y66_N18
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|compteur\(21) & (!\inst3|Add0~41\)) # (!\inst3|compteur\(21) & ((\inst3|Add0~41\) # (GND)))
-- \inst3|Add0~43\ = CARRY((!\inst3|Add0~41\) # (!\inst3|compteur\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|compteur\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X112_Y66_N24
\inst3|compteur~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~16_combout\ = (\inst3|Add0~42_combout\ & (((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~4_combout\,
	datad => \inst3|Add0~42_combout\,
	combout => \inst3|compteur~16_combout\);

-- Location: FF_X112_Y66_N25
\inst3|compteur[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(21));

-- Location: LCCOMB_X112_Y66_N20
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = (\inst3|compteur\(22) & (\inst3|Add0~43\ $ (GND))) # (!\inst3|compteur\(22) & (!\inst3|Add0~43\ & VCC))
-- \inst3|Add0~45\ = CARRY((\inst3|compteur\(22) & !\inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(22),
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: LCCOMB_X112_Y66_N30
\inst3|compteur~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|compteur~17_combout\ = (\inst3|Add0~44_combout\ & (((!\inst3|Equal0~4_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~5_combout\,
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~4_combout\,
	datad => \inst3|Add0~44_combout\,
	combout => \inst3|compteur~17_combout\);

-- Location: FF_X112_Y66_N31
\inst3|compteur[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|compteur~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(22));

-- Location: LCCOMB_X112_Y66_N22
\inst3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = \inst3|compteur\(23) $ (\inst3|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(23),
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\);

-- Location: FF_X112_Y66_N23
\inst3|compteur[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|compteur\(23));

-- Location: LCCOMB_X113_Y66_N16
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (\inst3|compteur\(22) & (!\inst3|compteur\(23) & (\inst3|compteur\(20) & \inst3|compteur\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|compteur\(22),
	datab => \inst3|compteur\(23),
	datac => \inst3|compteur\(20),
	datad => \inst3|compteur\(21),
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X113_Y66_N28
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (\inst3|Equal0~6_combout\ & (\inst3|Equal0~5_combout\ & \inst3|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~6_combout\,
	datac => \inst3|Equal0~5_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|Equal0~7_combout\);

-- Location: FF_X113_Y66_N29
\inst3|OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|OK~q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y66_N20
\inst1|etatFutur.ETAT1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|etatFutur.ETAT1~0_combout\ = (\inst3|OK~q\ & (!\KEY[0]~input_o\ & ((\inst1|etatPresent.ETAT1~q\) # (!\inst1|etatPresent.ETAT0~q\)))) # (!\inst3|OK~q\ & (((\inst1|etatPresent.ETAT1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst1|etatPresent.ETAT0~q\,
	datac => \inst1|etatPresent.ETAT1~q\,
	datad => \inst3|OK~q\,
	combout => \inst1|etatFutur.ETAT1~0_combout\);

-- Location: FF_X114_Y66_N21
\inst1|etatPresent.ETAT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|etatFutur.ETAT1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|etatPresent.ETAT1~q\);

-- Location: LCCOMB_X114_Y66_N10
\inst1|etatFutur.ETAT2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|etatFutur.ETAT2~0_combout\ = (\inst3|OK~q\ & (\KEY[0]~input_o\ & ((\inst1|etatPresent.ETAT2~q\) # (\inst1|etatPresent.ETAT1~q\)))) # (!\inst3|OK~q\ & (((\inst1|etatPresent.ETAT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst3|OK~q\,
	datac => \inst1|etatPresent.ETAT2~q\,
	datad => \inst1|etatPresent.ETAT1~q\,
	combout => \inst1|etatFutur.ETAT2~0_combout\);

-- Location: FF_X114_Y66_N11
\inst1|etatPresent.ETAT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|etatFutur.ETAT2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|etatPresent.ETAT2~q\);

-- Location: LCCOMB_X114_Y66_N22
\inst1|etatFutur.ETAT0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|etatFutur.ETAT0~1_combout\ = (\inst1|etatPresent.ETAT0~q\ & ((\inst1|etatPresent.ETAT2~q\) # ((\inst1|etatPresent.ETAT1~q\)))) # (!\inst1|etatPresent.ETAT0~q\ & (((!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|etatPresent.ETAT2~q\,
	datab => \inst1|etatPresent.ETAT1~q\,
	datac => \inst1|etatPresent.ETAT0~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst1|etatFutur.ETAT0~1_combout\);

-- Location: LCCOMB_X114_Y66_N14
\inst1|etatFutur.ETAT3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|etatFutur.ETAT3~0_combout\ = (\inst1|etatPresent.ETAT2~q\ & (!\inst1|etatPresent.ETAT1~q\ & (\inst1|etatPresent.ETAT0~q\ & !\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|etatPresent.ETAT2~q\,
	datab => \inst1|etatPresent.ETAT1~q\,
	datac => \inst1|etatPresent.ETAT0~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst1|etatFutur.ETAT3~0_combout\);

-- Location: LCCOMB_X114_Y66_N2
\inst1|etatFutur.ETAT3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|etatFutur.ETAT3~1_combout\ = (\inst1|etatFutur.ETAT3~0_combout\) # ((\inst1|etatFutur.ETAT0~0_combout\ & (!\inst1|etatPresent.ETAT1~q\ & !\inst1|etatPresent.ETAT2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|etatFutur.ETAT0~0_combout\,
	datab => \inst1|etatPresent.ETAT1~q\,
	datac => \inst1|etatFutur.ETAT3~0_combout\,
	datad => \inst1|etatPresent.ETAT2~q\,
	combout => \inst1|etatFutur.ETAT3~1_combout\);

-- Location: FF_X114_Y66_N3
\inst1|etatPresent.ETAT3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|etatFutur.ETAT3~1_combout\,
	ena => \inst3|OK~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|etatPresent.ETAT3~q\);

-- Location: LCCOMB_X114_Y66_N12
\inst1|etatFutur.ETAT0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|etatFutur.ETAT0~0_combout\ = (\inst1|etatPresent.ETAT0~q\ & (\inst1|etatPresent.ETAT3~q\ & ((!\inst3|OK~q\) # (!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst3|OK~q\,
	datac => \inst1|etatPresent.ETAT0~q\,
	datad => \inst1|etatPresent.ETAT3~q\,
	combout => \inst1|etatFutur.ETAT0~0_combout\);

-- Location: LCCOMB_X114_Y66_N8
\inst1|etatFutur.ETAT0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|etatFutur.ETAT0~2_combout\ = (\inst1|etatFutur.ETAT0~1_combout\) # (\inst1|etatFutur.ETAT0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|etatFutur.ETAT0~1_combout\,
	datad => \inst1|etatFutur.ETAT0~0_combout\,
	combout => \inst1|etatFutur.ETAT0~2_combout\);

-- Location: FF_X114_Y66_N9
\inst1|etatPresent.ETAT0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst1|etatFutur.ETAT0~2_combout\,
	ena => \inst3|OK~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|etatPresent.ETAT0~q\);

-- Location: LCCOMB_X114_Y66_N18
\inst1|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~0_combout\ = (\inst1|etatPresent.ETAT3~q\) # (!\inst1|etatPresent.ETAT0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|etatPresent.ETAT0~q\,
	datad => \inst1|etatPresent.ETAT3~q\,
	combout => \inst1|process_1~0_combout\);

-- Location: LCCOMB_X113_Y66_N26
\inst8|inst1|tmp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|tmp[0]~3_combout\ = (\inst8|inst2|EGAL~0_combout\ & (((\inst1|process_1~0_combout\)))) # (!\inst8|inst2|EGAL~0_combout\ & (\inst3|OK~q\ $ ((\inst8|inst1|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|EGAL~0_combout\,
	datab => \inst3|OK~q\,
	datac => \inst8|inst1|tmp\(0),
	datad => \inst1|process_1~0_combout\,
	combout => \inst8|inst1|tmp[0]~3_combout\);

-- Location: FF_X113_Y66_N27
\inst8|inst1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|inst1|tmp[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|tmp\(0));

-- Location: LCCOMB_X114_Y66_N4
\inst8|inst2|EGAL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst2|EGAL~0_combout\ = (!\inst8|inst1|tmp\(0) & ((\inst8|inst1|tmp\(1) & (\inst8|inst1|tmp\(2) & !\inst1|process_1~0_combout\)) # (!\inst8|inst1|tmp\(1) & (!\inst8|inst1|tmp\(2) & \inst1|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|tmp\(1),
	datab => \inst8|inst1|tmp\(2),
	datac => \inst8|inst1|tmp\(0),
	datad => \inst1|process_1~0_combout\,
	combout => \inst8|inst2|EGAL~0_combout\);

-- Location: LCCOMB_X114_Y66_N16
\inst8|inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|Add0~0_combout\ = \inst8|inst1|tmp\(1) $ (\inst8|inst1|tmp\(0) $ (((\inst1|etatPresent.ETAT3~q\) # (!\inst1|etatPresent.ETAT0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|tmp\(1),
	datab => \inst1|etatPresent.ETAT0~q\,
	datac => \inst8|inst1|tmp\(0),
	datad => \inst1|etatPresent.ETAT3~q\,
	combout => \inst8|inst1|Add0~0_combout\);

-- Location: LCCOMB_X114_Y66_N6
\inst8|inst1|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|tmp~2_combout\ = (!\inst8|inst2|EGAL~0_combout\ & ((\inst3|OK~q\ & ((\inst8|inst1|Add0~0_combout\))) # (!\inst3|OK~q\ & (\inst8|inst1|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|EGAL~0_combout\,
	datab => \inst3|OK~q\,
	datac => \inst8|inst1|tmp\(1),
	datad => \inst8|inst1|Add0~0_combout\,
	combout => \inst8|inst1|tmp~2_combout\);

-- Location: FF_X114_Y66_N7
\inst8|inst1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|inst1|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|tmp\(1));

-- Location: LCCOMB_X114_Y66_N26
\inst8|inst1|tmp[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|tmp[2]~0_combout\ = (\inst3|OK~q\ & ((\inst8|inst1|tmp\(1) & (\inst8|inst1|tmp\(0) & !\inst1|process_1~0_combout\)) # (!\inst8|inst1|tmp\(1) & (!\inst8|inst1|tmp\(0) & \inst1|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|tmp\(1),
	datab => \inst3|OK~q\,
	datac => \inst8|inst1|tmp\(0),
	datad => \inst1|process_1~0_combout\,
	combout => \inst8|inst1|tmp[2]~0_combout\);

-- Location: LCCOMB_X114_Y66_N28
\inst8|inst1|tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst1|tmp[2]~1_combout\ = (\inst8|inst2|EGAL~0_combout\ & (((\inst1|process_1~0_combout\)))) # (!\inst8|inst2|EGAL~0_combout\ & (\inst8|inst1|tmp[2]~0_combout\ $ ((\inst8|inst1|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|tmp[2]~0_combout\,
	datab => \inst8|inst2|EGAL~0_combout\,
	datac => \inst8|inst1|tmp\(2),
	datad => \inst1|process_1~0_combout\,
	combout => \inst8|inst1|tmp[2]~1_combout\);

-- Location: FF_X114_Y66_N29
\inst8|inst1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst8|inst1|tmp[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1|tmp\(2));

-- Location: LCCOMB_X114_Y66_N0
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst8|inst1|tmp\(2) & (\inst8|inst1|tmp\(0) & !\inst8|inst1|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|tmp\(2),
	datac => \inst8|inst1|tmp\(0),
	datad => \inst8|inst1|tmp\(1),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y66_N30
\inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst8|inst1|tmp\(2) & (!\inst8|inst1|tmp\(0) & !\inst8|inst1|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|tmp\(2),
	datac => \inst8|inst1|tmp\(0),
	datad => \inst8|inst1|tmp\(1),
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X114_Y66_N24
\inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (!\inst8|inst1|tmp\(2) & (\inst8|inst1|tmp\(0) & \inst8|inst1|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst1|tmp\(2),
	datac => \inst8|inst1|tmp\(0),
	datad => \inst8|inst1|tmp\(1),
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X113_Y66_N8
\inst|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = (!\inst8|inst1|tmp\(0) & (!\inst8|inst1|tmp\(2) & \inst8|inst1|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|tmp\(0),
	datac => \inst8|inst1|tmp\(2),
	datad => \inst8|inst1|tmp\(1),
	combout => \inst|Mux5~3_combout\);

-- Location: LCCOMB_X113_Y66_N22
\inst|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = (\inst8|inst1|tmp\(0) & (!\inst8|inst1|tmp\(2) & !\inst8|inst1|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|tmp\(0),
	datac => \inst8|inst1|tmp\(2),
	datad => \inst8|inst1|tmp\(1),
	combout => \inst|Mux5~4_combout\);

-- Location: LCCOMB_X113_Y66_N12
\inst|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~5_combout\ = (!\inst8|inst1|tmp\(0) & (!\inst8|inst1|tmp\(2) & !\inst8|inst1|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst1|tmp\(0),
	datac => \inst8|inst1|tmp\(2),
	datad => \inst8|inst1|tmp\(1),
	combout => \inst|Mux5~5_combout\);

ww_ok <= \ok~output_o\;

\ww_constant\(2) <= \constant[2]~output_o\;

\ww_constant\(1) <= \constant[1]~output_o\;

\ww_constant\(0) <= \constant[0]~output_o\;

ww_cpteur(2) <= \cpteur[2]~output_o\;

ww_cpteur(1) <= \cpteur[1]~output_o\;

ww_cpteur(0) <= \cpteur[0]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;
END structure;


