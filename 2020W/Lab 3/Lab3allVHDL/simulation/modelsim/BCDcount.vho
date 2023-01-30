-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/14/2021 01:49:55"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCDCOUNT IS
    PORT (
	KEY0 : IN std_logic;
	KEY1 : IN std_logic;
	KEY2 : IN std_logic;
	KEY3 : IN std_logic;
	CLK_50 : IN std_logic;
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	SW3 : IN std_logic;
	SW4 : IN std_logic;
	SW5 : IN std_logic;
	SW6 : IN std_logic;
	SW7 : IN std_logic;
	MODE24 : IN std_logic;
	CLK_ON : IN std_logic;
	LEDR9 : BUFFER std_logic;
	LEDR8 : BUFFER std_logic;
	MSD5 : OUT std_logic_vector(0 TO 6);
	LSD4 : OUT std_logic_vector(0 TO 6);
	MSD3 : OUT std_logic_vector(0 TO 6);
	LSD2 : OUT std_logic_vector(0 TO 6);
	MSD1 : OUT std_logic_vector(0 TO 6);
	LSD0 : OUT std_logic_vector(0 TO 6)
	);
END BCDCOUNT;

-- Design Ports Information
-- LEDR9	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR8	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- MSD1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LSD0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLK_ON	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MODE24	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY3	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW6	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW7	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY2	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY1	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW4	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW5	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW1	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW2	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW0	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW3	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BCDCOUNT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_SW5 : std_logic;
SIGNAL ww_SW6 : std_logic;
SIGNAL ww_SW7 : std_logic;
SIGNAL ww_MODE24 : std_logic;
SIGNAL ww_CLK_ON : std_logic;
SIGNAL ww_LEDR9 : std_logic;
SIGNAL ww_LEDR8 : std_logic;
SIGNAL ww_MSD5 : std_logic_vector(0 TO 6);
SIGNAL ww_LSD4 : std_logic_vector(0 TO 6);
SIGNAL ww_MSD3 : std_logic_vector(0 TO 6);
SIGNAL ww_LSD2 : std_logic_vector(0 TO 6);
SIGNAL ww_MSD1 : std_logic_vector(0 TO 6);
SIGNAL ww_LSD0 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK_50~input_o\ : std_logic;
SIGNAL \CLK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \CLK_ON~input_o\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \ClkFlag~0_combout\ : std_logic;
SIGNAL \ClkFlag~q\ : std_logic;
SIGNAL \PM~0_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \LowDigit0[3]~20_combout\ : std_logic;
SIGNAL \SW6~input_o\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \SW7~input_o\ : std_logic;
SIGNAL \HighDigit2~30_combout\ : std_logic;
SIGNAL \HighDigit2[3]~13_combout\ : std_logic;
SIGNAL \MODE24~input_o\ : std_logic;
SIGNAL \SW5~input_o\ : std_logic;
SIGNAL \HighDigit2~34_combout\ : std_logic;
SIGNAL \HighDigit2[1]~5_combout\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \HighDigit2~33_combout\ : std_logic;
SIGNAL \HighDigit2[0]~1_combout\ : std_logic;
SIGNAL \HighDigit2[2]~32_combout\ : std_logic;
SIGNAL \HighDigit2[2]~31_combout\ : std_logic;
SIGNAL \HighDigit2[0]~3_combout\ : std_logic;
SIGNAL \HighDigit2[0]~0_combout\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \LowDigit2~37_combout\ : std_logic;
SIGNAL \LowDigit2[3]~13_combout\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \LowDigit2~34_combout\ : std_logic;
SIGNAL \LowDigit2[2]~9_combout\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \HighDigit1~27_combout\ : std_logic;
SIGNAL \HighDigit1[1]~5_combout\ : std_logic;
SIGNAL \HighDigit1~25_combout\ : std_logic;
SIGNAL \HighDigit1[3]~13_combout\ : std_logic;
SIGNAL \HighDigit1~28_combout\ : std_logic;
SIGNAL \HighDigit1[2]~9_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \HighDigit1[2]~11_combout\ : std_logic;
SIGNAL \LowDigit1~29_combout\ : std_logic;
SIGNAL \LowDigit1[2]~9_combout\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \LowDigit1~28_combout\ : std_logic;
SIGNAL \LowDigit1[1]~5_combout\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \HighDigit0~27_combout\ : std_logic;
SIGNAL \HighDigit0[1]~5_combout\ : std_logic;
SIGNAL \HighDigit0~25_combout\ : std_logic;
SIGNAL \HighDigit0[3]~13_combout\ : std_logic;
SIGNAL \LowDigit0~27_combout\ : std_logic;
SIGNAL \LowDigit0[2]~9_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \LowDigit0~25_combout\ : std_logic;
SIGNAL \LowDigit0[0]~1_combout\ : std_logic;
SIGNAL \LowDigit0[0]~3_combout\ : std_logic;
SIGNAL \LowDigit0[0]~_emulated_q\ : std_logic;
SIGNAL \LowDigit0[0]~2_combout\ : std_logic;
SIGNAL \LowDigit0[2]~11_combout\ : std_logic;
SIGNAL \LowDigit0[2]~_emulated_q\ : std_logic;
SIGNAL \LowDigit0[2]~10_combout\ : std_logic;
SIGNAL \LowDigit0~28_combout\ : std_logic;
SIGNAL \LowDigit0[3]~13_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \LowDigit0[3]~15_combout\ : std_logic;
SIGNAL \LowDigit0[3]~_emulated_q\ : std_logic;
SIGNAL \LowDigit0[3]~14_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LowDigit0~26_combout\ : std_logic;
SIGNAL \LowDigit0[1]~5_combout\ : std_logic;
SIGNAL \LowDigit0[1]~7_combout\ : std_logic;
SIGNAL \LowDigit0[1]~_emulated_q\ : std_logic;
SIGNAL \LowDigit0[1]~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \HighDigit0~28_combout\ : std_logic;
SIGNAL \HighDigit0[2]~9_combout\ : std_logic;
SIGNAL \HighDigit0[2]~11_combout\ : std_logic;
SIGNAL \HighDigit0[2]~_emulated_q\ : std_logic;
SIGNAL \HighDigit0[2]~10_combout\ : std_logic;
SIGNAL \HighDigit0[3]~24_combout\ : std_logic;
SIGNAL \HighDigit0[3]~15_combout\ : std_logic;
SIGNAL \HighDigit0[3]~_emulated_q\ : std_logic;
SIGNAL \HighDigit0[3]~14_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \HighDigit0[1]~7_combout\ : std_logic;
SIGNAL \HighDigit0[1]~_emulated_q\ : std_logic;
SIGNAL \HighDigit0[1]~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \HighDigit0~26_combout\ : std_logic;
SIGNAL \HighDigit0[0]~1_combout\ : std_logic;
SIGNAL \HighDigit0[0]~3_combout\ : std_logic;
SIGNAL \HighDigit0[0]~_emulated_q\ : std_logic;
SIGNAL \HighDigit0[0]~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \LowDigit1[3]~26_combout\ : std_logic;
SIGNAL \LowDigit1[1]~27_combout\ : std_logic;
SIGNAL \LowDigit1[1]~7_combout\ : std_logic;
SIGNAL \LowDigit1[1]~_emulated_q\ : std_logic;
SIGNAL \LowDigit1[1]~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \LowDigit1[2]~11_combout\ : std_logic;
SIGNAL \LowDigit1[2]~_emulated_q\ : std_logic;
SIGNAL \LowDigit1[2]~10_combout\ : std_logic;
SIGNAL \LowDigit1~31_combout\ : std_logic;
SIGNAL \LowDigit1[3]~13_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \LowDigit1[3]~30_combout\ : std_logic;
SIGNAL \LowDigit1[3]~15_combout\ : std_logic;
SIGNAL \LowDigit1[3]~_emulated_q\ : std_logic;
SIGNAL \LowDigit1[3]~14_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LowDigit1~25_combout\ : std_logic;
SIGNAL \LowDigit1[0]~1_combout\ : std_logic;
SIGNAL \LowDigit1~24_combout\ : std_logic;
SIGNAL \LowDigit1[0]~3_combout\ : std_logic;
SIGNAL \LowDigit1[0]~_emulated_q\ : std_logic;
SIGNAL \LowDigit1[0]~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \HighDigit1[2]~_emulated_q\ : std_logic;
SIGNAL \HighDigit1[2]~10_combout\ : std_logic;
SIGNAL \HighDigit1[3]~24_combout\ : std_logic;
SIGNAL \HighDigit1[3]~15_combout\ : std_logic;
SIGNAL \HighDigit1[3]~_emulated_q\ : std_logic;
SIGNAL \HighDigit1[3]~14_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \HighDigit1[1]~7_combout\ : std_logic;
SIGNAL \HighDigit1[1]~_emulated_q\ : std_logic;
SIGNAL \HighDigit1[1]~6_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \HighDigit1~26_combout\ : std_logic;
SIGNAL \HighDigit1[0]~1_combout\ : std_logic;
SIGNAL \HighDigit1[0]~3_combout\ : std_logic;
SIGNAL \HighDigit1[0]~_emulated_q\ : std_logic;
SIGNAL \HighDigit1[0]~2_combout\ : std_logic;
SIGNAL \LowDigit2~26_combout\ : std_logic;
SIGNAL \LowDigit2~35_combout\ : std_logic;
SIGNAL \LowDigit2[0]~1_combout\ : std_logic;
SIGNAL \HighDigit2~20_combout\ : std_logic;
SIGNAL \LowDigit2~24_combout\ : std_logic;
SIGNAL \LowDigit2~27_combout\ : std_logic;
SIGNAL \LowDigit2[0]~3_combout\ : std_logic;
SIGNAL \LowDigit2[0]~_emulated_q\ : std_logic;
SIGNAL \LowDigit2[0]~2_combout\ : std_logic;
SIGNAL \LowDigit2[2]~33_combout\ : std_logic;
SIGNAL \LowDigit2[3]~28_combout\ : std_logic;
SIGNAL \LowDigit2[2]~11_combout\ : std_logic;
SIGNAL \LowDigit2[2]~_emulated_q\ : std_logic;
SIGNAL \LowDigit2[2]~10_combout\ : std_logic;
SIGNAL \LowDigit2[3]~36_combout\ : std_logic;
SIGNAL \LowDigit2[3]~15_combout\ : std_logic;
SIGNAL \LowDigit2[3]~_emulated_q\ : std_logic;
SIGNAL \LowDigit2[3]~14_combout\ : std_logic;
SIGNAL \LowDigit2~30_combout\ : std_logic;
SIGNAL \LowDigit2~29_combout\ : std_logic;
SIGNAL \LowDigit2~31_combout\ : std_logic;
SIGNAL \LowDigit2~32_combout\ : std_logic;
SIGNAL \LowDigit2[1]~5_combout\ : std_logic;
SIGNAL \LowDigit2~25_combout\ : std_logic;
SIGNAL \LowDigit2[1]~7_combout\ : std_logic;
SIGNAL \LowDigit2[1]~_emulated_q\ : std_logic;
SIGNAL \LowDigit2[1]~6_combout\ : std_logic;
SIGNAL \HighDigit2~27_combout\ : std_logic;
SIGNAL \HighDigit2[0]~_emulated_q\ : std_logic;
SIGNAL \HighDigit2[0]~2_combout\ : std_logic;
SIGNAL \HighDigit2[1]~7_combout\ : std_logic;
SIGNAL \HighDigit2[1]~_emulated_q\ : std_logic;
SIGNAL \HighDigit2[1]~6_combout\ : std_logic;
SIGNAL \HighDigit2[2]~26_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \HighDigit2[3]~15_combout\ : std_logic;
SIGNAL \HighDigit2[3]~_emulated_q\ : std_logic;
SIGNAL \HighDigit2[3]~14_combout\ : std_logic;
SIGNAL \HighDigit2~28_combout\ : std_logic;
SIGNAL \HighDigit2~29_combout\ : std_logic;
SIGNAL \HighDigit2[2]~9_combout\ : std_logic;
SIGNAL \HighDigit2[2]~11_combout\ : std_logic;
SIGNAL \HighDigit2[2]~_emulated_q\ : std_logic;
SIGNAL \HighDigit2[2]~10_combout\ : std_logic;
SIGNAL \LEDR9~0_combout\ : std_logic;
SIGNAL \LEDR9~1_combout\ : std_logic;
SIGNAL \PM~q\ : std_logic;
SIGNAL \LEDR9~reg0_q\ : std_logic;
SIGNAL \LEDR8~1_combout\ : std_logic;
SIGNAL \LEDR8~3_combout\ : std_logic;
SIGNAL \LEDR8~reg0_emulated_q\ : std_logic;
SIGNAL \LEDR8~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL Internal_Count : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_SW3~input_o\ : std_logic;
SIGNAL \ALT_INV_SW0~input_o\ : std_logic;
SIGNAL \ALT_INV_SW2~input_o\ : std_logic;
SIGNAL \ALT_INV_SW1~input_o\ : std_logic;
SIGNAL \ALT_INV_SW5~input_o\ : std_logic;
SIGNAL \ALT_INV_SW4~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY1~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY2~input_o\ : std_logic;
SIGNAL \ALT_INV_SW7~input_o\ : std_logic;
SIGNAL \ALT_INV_SW6~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY3~input_o\ : std_logic;
SIGNAL \ALT_INV_MODE24~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \ALT_INV_CLK_ON~input_o\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[3]~13_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR8~1_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0~28_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0~27_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0~26_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0~28_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0~27_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0~26_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1~31_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[3]~30_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1~29_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1~28_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[1]~27_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[3]~26_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1~24_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1~28_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1~27_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1~26_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~37_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[3]~36_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~35_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~34_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[2]~33_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~32_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~31_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~30_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~29_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[3]~28_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~27_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~26_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~25_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2~24_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2~34_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2~33_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[2]~32_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[2]~31_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit0~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[3]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit1[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit1~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[3]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit2~30_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~1_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit0[3]~20_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2~29_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2~28_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[2]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_LowDigit2[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[0]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit0[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit1[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[3]~14_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_HighDigit2[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_LEDR8~2_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR8~reg0_emulated_q\ : std_logic;
SIGNAL \ALT_INV_HighDigit2~20_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR9~0_combout\ : std_logic;
SIGNAL \ALT_INV_ClkFlag~q\ : std_logic;
SIGNAL \ALT_INV_PM~q\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL ALT_INV_Internal_Count : std_logic_vector(28 DOWNTO 0);

BEGIN

ww_KEY0 <= KEY0;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
ww_KEY3 <= KEY3;
ww_CLK_50 <= CLK_50;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
ww_SW3 <= SW3;
ww_SW4 <= SW4;
ww_SW5 <= SW5;
ww_SW6 <= SW6;
ww_SW7 <= SW7;
ww_MODE24 <= MODE24;
ww_CLK_ON <= CLK_ON;
LEDR9 <= ww_LEDR9;
LEDR8 <= ww_LEDR8;
MSD5 <= ww_MSD5;
LSD4 <= ww_LSD4;
MSD3 <= ww_MSD3;
LSD2 <= ww_LSD2;
MSD1 <= ww_MSD1;
LSD0 <= ww_LSD0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW3~input_o\ <= NOT \SW3~input_o\;
\ALT_INV_SW0~input_o\ <= NOT \SW0~input_o\;
\ALT_INV_SW2~input_o\ <= NOT \SW2~input_o\;
\ALT_INV_SW1~input_o\ <= NOT \SW1~input_o\;
\ALT_INV_SW5~input_o\ <= NOT \SW5~input_o\;
\ALT_INV_SW4~input_o\ <= NOT \SW4~input_o\;
\ALT_INV_KEY1~input_o\ <= NOT \KEY1~input_o\;
\ALT_INV_KEY2~input_o\ <= NOT \KEY2~input_o\;
\ALT_INV_SW7~input_o\ <= NOT \SW7~input_o\;
\ALT_INV_SW6~input_o\ <= NOT \SW6~input_o\;
\ALT_INV_KEY3~input_o\ <= NOT \KEY3~input_o\;
\ALT_INV_MODE24~input_o\ <= NOT \MODE24~input_o\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\ALT_INV_CLK_ON~input_o\ <= NOT \CLK_ON~input_o\;
\ALT_INV_LowDigit0[3]~13_combout\ <= NOT \LowDigit0[3]~13_combout\;
\ALT_INV_LowDigit0[2]~9_combout\ <= NOT \LowDigit0[2]~9_combout\;
\ALT_INV_LowDigit0[1]~5_combout\ <= NOT \LowDigit0[1]~5_combout\;
\ALT_INV_LowDigit0[0]~1_combout\ <= NOT \LowDigit0[0]~1_combout\;
\ALT_INV_HighDigit0[2]~9_combout\ <= NOT \HighDigit0[2]~9_combout\;
\ALT_INV_HighDigit0[1]~5_combout\ <= NOT \HighDigit0[1]~5_combout\;
\ALT_INV_HighDigit0[0]~1_combout\ <= NOT \HighDigit0[0]~1_combout\;
\ALT_INV_LowDigit1[3]~13_combout\ <= NOT \LowDigit1[3]~13_combout\;
\ALT_INV_LowDigit1[2]~9_combout\ <= NOT \LowDigit1[2]~9_combout\;
\ALT_INV_LowDigit1[1]~5_combout\ <= NOT \LowDigit1[1]~5_combout\;
\ALT_INV_LowDigit1[0]~1_combout\ <= NOT \LowDigit1[0]~1_combout\;
\ALT_INV_HighDigit1[2]~9_combout\ <= NOT \HighDigit1[2]~9_combout\;
\ALT_INV_HighDigit1[1]~5_combout\ <= NOT \HighDigit1[1]~5_combout\;
\ALT_INV_HighDigit1[0]~1_combout\ <= NOT \HighDigit1[0]~1_combout\;
\ALT_INV_LowDigit2[3]~13_combout\ <= NOT \LowDigit2[3]~13_combout\;
\ALT_INV_LowDigit2[0]~1_combout\ <= NOT \LowDigit2[0]~1_combout\;
\ALT_INV_LowDigit2[2]~9_combout\ <= NOT \LowDigit2[2]~9_combout\;
\ALT_INV_LowDigit2[1]~5_combout\ <= NOT \LowDigit2[1]~5_combout\;
\ALT_INV_HighDigit2[1]~5_combout\ <= NOT \HighDigit2[1]~5_combout\;
\ALT_INV_HighDigit2[0]~1_combout\ <= NOT \HighDigit2[0]~1_combout\;
\ALT_INV_HighDigit0[3]~13_combout\ <= NOT \HighDigit0[3]~13_combout\;
\ALT_INV_HighDigit1[3]~13_combout\ <= NOT \HighDigit1[3]~13_combout\;
\ALT_INV_HighDigit2[3]~13_combout\ <= NOT \HighDigit2[3]~13_combout\;
\ALT_INV_HighDigit2[2]~9_combout\ <= NOT \HighDigit2[2]~9_combout\;
\ALT_INV_LEDR8~1_combout\ <= NOT \LEDR8~1_combout\;
\ALT_INV_LowDigit0~28_combout\ <= NOT \LowDigit0~28_combout\;
\ALT_INV_Add3~0_combout\ <= NOT \Add3~0_combout\;
\ALT_INV_LowDigit0~27_combout\ <= NOT \LowDigit0~27_combout\;
\ALT_INV_LowDigit0~26_combout\ <= NOT \LowDigit0~26_combout\;
\ALT_INV_LowDigit0~25_combout\ <= NOT \LowDigit0~25_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_HighDigit0~28_combout\ <= NOT \HighDigit0~28_combout\;
\ALT_INV_HighDigit0~27_combout\ <= NOT \HighDigit0~27_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_HighDigit0~26_combout\ <= NOT \HighDigit0~26_combout\;
\ALT_INV_LowDigit1~31_combout\ <= NOT \LowDigit1~31_combout\;
\ALT_INV_LowDigit1[3]~30_combout\ <= NOT \LowDigit1[3]~30_combout\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_LowDigit1~29_combout\ <= NOT \LowDigit1~29_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_LowDigit1~28_combout\ <= NOT \LowDigit1~28_combout\;
\ALT_INV_LowDigit1[1]~27_combout\ <= NOT \LowDigit1[1]~27_combout\;
\ALT_INV_LowDigit1[3]~26_combout\ <= NOT \LowDigit1[3]~26_combout\;
\ALT_INV_LowDigit1~25_combout\ <= NOT \LowDigit1~25_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_LowDigit1~24_combout\ <= NOT \LowDigit1~24_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_HighDigit1~28_combout\ <= NOT \HighDigit1~28_combout\;
\ALT_INV_HighDigit1~27_combout\ <= NOT \HighDigit1~27_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_HighDigit1~26_combout\ <= NOT \HighDigit1~26_combout\;
\ALT_INV_LowDigit2~37_combout\ <= NOT \LowDigit2~37_combout\;
\ALT_INV_LowDigit2[3]~36_combout\ <= NOT \LowDigit2[3]~36_combout\;
\ALT_INV_LowDigit2~35_combout\ <= NOT \LowDigit2~35_combout\;
\ALT_INV_LowDigit2~34_combout\ <= NOT \LowDigit2~34_combout\;
\ALT_INV_LowDigit2[2]~33_combout\ <= NOT \LowDigit2[2]~33_combout\;
\ALT_INV_LowDigit2~32_combout\ <= NOT \LowDigit2~32_combout\;
\ALT_INV_LowDigit2~31_combout\ <= NOT \LowDigit2~31_combout\;
\ALT_INV_LowDigit2~30_combout\ <= NOT \LowDigit2~30_combout\;
\ALT_INV_LowDigit2~29_combout\ <= NOT \LowDigit2~29_combout\;
\ALT_INV_LowDigit2[3]~28_combout\ <= NOT \LowDigit2[3]~28_combout\;
\ALT_INV_LowDigit2~27_combout\ <= NOT \LowDigit2~27_combout\;
\ALT_INV_LowDigit2~26_combout\ <= NOT \LowDigit2~26_combout\;
\ALT_INV_LowDigit2~25_combout\ <= NOT \LowDigit2~25_combout\;
\ALT_INV_LowDigit2~24_combout\ <= NOT \LowDigit2~24_combout\;
\ALT_INV_HighDigit2~34_combout\ <= NOT \HighDigit2~34_combout\;
\ALT_INV_HighDigit2~33_combout\ <= NOT \HighDigit2~33_combout\;
\ALT_INV_HighDigit2[2]~32_combout\ <= NOT \HighDigit2[2]~32_combout\;
\ALT_INV_HighDigit2[2]~31_combout\ <= NOT \HighDigit2[2]~31_combout\;
\ALT_INV_LowDigit0[3]~14_combout\ <= NOT \LowDigit0[3]~14_combout\;
\ALT_INV_LowDigit0[3]~_emulated_q\ <= NOT \LowDigit0[3]~_emulated_q\;
\ALT_INV_LowDigit0[2]~10_combout\ <= NOT \LowDigit0[2]~10_combout\;
\ALT_INV_LowDigit0[2]~_emulated_q\ <= NOT \LowDigit0[2]~_emulated_q\;
\ALT_INV_LowDigit0[1]~6_combout\ <= NOT \LowDigit0[1]~6_combout\;
\ALT_INV_LowDigit0[1]~_emulated_q\ <= NOT \LowDigit0[1]~_emulated_q\;
\ALT_INV_LowDigit0[0]~2_combout\ <= NOT \LowDigit0[0]~2_combout\;
\ALT_INV_LowDigit0[0]~_emulated_q\ <= NOT \LowDigit0[0]~_emulated_q\;
\ALT_INV_HighDigit0~25_combout\ <= NOT \HighDigit0~25_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_HighDigit0[3]~24_combout\ <= NOT \HighDigit0[3]~24_combout\;
\ALT_INV_Add2~0_combout\ <= NOT \Add2~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_HighDigit0[2]~10_combout\ <= NOT \HighDigit0[2]~10_combout\;
\ALT_INV_HighDigit0[2]~_emulated_q\ <= NOT \HighDigit0[2]~_emulated_q\;
\ALT_INV_HighDigit0[1]~6_combout\ <= NOT \HighDigit0[1]~6_combout\;
\ALT_INV_HighDigit0[1]~_emulated_q\ <= NOT \HighDigit0[1]~_emulated_q\;
\ALT_INV_HighDigit0[0]~2_combout\ <= NOT \HighDigit0[0]~2_combout\;
\ALT_INV_HighDigit0[0]~_emulated_q\ <= NOT \HighDigit0[0]~_emulated_q\;
\ALT_INV_LowDigit1[3]~14_combout\ <= NOT \LowDigit1[3]~14_combout\;
\ALT_INV_LowDigit1[3]~_emulated_q\ <= NOT \LowDigit1[3]~_emulated_q\;
\ALT_INV_LowDigit1[2]~10_combout\ <= NOT \LowDigit1[2]~10_combout\;
\ALT_INV_LowDigit1[2]~_emulated_q\ <= NOT \LowDigit1[2]~_emulated_q\;
\ALT_INV_LowDigit1[1]~6_combout\ <= NOT \LowDigit1[1]~6_combout\;
\ALT_INV_LowDigit1[1]~_emulated_q\ <= NOT \LowDigit1[1]~_emulated_q\;
\ALT_INV_LowDigit1[0]~2_combout\ <= NOT \LowDigit1[0]~2_combout\;
\ALT_INV_LowDigit1[0]~_emulated_q\ <= NOT \LowDigit1[0]~_emulated_q\;
\ALT_INV_HighDigit1~25_combout\ <= NOT \HighDigit1~25_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_HighDigit1[3]~24_combout\ <= NOT \HighDigit1[3]~24_combout\;
\ALT_INV_Add5~0_combout\ <= NOT \Add5~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_HighDigit1[2]~10_combout\ <= NOT \HighDigit1[2]~10_combout\;
\ALT_INV_HighDigit1[2]~_emulated_q\ <= NOT \HighDigit1[2]~_emulated_q\;
\ALT_INV_HighDigit1[1]~6_combout\ <= NOT \HighDigit1[1]~6_combout\;
\ALT_INV_HighDigit1[1]~_emulated_q\ <= NOT \HighDigit1[1]~_emulated_q\;
\ALT_INV_HighDigit1[0]~2_combout\ <= NOT \HighDigit1[0]~2_combout\;
\ALT_INV_HighDigit1[0]~_emulated_q\ <= NOT \HighDigit1[0]~_emulated_q\;
\ALT_INV_HighDigit2~30_combout\ <= NOT \HighDigit2~30_combout\;
\ALT_INV_Add6~1_combout\ <= NOT \Add6~1_combout\;
\ALT_INV_LowDigit0[3]~20_combout\ <= NOT \LowDigit0[3]~20_combout\;
\ALT_INV_HighDigit2~29_combout\ <= NOT \HighDigit2~29_combout\;
\ALT_INV_HighDigit2~28_combout\ <= NOT \HighDigit2~28_combout\;
\ALT_INV_HighDigit2[0]~0_combout\ <= NOT \HighDigit2[0]~0_combout\;
\ALT_INV_HighDigit2[2]~26_combout\ <= NOT \HighDigit2[2]~26_combout\;
\ALT_INV_Add6~0_combout\ <= NOT \Add6~0_combout\;
\ALT_INV_LowDigit2[3]~14_combout\ <= NOT \LowDigit2[3]~14_combout\;
\ALT_INV_LowDigit2[3]~_emulated_q\ <= NOT \LowDigit2[3]~_emulated_q\;
\ALT_INV_LowDigit2[0]~2_combout\ <= NOT \LowDigit2[0]~2_combout\;
\ALT_INV_LowDigit2[0]~_emulated_q\ <= NOT \LowDigit2[0]~_emulated_q\;
\ALT_INV_LowDigit2[2]~10_combout\ <= NOT \LowDigit2[2]~10_combout\;
\ALT_INV_LowDigit2[2]~_emulated_q\ <= NOT \LowDigit2[2]~_emulated_q\;
\ALT_INV_LowDigit2[1]~6_combout\ <= NOT \LowDigit2[1]~6_combout\;
\ALT_INV_LowDigit2[1]~_emulated_q\ <= NOT \LowDigit2[1]~_emulated_q\;
\ALT_INV_HighDigit2[1]~6_combout\ <= NOT \HighDigit2[1]~6_combout\;
\ALT_INV_HighDigit2[1]~_emulated_q\ <= NOT \HighDigit2[1]~_emulated_q\;
\ALT_INV_HighDigit2[0]~2_combout\ <= NOT \HighDigit2[0]~2_combout\;
\ALT_INV_HighDigit2[0]~_emulated_q\ <= NOT \HighDigit2[0]~_emulated_q\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_HighDigit0[3]~14_combout\ <= NOT \HighDigit0[3]~14_combout\;
\ALT_INV_HighDigit0[3]~_emulated_q\ <= NOT \HighDigit0[3]~_emulated_q\;
\ALT_INV_HighDigit1[3]~14_combout\ <= NOT \HighDigit1[3]~14_combout\;
\ALT_INV_HighDigit1[3]~_emulated_q\ <= NOT \HighDigit1[3]~_emulated_q\;
\ALT_INV_HighDigit2[3]~14_combout\ <= NOT \HighDigit2[3]~14_combout\;
\ALT_INV_HighDigit2[3]~_emulated_q\ <= NOT \HighDigit2[3]~_emulated_q\;
\ALT_INV_HighDigit2[2]~10_combout\ <= NOT \HighDigit2[2]~10_combout\;
\ALT_INV_HighDigit2[2]~_emulated_q\ <= NOT \HighDigit2[2]~_emulated_q\;
\ALT_INV_LEDR8~2_combout\ <= NOT \LEDR8~2_combout\;
\ALT_INV_LEDR8~reg0_emulated_q\ <= NOT \LEDR8~reg0_emulated_q\;
\ALT_INV_HighDigit2~20_combout\ <= NOT \HighDigit2~20_combout\;
\ALT_INV_LEDR9~0_combout\ <= NOT \LEDR9~0_combout\;
\ALT_INV_ClkFlag~q\ <= NOT \ClkFlag~q\;
\ALT_INV_PM~q\ <= NOT \PM~q\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
ALT_INV_Internal_Count(0) <= NOT Internal_Count(0);
ALT_INV_Internal_Count(1) <= NOT Internal_Count(1);
ALT_INV_Internal_Count(2) <= NOT Internal_Count(2);
ALT_INV_Internal_Count(3) <= NOT Internal_Count(3);
ALT_INV_Internal_Count(4) <= NOT Internal_Count(4);
ALT_INV_Internal_Count(5) <= NOT Internal_Count(5);
ALT_INV_Internal_Count(28) <= NOT Internal_Count(28);
ALT_INV_Internal_Count(26) <= NOT Internal_Count(26);
ALT_INV_Internal_Count(27) <= NOT Internal_Count(27);
ALT_INV_Internal_Count(25) <= NOT Internal_Count(25);
ALT_INV_Internal_Count(22) <= NOT Internal_Count(22);
ALT_INV_Internal_Count(21) <= NOT Internal_Count(21);
ALT_INV_Internal_Count(18) <= NOT Internal_Count(18);
ALT_INV_Internal_Count(19) <= NOT Internal_Count(19);
ALT_INV_Internal_Count(20) <= NOT Internal_Count(20);
ALT_INV_Internal_Count(11) <= NOT Internal_Count(11);
ALT_INV_Internal_Count(12) <= NOT Internal_Count(12);
ALT_INV_Internal_Count(13) <= NOT Internal_Count(13);
ALT_INV_Internal_Count(14) <= NOT Internal_Count(14);
ALT_INV_Internal_Count(6) <= NOT Internal_Count(6);
ALT_INV_Internal_Count(8) <= NOT Internal_Count(8);
ALT_INV_Internal_Count(9) <= NOT Internal_Count(9);
ALT_INV_Internal_Count(10) <= NOT Internal_Count(10);
ALT_INV_Internal_Count(7) <= NOT Internal_Count(7);
ALT_INV_Internal_Count(15) <= NOT Internal_Count(15);
ALT_INV_Internal_Count(16) <= NOT Internal_Count(16);
ALT_INV_Internal_Count(17) <= NOT Internal_Count(17);
ALT_INV_Internal_Count(23) <= NOT Internal_Count(23);
ALT_INV_Internal_Count(24) <= NOT Internal_Count(24);

-- Location: IOOBUF_X0_Y20_N56
\LEDR9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR9~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR9);

-- Location: IOOBUF_X0_Y20_N39
\LEDR8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR8~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR8);

-- Location: IOOBUF_X44_Y0_N2
\MSD5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD5(6));

-- Location: IOOBUF_X0_Y21_N39
\MSD5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD5(5));

-- Location: IOOBUF_X0_Y21_N56
\MSD5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD5(4));

-- Location: IOOBUF_X50_Y0_N19
\MSD5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD5(3));

-- Location: IOOBUF_X43_Y0_N19
\MSD5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD5(2));

-- Location: IOOBUF_X22_Y0_N19
\MSD5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD5(1));

-- Location: IOOBUF_X29_Y0_N2
\MSD5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD5(0));

-- Location: IOOBUF_X29_Y0_N19
\LSD4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD4(6));

-- Location: IOOBUF_X36_Y0_N2
\LSD4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD4(5));

-- Location: IOOBUF_X43_Y0_N2
\LSD4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD4(4));

-- Location: IOOBUF_X52_Y0_N19
\LSD4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD4(3));

-- Location: IOOBUF_X44_Y0_N19
\LSD4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD4(2));

-- Location: IOOBUF_X48_Y0_N59
\LSD4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD4(1));

-- Location: IOOBUF_X52_Y0_N36
\LSD4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD4(0));

-- Location: IOOBUF_X51_Y0_N19
\MSD3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux27~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD3(6));

-- Location: IOOBUF_X51_Y0_N2
\MSD3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD3(5));

-- Location: IOOBUF_X52_Y0_N2
\MSD3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD3(4));

-- Location: IOOBUF_X46_Y0_N19
\MSD3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD3(3));

-- Location: IOOBUF_X40_Y0_N42
\MSD3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD3(2));

-- Location: IOOBUF_X46_Y0_N2
\MSD3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD3(1));

-- Location: IOOBUF_X40_Y0_N59
\MSD3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD3(0));

-- Location: IOOBUF_X40_Y0_N76
\LSD2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD2(6));

-- Location: IOOBUF_X46_Y0_N53
\LSD2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD2(5));

-- Location: IOOBUF_X38_Y0_N19
\LSD2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD2(4));

-- Location: IOOBUF_X36_Y0_N19
\LSD2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD2(3));

-- Location: IOOBUF_X22_Y0_N53
\LSD2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD2(2));

-- Location: IOOBUF_X38_Y0_N53
\LSD2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD2(1));

-- Location: IOOBUF_X48_Y0_N42
\LSD2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD2(0));

-- Location: IOOBUF_X51_Y0_N53
\MSD1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux41~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD1(6));

-- Location: IOOBUF_X43_Y0_N53
\MSD1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD1(5));

-- Location: IOOBUF_X38_Y0_N36
\MSD1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD1(4));

-- Location: IOOBUF_X43_Y0_N36
\MSD1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD1(3));

-- Location: IOOBUF_X44_Y0_N53
\MSD1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD1(2));

-- Location: IOOBUF_X40_Y0_N93
\MSD1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD1(1));

-- Location: IOOBUF_X44_Y0_N36
\MSD1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~0_combout\,
	devoe => ww_devoe,
	o => ww_MSD1(0));

-- Location: IOOBUF_X46_Y0_N36
\LSD0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux34~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD0(6));

-- Location: IOOBUF_X50_Y0_N53
\LSD0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD0(5));

-- Location: IOOBUF_X48_Y0_N93
\LSD0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD0(4));

-- Location: IOOBUF_X50_Y0_N36
\LSD0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD0(3));

-- Location: IOOBUF_X48_Y0_N76
\LSD0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD0(2));

-- Location: IOOBUF_X51_Y0_N36
\LSD0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD0(1));

-- Location: IOOBUF_X52_Y0_N53
\LSD0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~0_combout\,
	devoe => ww_devoe,
	o => ww_LSD0(0));

-- Location: IOIBUF_X38_Y0_N1
\CLK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50,
	o => \CLK_50~input_o\);

-- Location: CLKCTRL_G6
\CLK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~input_o\,
	outclk => \CLK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X37_Y2_N0
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( Internal_Count(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~114\ = CARRY(( Internal_Count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(0),
	cin => GND,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: MLABCELL_X37_Y1_N42
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( Internal_Count(24) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( Internal_Count(24) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(24),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X37_Y1_N45
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( Internal_Count(25) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~78\ = CARRY(( Internal_Count(25) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(25),
	cin => \Add0~2\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: IOIBUF_X33_Y0_N92
\CLK_ON~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_ON,
	o => \CLK_ON~input_o\);

-- Location: FF_X37_Y1_N47
\Internal_Count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(25));

-- Location: MLABCELL_X37_Y1_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( Internal_Count(26) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~86\ = CARRY(( Internal_Count(26) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(26),
	cin => \Add0~78\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X37_Y1_N50
\Internal_Count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(26));

-- Location: MLABCELL_X37_Y1_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( Internal_Count(27) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( Internal_Count(27) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(27),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X37_Y1_N53
\Internal_Count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(27));

-- Location: MLABCELL_X37_Y1_N54
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( Internal_Count(28) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(28),
	cin => \Add0~82\,
	sumout => \Add0~89_sumout\);

-- Location: FF_X37_Y1_N56
\Internal_Count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(28));

-- Location: LABCELL_X36_Y1_N36
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !Internal_Count(26) & ( (!Internal_Count(25) & (!Internal_Count(27) & !Internal_Count(28))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(25),
	datac => ALT_INV_Internal_Count(27),
	datad => ALT_INV_Internal_Count(28),
	dataf => ALT_INV_Internal_Count(26),
	combout => \LessThan0~4_combout\);

-- Location: MLABCELL_X37_Y2_N48
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !Internal_Count(10) & ( (!Internal_Count(6) & (!Internal_Count(8) & (!Internal_Count(9) & !Internal_Count(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(6),
	datab => ALT_INV_Internal_Count(8),
	datac => ALT_INV_Internal_Count(9),
	datad => ALT_INV_Internal_Count(7),
	datae => ALT_INV_Internal_Count(10),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X37_Y2_N45
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( Internal_Count(12) & ( (Internal_Count(13) & (Internal_Count(11) & Internal_Count(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(13),
	datac => ALT_INV_Internal_Count(11),
	datad => ALT_INV_Internal_Count(14),
	dataf => ALT_INV_Internal_Count(12),
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X37_Y2_N33
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( Internal_Count(19) & ( (Internal_Count(21) & (Internal_Count(18) & (Internal_Count(22) & Internal_Count(20)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(21),
	datab => ALT_INV_Internal_Count(18),
	datac => ALT_INV_Internal_Count(22),
	datad => ALT_INV_Internal_Count(20),
	dataf => ALT_INV_Internal_Count(19),
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X37_Y2_N54
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~2_combout\ & ( ((Internal_Count(16) & ((!\LessThan0~0_combout\) # (Internal_Count(15))))) # (Internal_Count(17)) ) ) ) # ( !\LessThan0~1_combout\ & ( \LessThan0~2_combout\ & ( 
-- ((Internal_Count(15) & Internal_Count(16))) # (Internal_Count(17)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001111111110011000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(15),
	datab => ALT_INV_Internal_Count(16),
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => ALT_INV_Internal_Count(17),
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: MLABCELL_X37_Y2_N42
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( Internal_Count(24) & ( (!\LessThan0~4_combout\) # ((\LessThan0~3_combout\) # (Internal_Count(23))) ) ) # ( !Internal_Count(24) & ( !\LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => ALT_INV_Internal_Count(23),
	datad => \ALT_INV_LessThan0~3_combout\,
	dataf => ALT_INV_Internal_Count(24),
	combout => \LessThan0~5_combout\);

-- Location: FF_X37_Y2_N56
\Internal_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~113_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(0));

-- Location: MLABCELL_X37_Y2_N3
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( Internal_Count(1) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( Internal_Count(1) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(1),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X37_Y2_N41
\Internal_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~109_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(1));

-- Location: MLABCELL_X37_Y2_N6
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( Internal_Count(2) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( Internal_Count(2) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(2),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X37_Y2_N23
\Internal_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~105_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(2));

-- Location: MLABCELL_X37_Y2_N9
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( Internal_Count(3) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( Internal_Count(3) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(3),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X37_Y2_N25
\Internal_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~101_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(3));

-- Location: MLABCELL_X37_Y2_N12
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( Internal_Count(4) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( Internal_Count(4) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(4),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X37_Y2_N5
\Internal_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~97_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(4));

-- Location: MLABCELL_X37_Y2_N15
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( Internal_Count(5) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( Internal_Count(5) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(5),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X37_Y2_N20
\Internal_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~93_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(5));

-- Location: MLABCELL_X37_Y2_N18
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( Internal_Count(6) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~38\ = CARRY(( Internal_Count(6) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(6),
	cin => \Add0~94\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X37_Y2_N38
\Internal_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~37_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(6));

-- Location: MLABCELL_X37_Y2_N21
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( Internal_Count(7) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~22\ = CARRY(( Internal_Count(7) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(7),
	cin => \Add0~38\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X37_Y2_N59
\Internal_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(7));

-- Location: MLABCELL_X37_Y2_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( Internal_Count(8) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~34\ = CARRY(( Internal_Count(8) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(8),
	cin => \Add0~22\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X37_Y2_N32
\Internal_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	asdata => \Add0~33_sumout\,
	sclr => \LessThan0~5_combout\,
	sload => VCC,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(8));

-- Location: MLABCELL_X37_Y2_N27
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( Internal_Count(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( Internal_Count(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(9),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X37_Y2_N29
\Internal_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(9));

-- Location: MLABCELL_X37_Y1_N0
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( Internal_Count(10) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( Internal_Count(10) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(10),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X37_Y1_N2
\Internal_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(10));

-- Location: MLABCELL_X37_Y1_N3
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( Internal_Count(11) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~54\ = CARRY(( Internal_Count(11) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(11),
	cin => \Add0~26\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X37_Y1_N5
\Internal_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(11));

-- Location: MLABCELL_X37_Y1_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( Internal_Count(12) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( Internal_Count(12) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(12),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X37_Y1_N8
\Internal_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(12));

-- Location: MLABCELL_X37_Y1_N9
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( Internal_Count(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( Internal_Count(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(13),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X37_Y1_N11
\Internal_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(13));

-- Location: MLABCELL_X37_Y1_N12
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( Internal_Count(14) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( Internal_Count(14) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(14),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X37_Y1_N14
\Internal_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(14));

-- Location: MLABCELL_X37_Y1_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( Internal_Count(15) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~18\ = CARRY(( Internal_Count(15) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(15),
	cin => \Add0~42\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X37_Y1_N17
\Internal_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(15));

-- Location: MLABCELL_X37_Y1_N18
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( Internal_Count(16) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( Internal_Count(16) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(16),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X37_Y1_N20
\Internal_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(16));

-- Location: MLABCELL_X37_Y1_N21
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( Internal_Count(17) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( Internal_Count(17) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(17),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X37_Y1_N23
\Internal_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(17));

-- Location: MLABCELL_X37_Y1_N24
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( Internal_Count(18) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~66\ = CARRY(( Internal_Count(18) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(18),
	cin => \Add0~10\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X37_Y1_N26
\Internal_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(18));

-- Location: MLABCELL_X37_Y1_N27
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( Internal_Count(19) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( Internal_Count(19) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Internal_Count(19),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X37_Y1_N29
\Internal_Count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(19));

-- Location: MLABCELL_X37_Y1_N30
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( Internal_Count(20) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( Internal_Count(20) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Internal_Count(20),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X37_Y1_N32
\Internal_Count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(20));

-- Location: MLABCELL_X37_Y1_N33
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( Internal_Count(21) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~70\ = CARRY(( Internal_Count(21) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(21),
	cin => \Add0~58\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X37_Y1_N35
\Internal_Count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(21));

-- Location: MLABCELL_X37_Y1_N36
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( Internal_Count(22) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( Internal_Count(22) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(22),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X37_Y1_N38
\Internal_Count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(22));

-- Location: MLABCELL_X37_Y1_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( Internal_Count(23) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~6\ = CARRY(( Internal_Count(23) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Internal_Count(23),
	cin => \Add0~74\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X37_Y1_N41
\Internal_Count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(23));

-- Location: FF_X37_Y1_N44
\Internal_Count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~5_combout\,
	ena => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Internal_Count(24));

-- Location: MLABCELL_X37_Y2_N39
\ClkFlag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ClkFlag~0_combout\ = ( \LessThan0~3_combout\ & ( \ClkFlag~q\ & ( ((!Internal_Count(24) & \LessThan0~4_combout\)) # (\CLK_ON~input_o\) ) ) ) # ( !\LessThan0~3_combout\ & ( \ClkFlag~q\ & ( ((\LessThan0~4_combout\ & ((!Internal_Count(24)) # 
-- (!Internal_Count(23))))) # (\CLK_ON~input_o\) ) ) ) # ( \LessThan0~3_combout\ & ( !\ClkFlag~q\ & ( (!\CLK_ON~input_o\ & ((!\LessThan0~4_combout\) # (Internal_Count(24)))) ) ) ) # ( !\LessThan0~3_combout\ & ( !\ClkFlag~q\ & ( (!\CLK_ON~input_o\ & 
-- ((!\LessThan0~4_combout\) # ((Internal_Count(24) & Internal_Count(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000100110001001100010000111111001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Internal_Count(24),
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => ALT_INV_Internal_Count(23),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_ClkFlag~q\,
	combout => \ClkFlag~0_combout\);

-- Location: FF_X37_Y2_N53
ClkFlag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50~input_o\,
	asdata => \ClkFlag~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ClkFlag~q\);

-- Location: LABCELL_X36_Y1_N21
\PM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PM~0_combout\ = !\PM~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_PM~q\,
	combout => \PM~0_combout\);

-- Location: IOIBUF_X10_Y0_N92
\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: MLABCELL_X34_Y2_N36
\LowDigit0[3]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[3]~20_combout\ = ( \CLK_ON~input_o\ ) # ( !\CLK_ON~input_o\ & ( \KEY0~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY0~input_o\,
	dataf => \ALT_INV_CLK_ON~input_o\,
	combout => \LowDigit0[3]~20_combout\);

-- Location: IOIBUF_X34_Y0_N52
\SW6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW6,
	o => \SW6~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW7,
	o => \SW7~input_o\);

-- Location: MLABCELL_X34_Y2_N0
\HighDigit2~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2~30_combout\ = ( !\KEY3~input_o\ & ( (\HighDigit2~28_combout\ & \SW7~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HighDigit2~28_combout\,
	datad => \ALT_INV_SW7~input_o\,
	dataf => \ALT_INV_KEY3~input_o\,
	combout => \HighDigit2~30_combout\);

-- Location: MLABCELL_X34_Y2_N6
\HighDigit2[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[3]~13_combout\ = ( \HighDigit2~30_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\HighDigit2[3]~13_combout\))) ) ) # ( !\HighDigit2~30_combout\ & ( (\LowDigit0[3]~20_combout\ & (\HighDigit2[3]~13_combout\ & 
-- !\CLK_ON~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_HighDigit2[3]~13_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_HighDigit2~30_combout\,
	combout => \HighDigit2[3]~13_combout\);

-- Location: IOIBUF_X33_Y0_N75
\MODE24~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE24,
	o => \MODE24~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW5,
	o => \SW5~input_o\);

-- Location: MLABCELL_X34_Y1_N6
\HighDigit2~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2~34_combout\ = ( \HighDigit2[1]~6_combout\ & ( (\HighDigit2~28_combout\ & ((\KEY3~input_o\) # (\SW5~input_o\))) ) ) # ( !\HighDigit2[1]~6_combout\ & ( (\SW5~input_o\ & (!\KEY3~input_o\ & \HighDigit2~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW5~input_o\,
	datac => \ALT_INV_KEY3~input_o\,
	datad => \ALT_INV_HighDigit2~28_combout\,
	dataf => \ALT_INV_HighDigit2[1]~6_combout\,
	combout => \HighDigit2~34_combout\);

-- Location: MLABCELL_X34_Y2_N42
\HighDigit2[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[1]~5_combout\ = ( \HighDigit2[1]~5_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\) # (\HighDigit2~34_combout\))) ) ) # ( !\HighDigit2[1]~5_combout\ & ( (\CLK_ON~input_o\ & (\HighDigit2~34_combout\ & \LowDigit0[3]~20_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit2~34_combout\,
	datad => \ALT_INV_LowDigit0[3]~20_combout\,
	dataf => \ALT_INV_HighDigit2[1]~5_combout\,
	combout => \HighDigit2[1]~5_combout\);

-- Location: IOIBUF_X36_Y0_N35
\SW4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: MLABCELL_X34_Y1_N45
\HighDigit2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2~33_combout\ = ( \HighDigit2[0]~2_combout\ & ( (!\SW4~input_o\) # ((!\HighDigit2~28_combout\) # (\KEY3~input_o\)) ) ) # ( !\HighDigit2[0]~2_combout\ & ( (!\HighDigit2~28_combout\) # ((!\SW4~input_o\ & !\KEY3~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000011111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW4~input_o\,
	datac => \ALT_INV_KEY3~input_o\,
	datad => \ALT_INV_HighDigit2~28_combout\,
	dataf => \ALT_INV_HighDigit2[0]~2_combout\,
	combout => \HighDigit2~33_combout\);

-- Location: MLABCELL_X34_Y2_N33
\HighDigit2[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[0]~1_combout\ = ( \LowDigit0[3]~20_combout\ & ( (!\CLK_ON~input_o\ & (\HighDigit2[0]~1_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit2~33_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[0]~1_combout\,
	datac => \ALT_INV_HighDigit2~33_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit0[3]~20_combout\,
	combout => \HighDigit2[0]~1_combout\);

-- Location: LABCELL_X35_Y1_N42
\HighDigit2[2]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[2]~32_combout\ = ( \HighDigit2[1]~6_combout\ & ( (!\HighDigit2[2]~10_combout\ & (\MODE24~input_o\ & (!\HighDigit2[3]~14_combout\ & \HighDigit2[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[2]~10_combout\,
	datab => \ALT_INV_MODE24~input_o\,
	datac => \ALT_INV_HighDigit2[3]~14_combout\,
	datad => \ALT_INV_HighDigit2[0]~2_combout\,
	dataf => \ALT_INV_HighDigit2[1]~6_combout\,
	combout => \HighDigit2[2]~32_combout\);

-- Location: MLABCELL_X34_Y1_N33
\HighDigit2[2]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[2]~31_combout\ = ( !\HighDigit2[0]~2_combout\ & ( (!\HighDigit2[3]~14_combout\ & (!\MODE24~input_o\ & (!\HighDigit2[1]~6_combout\ & !\HighDigit2[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_MODE24~input_o\,
	datac => \ALT_INV_HighDigit2[1]~6_combout\,
	datad => \ALT_INV_HighDigit2[2]~10_combout\,
	dataf => \ALT_INV_HighDigit2[0]~2_combout\,
	combout => \HighDigit2[2]~31_combout\);

-- Location: MLABCELL_X34_Y2_N30
\HighDigit2[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[0]~3_combout\ = ( \HighDigit2[2]~31_combout\ & ( !\HighDigit2[0]~1_combout\ ) ) # ( !\HighDigit2[2]~31_combout\ & ( !\HighDigit2[0]~1_combout\ $ (((!\HighDigit2[2]~32_combout\ & \HighDigit2[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001011010101010100101101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[0]~1_combout\,
	datac => \ALT_INV_HighDigit2[2]~32_combout\,
	datad => \ALT_INV_HighDigit2[0]~2_combout\,
	dataf => \ALT_INV_HighDigit2[2]~31_combout\,
	combout => \HighDigit2[0]~3_combout\);

-- Location: LABCELL_X35_Y2_N15
\HighDigit2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[0]~0_combout\ = ( \LowDigit0[3]~20_combout\ & ( \CLK_ON~input_o\ ) ) # ( !\LowDigit0[3]~20_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit0[3]~20_combout\,
	combout => \HighDigit2[0]~0_combout\);

-- Location: IOIBUF_X34_Y0_N18
\SW3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: LABCELL_X39_Y2_N51
\LowDigit2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~37_combout\ = ( \LowDigit2~31_combout\ & ( (!\KEY3~input_o\ & ((\SW3~input_o\))) # (\KEY3~input_o\ & (\LowDigit2[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit2[3]~14_combout\,
	datac => \ALT_INV_KEY3~input_o\,
	datad => \ALT_INV_SW3~input_o\,
	dataf => \ALT_INV_LowDigit2~31_combout\,
	combout => \LowDigit2~37_combout\);

-- Location: LABCELL_X39_Y2_N3
\LowDigit2[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[3]~13_combout\ = ( \LowDigit0[3]~20_combout\ & ( (!\CLK_ON~input_o\ & ((\LowDigit2[3]~13_combout\))) # (\CLK_ON~input_o\ & (\LowDigit2~37_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2~37_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_LowDigit2[3]~13_combout\,
	dataf => \ALT_INV_LowDigit0[3]~20_combout\,
	combout => \LowDigit2[3]~13_combout\);

-- Location: IOIBUF_X34_Y0_N1
\SW2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: LABCELL_X39_Y2_N30
\LowDigit2~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~34_combout\ = ( \LowDigit2~31_combout\ & ( (!\KEY3~input_o\ & ((\SW2~input_o\))) # (\KEY3~input_o\ & (\LowDigit2[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY3~input_o\,
	datac => \ALT_INV_LowDigit2[2]~10_combout\,
	datad => \ALT_INV_SW2~input_o\,
	dataf => \ALT_INV_LowDigit2~31_combout\,
	combout => \LowDigit2~34_combout\);

-- Location: LABCELL_X39_Y2_N39
\LowDigit2[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[2]~9_combout\ = ( \LowDigit2~34_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\LowDigit2[2]~9_combout\))) ) ) # ( !\LowDigit2~34_combout\ & ( (\LowDigit2[2]~9_combout\ & (\LowDigit0[3]~20_combout\ & !\CLK_ON~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit2[2]~9_combout\,
	datac => \ALT_INV_LowDigit0[3]~20_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit2~34_combout\,
	combout => \LowDigit2[2]~9_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

-- Location: LABCELL_X36_Y2_N51
\HighDigit1~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1~27_combout\ = ( \HighDigit1[1]~6_combout\ & ( (\LessThan4~0_combout\ & ((\SW5~input_o\) # (\KEY2~input_o\))) ) ) # ( !\HighDigit1[1]~6_combout\ & ( (!\KEY2~input_o\ & (\LessThan4~0_combout\ & \SW5~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY2~input_o\,
	datac => \ALT_INV_LessThan4~0_combout\,
	datad => \ALT_INV_SW5~input_o\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \HighDigit1~27_combout\);

-- Location: LABCELL_X36_Y2_N24
\HighDigit1[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[1]~5_combout\ = ( \HighDigit1~27_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\HighDigit1[1]~5_combout\))) ) ) # ( !\HighDigit1~27_combout\ & ( (\LowDigit0[3]~20_combout\ & (\HighDigit1[1]~5_combout\ & !\CLK_ON~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_HighDigit1[1]~5_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_HighDigit1~27_combout\,
	combout => \HighDigit1[1]~5_combout\);

-- Location: LABCELL_X36_Y2_N21
\HighDigit1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1~25_combout\ = ( \LessThan4~0_combout\ & ( (\SW7~input_o\ & !\KEY2~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW7~input_o\,
	datad => \ALT_INV_KEY2~input_o\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \HighDigit1~25_combout\);

-- Location: LABCELL_X36_Y2_N3
\HighDigit1[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[3]~13_combout\ = ( \HighDigit1~25_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\HighDigit1[3]~13_combout\) # (\CLK_ON~input_o\))) ) ) # ( !\HighDigit1~25_combout\ & ( (\LowDigit0[3]~20_combout\ & (!\CLK_ON~input_o\ & 
-- \HighDigit1[3]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_HighDigit1[3]~13_combout\,
	dataf => \ALT_INV_HighDigit1~25_combout\,
	combout => \HighDigit1[3]~13_combout\);

-- Location: LABCELL_X39_Y2_N18
\HighDigit1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1~28_combout\ = ( \HighDigit1[2]~10_combout\ & ( (\LessThan4~0_combout\ & ((\KEY2~input_o\) # (\SW6~input_o\))) ) ) # ( !\HighDigit1[2]~10_combout\ & ( (\SW6~input_o\ & (\LessThan4~0_combout\ & !\KEY2~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW6~input_o\,
	datac => \ALT_INV_LessThan4~0_combout\,
	datad => \ALT_INV_KEY2~input_o\,
	dataf => \ALT_INV_HighDigit1[2]~10_combout\,
	combout => \HighDigit1~28_combout\);

-- Location: LABCELL_X39_Y2_N15
\HighDigit1[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[2]~9_combout\ = ( \HighDigit1~28_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\HighDigit1[2]~9_combout\))) ) ) # ( !\HighDigit1~28_combout\ & ( (\LowDigit0[3]~20_combout\ & (\HighDigit1[2]~9_combout\ & !\CLK_ON~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_HighDigit1[2]~9_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_HighDigit1~28_combout\,
	combout => \HighDigit1[2]~9_combout\);

-- Location: MLABCELL_X37_Y2_N30
\Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = ( \HighDigit1[0]~2_combout\ & ( \HighDigit1[1]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HighDigit1[1]~6_combout\,
	dataf => \ALT_INV_HighDigit1[0]~2_combout\,
	combout => \Add5~0_combout\);

-- Location: LABCELL_X39_Y2_N9
\HighDigit1[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[2]~11_combout\ = ( \Equal3~0_combout\ & ( \HighDigit1[2]~9_combout\ ) ) # ( !\Equal3~0_combout\ & ( !\HighDigit1[2]~10_combout\ $ (!\HighDigit1[2]~9_combout\ $ (\Add5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit1[2]~10_combout\,
	datac => \ALT_INV_HighDigit1[2]~9_combout\,
	datad => \ALT_INV_Add5~0_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \HighDigit1[2]~11_combout\);

-- Location: LABCELL_X32_Y1_N33
\LowDigit1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1~29_combout\ = ( \LowDigit1[2]~10_combout\ & ( (!\LessThan3~0_combout\ & ((\KEY2~input_o\) # (\SW2~input_o\))) ) ) # ( !\LowDigit1[2]~10_combout\ & ( (!\LessThan3~0_combout\ & (\SW2~input_o\ & !\KEY2~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_SW2~input_o\,
	datad => \ALT_INV_KEY2~input_o\,
	dataf => \ALT_INV_LowDigit1[2]~10_combout\,
	combout => \LowDigit1~29_combout\);

-- Location: LABCELL_X32_Y1_N51
\LowDigit1[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[2]~9_combout\ = ( \LowDigit1~29_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\LowDigit1[2]~9_combout\))) ) ) # ( !\LowDigit1~29_combout\ & ( (\LowDigit0[3]~20_combout\ & (\LowDigit1[2]~9_combout\ & !\CLK_ON~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_LowDigit1[2]~9_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit1~29_combout\,
	combout => \LowDigit1[2]~9_combout\);

-- Location: IOIBUF_X33_Y0_N58
\SW1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: LABCELL_X35_Y1_N9
\LowDigit1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1~28_combout\ = ( \SW1~input_o\ & ( (!\LessThan3~0_combout\ & ((!\KEY2~input_o\) # (\LowDigit1[1]~6_combout\))) ) ) # ( !\SW1~input_o\ & ( (\KEY2~input_o\ & (!\LessThan3~0_combout\ & \LowDigit1[1]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY2~input_o\,
	datac => \ALT_INV_LessThan3~0_combout\,
	datad => \ALT_INV_LowDigit1[1]~6_combout\,
	dataf => \ALT_INV_SW1~input_o\,
	combout => \LowDigit1~28_combout\);

-- Location: LABCELL_X35_Y1_N51
\LowDigit1[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[1]~5_combout\ = ( \LowDigit1~28_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\LowDigit1[1]~5_combout\))) ) ) # ( !\LowDigit1~28_combout\ & ( (\LowDigit1[1]~5_combout\ & (\LowDigit0[3]~20_combout\ & !\CLK_ON~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[1]~5_combout\,
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit1~28_combout\,
	combout => \LowDigit1[1]~5_combout\);

-- Location: IOIBUF_X11_Y0_N35
\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: MLABCELL_X34_Y1_N54
\HighDigit0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0~27_combout\ = ( \HighDigit0[1]~6_combout\ & ( (\LessThan2~0_combout\ & ((\KEY1~input_o\) # (\SW5~input_o\))) ) ) # ( !\HighDigit0[1]~6_combout\ & ( (\SW5~input_o\ & (!\KEY1~input_o\ & \LessThan2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW5~input_o\,
	datac => \ALT_INV_KEY1~input_o\,
	datad => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_HighDigit0[1]~6_combout\,
	combout => \HighDigit0~27_combout\);

-- Location: MLABCELL_X34_Y1_N9
\HighDigit0[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[1]~5_combout\ = ( \HighDigit0~27_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\HighDigit0[1]~5_combout\))) ) ) # ( !\HighDigit0~27_combout\ & ( (\LowDigit0[3]~20_combout\ & (\HighDigit0[1]~5_combout\ & !\CLK_ON~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_HighDigit0[1]~5_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_HighDigit0~27_combout\,
	combout => \HighDigit0[1]~5_combout\);

-- Location: MLABCELL_X34_Y1_N3
\HighDigit0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0~25_combout\ = ( !\KEY1~input_o\ & ( (\SW7~input_o\ & \LessThan2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW7~input_o\,
	datad => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_KEY1~input_o\,
	combout => \HighDigit0~25_combout\);

-- Location: MLABCELL_X34_Y1_N51
\HighDigit0[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[3]~13_combout\ = ( \HighDigit0~25_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\HighDigit0[3]~13_combout\) # (\CLK_ON~input_o\))) ) ) # ( !\HighDigit0~25_combout\ & ( (\LowDigit0[3]~20_combout\ & (!\CLK_ON~input_o\ & 
-- \HighDigit0[3]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_HighDigit0[3]~13_combout\,
	dataf => \ALT_INV_HighDigit0~25_combout\,
	combout => \HighDigit0[3]~13_combout\);

-- Location: LABCELL_X32_Y2_N24
\LowDigit0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0~27_combout\ = ( !\LessThan1~0_combout\ & ( \LowDigit0[2]~10_combout\ & ( (\KEY1~input_o\) # (\SW2~input_o\) ) ) ) # ( !\LessThan1~0_combout\ & ( !\LowDigit0[2]~10_combout\ & ( (\SW2~input_o\ & !\KEY1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000001011111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW2~input_o\,
	datac => \ALT_INV_KEY1~input_o\,
	datae => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_LowDigit0[2]~10_combout\,
	combout => \LowDigit0~27_combout\);

-- Location: LABCELL_X32_Y2_N9
\LowDigit0[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[2]~9_combout\ = ( \LowDigit0~27_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\LowDigit0[2]~9_combout\))) ) ) # ( !\LowDigit0~27_combout\ & ( (\LowDigit0[3]~20_combout\ & (\LowDigit0[2]~9_combout\ & !\CLK_ON~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_LowDigit0[2]~9_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit0~27_combout\,
	combout => \LowDigit0[2]~9_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LABCELL_X32_Y2_N18
\LowDigit0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0~25_combout\ = ( \KEY1~input_o\ & ( (!\LessThan1~0_combout\ & \LowDigit0[0]~2_combout\) ) ) # ( !\KEY1~input_o\ & ( (!\LessThan1~0_combout\ & \SW0~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_LowDigit0[0]~2_combout\,
	datad => \ALT_INV_SW0~input_o\,
	dataf => \ALT_INV_KEY1~input_o\,
	combout => \LowDigit0~25_combout\);

-- Location: LABCELL_X32_Y2_N48
\LowDigit0[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[0]~1_combout\ = ( \LowDigit0~25_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\LowDigit0[0]~1_combout\))) ) ) # ( !\LowDigit0~25_combout\ & ( (\LowDigit0[3]~20_combout\ & (\LowDigit0[0]~1_combout\ & !\CLK_ON~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_LowDigit0[0]~1_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit0~25_combout\,
	combout => \LowDigit0[0]~1_combout\);

-- Location: LABCELL_X32_Y2_N12
\LowDigit0[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[0]~3_combout\ = ( \LowDigit0[0]~1_combout\ & ( \LowDigit0[0]~2_combout\ ) ) # ( !\LowDigit0[0]~1_combout\ & ( !\LowDigit0[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LowDigit0[0]~2_combout\,
	dataf => \ALT_INV_LowDigit0[0]~1_combout\,
	combout => \LowDigit0[0]~3_combout\);

-- Location: FF_X32_Y2_N14
\LowDigit0[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit0[0]~3_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit0[0]~_emulated_q\);

-- Location: LABCELL_X32_Y2_N54
\LowDigit0[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[0]~2_combout\ = ( \LowDigit0[0]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((!\LowDigit0[0]~1_combout\))) # (\CLK_ON~input_o\ & (\LowDigit0~25_combout\)))) ) ) # ( !\LowDigit0[0]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((\LowDigit0[0]~1_combout\))) # (\CLK_ON~input_o\ & (\LowDigit0~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100100011000000010010001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK_ON~input_o\,
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_LowDigit0~25_combout\,
	datad => \ALT_INV_LowDigit0[0]~1_combout\,
	dataf => \ALT_INV_LowDigit0[0]~_emulated_q\,
	combout => \LowDigit0[0]~2_combout\);

-- Location: LABCELL_X32_Y2_N21
\LowDigit0[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[2]~11_combout\ = ( \LowDigit0[1]~6_combout\ & ( !\LowDigit0[0]~2_combout\ $ (!\LowDigit0[2]~10_combout\ $ (\LowDigit0[2]~9_combout\)) ) ) # ( !\LowDigit0[1]~6_combout\ & ( !\LowDigit0[2]~10_combout\ $ (!\LowDigit0[2]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[0]~2_combout\,
	datac => \ALT_INV_LowDigit0[2]~10_combout\,
	datad => \ALT_INV_LowDigit0[2]~9_combout\,
	dataf => \ALT_INV_LowDigit0[1]~6_combout\,
	combout => \LowDigit0[2]~11_combout\);

-- Location: FF_X32_Y2_N22
\LowDigit0[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit0[2]~11_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit0[2]~_emulated_q\);

-- Location: LABCELL_X32_Y2_N33
\LowDigit0[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[2]~10_combout\ = ( \LowDigit0[2]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\LowDigit0[2]~9_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit0~27_combout\))))) ) ) # ( !\LowDigit0[2]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\LowDigit0[2]~9_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit0~27_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_LowDigit0[2]~9_combout\,
	datad => \ALT_INV_LowDigit0~27_combout\,
	dataf => \ALT_INV_LowDigit0[2]~_emulated_q\,
	combout => \LowDigit0[2]~10_combout\);

-- Location: LABCELL_X32_Y2_N42
\LowDigit0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0~28_combout\ = ( \LowDigit0[3]~14_combout\ & ( (!\LessThan1~0_combout\ & ((\KEY1~input_o\) # (\SW3~input_o\))) ) ) # ( !\LowDigit0[3]~14_combout\ & ( (\SW3~input_o\ & (!\KEY1~input_o\ & !\LessThan1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW3~input_o\,
	datac => \ALT_INV_KEY1~input_o\,
	datad => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_LowDigit0[3]~14_combout\,
	combout => \LowDigit0~28_combout\);

-- Location: LABCELL_X32_Y2_N57
\LowDigit0[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[3]~13_combout\ = ( \LowDigit0~28_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\LowDigit0[3]~13_combout\) # (\CLK_ON~input_o\))) ) ) # ( !\LowDigit0~28_combout\ & ( (\LowDigit0[3]~20_combout\ & (!\CLK_ON~input_o\ & \LowDigit0[3]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_LowDigit0[3]~13_combout\,
	dataf => \ALT_INV_LowDigit0~28_combout\,
	combout => \LowDigit0[3]~13_combout\);

-- Location: LABCELL_X32_Y2_N45
\Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ( \LowDigit0[1]~6_combout\ & ( (\LowDigit0[2]~10_combout\ & \LowDigit0[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[2]~10_combout\,
	datad => \ALT_INV_LowDigit0[0]~2_combout\,
	dataf => \ALT_INV_LowDigit0[1]~6_combout\,
	combout => \Add3~0_combout\);

-- Location: LABCELL_X32_Y2_N51
\LowDigit0[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[3]~15_combout\ = ( \Equal0~0_combout\ & ( \LowDigit0[3]~13_combout\ ) ) # ( !\Equal0~0_combout\ & ( !\LowDigit0[3]~14_combout\ $ (!\LowDigit0[3]~13_combout\ $ (\Add3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~14_combout\,
	datac => \ALT_INV_LowDigit0[3]~13_combout\,
	datad => \ALT_INV_Add3~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \LowDigit0[3]~15_combout\);

-- Location: FF_X32_Y2_N52
\LowDigit0[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit0[3]~15_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit0[3]~_emulated_q\);

-- Location: LABCELL_X32_Y2_N30
\LowDigit0[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[3]~14_combout\ = ( \LowDigit0[3]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((!\LowDigit0[3]~13_combout\))) # (\CLK_ON~input_o\ & (\LowDigit0~28_combout\)))) ) ) # ( !\LowDigit0[3]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((\LowDigit0[3]~13_combout\))) # (\CLK_ON~input_o\ & (\LowDigit0~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_LowDigit0~28_combout\,
	datad => \ALT_INV_LowDigit0[3]~13_combout\,
	dataf => \ALT_INV_LowDigit0[3]~_emulated_q\,
	combout => \LowDigit0[3]~14_combout\);

-- Location: LABCELL_X32_Y2_N3
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \LowDigit0[1]~6_combout\ & ( \LowDigit0[3]~14_combout\ ) ) # ( !\LowDigit0[1]~6_combout\ & ( (\LowDigit0[2]~10_combout\ & \LowDigit0[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[2]~10_combout\,
	datac => \ALT_INV_LowDigit0[3]~14_combout\,
	dataf => \ALT_INV_LowDigit0[1]~6_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X32_Y2_N15
\LowDigit0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0~26_combout\ = ( \LowDigit0[1]~6_combout\ & ( (!\LessThan1~0_combout\ & ((\SW1~input_o\) # (\KEY1~input_o\))) ) ) # ( !\LowDigit0[1]~6_combout\ & ( (!\KEY1~input_o\ & (\SW1~input_o\ & !\LessThan1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY1~input_o\,
	datac => \ALT_INV_SW1~input_o\,
	datad => \ALT_INV_LessThan1~0_combout\,
	dataf => \ALT_INV_LowDigit0[1]~6_combout\,
	combout => \LowDigit0~26_combout\);

-- Location: LABCELL_X32_Y2_N0
\LowDigit0[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[1]~5_combout\ = ( \LowDigit0~26_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\LowDigit0[1]~5_combout\))) ) ) # ( !\LowDigit0~26_combout\ & ( (\LowDigit0[3]~20_combout\ & (\LowDigit0[1]~5_combout\ & !\CLK_ON~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_LowDigit0[1]~5_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit0~26_combout\,
	combout => \LowDigit0[1]~5_combout\);

-- Location: LABCELL_X32_Y2_N39
\LowDigit0[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[1]~7_combout\ = ( \LowDigit0[0]~2_combout\ & ( \LowDigit0[1]~6_combout\ & ( \LowDigit0[1]~5_combout\ ) ) ) # ( !\LowDigit0[0]~2_combout\ & ( \LowDigit0[1]~6_combout\ & ( !\LowDigit0[1]~5_combout\ $ (\Equal0~0_combout\) ) ) ) # ( 
-- \LowDigit0[0]~2_combout\ & ( !\LowDigit0[1]~6_combout\ & ( !\LowDigit0[1]~5_combout\ $ (\Equal0~0_combout\) ) ) ) # ( !\LowDigit0[0]~2_combout\ & ( !\LowDigit0[1]~6_combout\ & ( \LowDigit0[1]~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010100101010110101010010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~5_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_LowDigit0[0]~2_combout\,
	dataf => \ALT_INV_LowDigit0[1]~6_combout\,
	combout => \LowDigit0[1]~7_combout\);

-- Location: FF_X32_Y2_N40
\LowDigit0[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit0[1]~7_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit0[1]~_emulated_q\);

-- Location: LABCELL_X32_Y2_N6
\LowDigit0[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit0[1]~6_combout\ = ( \LowDigit0[1]~5_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\LowDigit0[1]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\LowDigit0~26_combout\))))) ) ) # ( !\LowDigit0[1]~5_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\LowDigit0[1]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\LowDigit0~26_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000100000001001100100000001000110010000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~_emulated_q\,
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_LowDigit0~26_combout\,
	dataf => \ALT_INV_LowDigit0[1]~5_combout\,
	combout => \LowDigit0[1]~6_combout\);

-- Location: LABCELL_X32_Y1_N15
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\LowDigit0[2]~10_combout\ & ( \LowDigit0[0]~2_combout\ & ( (!\LowDigit0[1]~6_combout\ & \LowDigit0[3]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~6_combout\,
	datad => \ALT_INV_LowDigit0[3]~14_combout\,
	datae => \ALT_INV_LowDigit0[2]~10_combout\,
	dataf => \ALT_INV_LowDigit0[0]~2_combout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X36_Y1_N48
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( \HighDigit0[1]~6_combout\ & ( \HighDigit0[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HighDigit0[0]~2_combout\,
	dataf => \ALT_INV_HighDigit0[1]~6_combout\,
	combout => \Add2~0_combout\);

-- Location: MLABCELL_X34_Y1_N39
\HighDigit0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0~28_combout\ = ( \HighDigit0[2]~10_combout\ & ( (\LessThan2~0_combout\ & ((\SW6~input_o\) # (\KEY1~input_o\))) ) ) # ( !\HighDigit0[2]~10_combout\ & ( (!\KEY1~input_o\ & (\LessThan2~0_combout\ & \SW6~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY1~input_o\,
	datab => \ALT_INV_LessThan2~0_combout\,
	datac => \ALT_INV_SW6~input_o\,
	dataf => \ALT_INV_HighDigit0[2]~10_combout\,
	combout => \HighDigit0~28_combout\);

-- Location: MLABCELL_X34_Y1_N18
\HighDigit0[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[2]~9_combout\ = ( \HighDigit0~28_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\HighDigit0[2]~9_combout\))) ) ) # ( !\HighDigit0~28_combout\ & ( (\LowDigit0[3]~20_combout\ & (\HighDigit0[2]~9_combout\ & !\CLK_ON~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_HighDigit0[2]~9_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_HighDigit0~28_combout\,
	combout => \HighDigit0[2]~9_combout\);

-- Location: MLABCELL_X34_Y1_N15
\HighDigit0[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[2]~11_combout\ = ( \Equal1~1_combout\ & ( \HighDigit0[2]~9_combout\ ) ) # ( !\Equal1~1_combout\ & ( !\HighDigit0[2]~10_combout\ $ (!\HighDigit0[2]~9_combout\ $ (\Add2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit0[2]~10_combout\,
	datac => \ALT_INV_HighDigit0[2]~9_combout\,
	datad => \ALT_INV_Add2~0_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \HighDigit0[2]~11_combout\);

-- Location: FF_X34_Y1_N16
\HighDigit0[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit0[2]~11_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit0[2]~_emulated_q\);

-- Location: MLABCELL_X34_Y1_N48
\HighDigit0[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[2]~10_combout\ = ( \HighDigit0[2]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit0[2]~9_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit0~28_combout\))))) ) ) # ( !\HighDigit0[2]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit0[2]~9_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit0~28_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit0[2]~9_combout\,
	datad => \ALT_INV_HighDigit0~28_combout\,
	dataf => \ALT_INV_HighDigit0[2]~_emulated_q\,
	combout => \HighDigit0[2]~10_combout\);

-- Location: LABCELL_X35_Y1_N15
\HighDigit0[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[3]~24_combout\ = ( \HighDigit0[3]~14_combout\ & ( (!\Equal0~0_combout\) # ((!\Add2~0_combout\) # (!\HighDigit0[2]~10_combout\)) ) ) # ( !\HighDigit0[3]~14_combout\ & ( (\Equal0~0_combout\ & (\Add2~0_combout\ & \HighDigit0[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add2~0_combout\,
	datad => \ALT_INV_HighDigit0[2]~10_combout\,
	dataf => \ALT_INV_HighDigit0[3]~14_combout\,
	combout => \HighDigit0[3]~24_combout\);

-- Location: MLABCELL_X34_Y1_N24
\HighDigit0[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[3]~15_combout\ = ( \HighDigit0[3]~24_combout\ & ( !\HighDigit0[3]~13_combout\ ) ) # ( !\HighDigit0[3]~24_combout\ & ( \HighDigit0[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_HighDigit0[3]~13_combout\,
	dataf => \ALT_INV_HighDigit0[3]~24_combout\,
	combout => \HighDigit0[3]~15_combout\);

-- Location: FF_X34_Y1_N25
\HighDigit0[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit0[3]~15_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit0[3]~_emulated_q\);

-- Location: MLABCELL_X34_Y1_N0
\HighDigit0[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[3]~14_combout\ = ( \HighDigit0[3]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit0[3]~13_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit0~25_combout\))))) ) ) # ( !\HighDigit0[3]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit0[3]~13_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit0~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit0[3]~13_combout\,
	datad => \ALT_INV_HighDigit0~25_combout\,
	dataf => \ALT_INV_HighDigit0[3]~_emulated_q\,
	combout => \HighDigit0[3]~14_combout\);

-- Location: MLABCELL_X34_Y1_N12
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\HighDigit0[3]~14_combout\ & ( \Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_HighDigit0[3]~14_combout\,
	combout => \Equal1~1_combout\);

-- Location: MLABCELL_X34_Y1_N42
\HighDigit0[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[1]~7_combout\ = ( \Equal1~1_combout\ & ( \HighDigit0[1]~5_combout\ ) ) # ( !\Equal1~1_combout\ & ( !\HighDigit0[1]~5_combout\ $ (!\HighDigit0[0]~2_combout\ $ (\HighDigit0[1]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit0[1]~5_combout\,
	datac => \ALT_INV_HighDigit0[0]~2_combout\,
	datad => \ALT_INV_HighDigit0[1]~6_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \HighDigit0[1]~7_combout\);

-- Location: FF_X34_Y1_N44
\HighDigit0[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit0[1]~7_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit0[1]~_emulated_q\);

-- Location: MLABCELL_X34_Y1_N27
\HighDigit0[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[1]~6_combout\ = ( \HighDigit0[1]~5_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit0[1]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit0~27_combout\))))) ) ) # ( !\HighDigit0[1]~5_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit0[1]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit0~27_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000001000000011100001000000010110000100000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit0[1]~_emulated_q\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_LowDigit0[3]~20_combout\,
	datad => \ALT_INV_HighDigit0~27_combout\,
	dataf => \ALT_INV_HighDigit0[1]~5_combout\,
	combout => \HighDigit0[1]~6_combout\);

-- Location: MLABCELL_X34_Y1_N57
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \HighDigit0[2]~10_combout\ & ( (!\HighDigit0[1]~6_combout\ & !\HighDigit0[3]~14_combout\) ) ) # ( !\HighDigit0[2]~10_combout\ & ( !\HighDigit0[3]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HighDigit0[1]~6_combout\,
	datad => \ALT_INV_HighDigit0[3]~14_combout\,
	dataf => \ALT_INV_HighDigit0[2]~10_combout\,
	combout => \LessThan2~0_combout\);

-- Location: MLABCELL_X34_Y1_N36
\HighDigit0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0~26_combout\ = ( \LessThan2~0_combout\ & ( (!\KEY1~input_o\ & (\SW4~input_o\)) # (\KEY1~input_o\ & ((\HighDigit0[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY1~input_o\,
	datac => \ALT_INV_SW4~input_o\,
	datad => \ALT_INV_HighDigit0[0]~2_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \HighDigit0~26_combout\);

-- Location: MLABCELL_X34_Y1_N21
\HighDigit0[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[0]~1_combout\ = ( \HighDigit0~26_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\HighDigit0[0]~1_combout\) # (\CLK_ON~input_o\))) ) ) # ( !\HighDigit0~26_combout\ & ( (\LowDigit0[3]~20_combout\ & (!\CLK_ON~input_o\ & \HighDigit0[0]~1_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_HighDigit0[0]~1_combout\,
	dataf => \ALT_INV_HighDigit0~26_combout\,
	combout => \HighDigit0[0]~1_combout\);

-- Location: LABCELL_X36_Y1_N15
\HighDigit0[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[0]~3_combout\ = ( \HighDigit0[0]~1_combout\ & ( \HighDigit0[0]~2_combout\ ) ) # ( !\HighDigit0[0]~1_combout\ & ( !\HighDigit0[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_HighDigit0[0]~2_combout\,
	dataf => \ALT_INV_HighDigit0[0]~1_combout\,
	combout => \HighDigit0[0]~3_combout\);

-- Location: FF_X36_Y1_N17
\HighDigit0[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit0[0]~3_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit0[0]~_emulated_q\);

-- Location: LABCELL_X35_Y1_N27
\HighDigit0[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit0[0]~2_combout\ = ( \HighDigit0[0]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((!\HighDigit0[0]~1_combout\))) # (\CLK_ON~input_o\ & (\HighDigit0~26_combout\)))) ) ) # ( !\HighDigit0[0]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((\HighDigit0[0]~1_combout\))) # (\CLK_ON~input_o\ & (\HighDigit0~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit0~26_combout\,
	datad => \ALT_INV_HighDigit0[0]~1_combout\,
	dataf => \ALT_INV_HighDigit0[0]~_emulated_q\,
	combout => \HighDigit0[0]~2_combout\);

-- Location: LABCELL_X35_Y1_N45
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \HighDigit0[2]~10_combout\ & ( (\HighDigit0[0]~2_combout\ & !\HighDigit0[1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HighDigit0[0]~2_combout\,
	datad => \ALT_INV_HighDigit0[1]~6_combout\,
	dataf => \ALT_INV_HighDigit0[2]~10_combout\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X35_Y1_N30
\LowDigit1[3]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[3]~26_combout\ = ( \HighDigit0[3]~14_combout\ & ( !\Equal2~0_combout\ ) ) # ( !\HighDigit0[3]~14_combout\ & ( (!\Equal2~0_combout\ & ((!\Equal1~0_combout\) # (!\Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_HighDigit0[3]~14_combout\,
	combout => \LowDigit1[3]~26_combout\);

-- Location: LABCELL_X35_Y1_N18
\LowDigit1[1]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[1]~27_combout\ = ( \LowDigit1[1]~6_combout\ & ( !\HighDigit0[3]~14_combout\ & ( (!\Equal2~0_combout\ & (\Equal1~0_combout\ & (\Equal0~0_combout\ & !\LowDigit1[0]~2_combout\))) ) ) ) # ( !\LowDigit1[1]~6_combout\ & ( !\HighDigit0[3]~14_combout\ 
-- & ( (!\Equal2~0_combout\ & (\Equal1~0_combout\ & (\Equal0~0_combout\ & \LowDigit1[0]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_LowDigit1[0]~2_combout\,
	datae => \ALT_INV_LowDigit1[1]~6_combout\,
	dataf => \ALT_INV_HighDigit0[3]~14_combout\,
	combout => \LowDigit1[1]~27_combout\);

-- Location: LABCELL_X35_Y1_N3
\LowDigit1[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[1]~7_combout\ = ( \LowDigit1[1]~27_combout\ & ( !\LowDigit1[1]~5_combout\ ) ) # ( !\LowDigit1[1]~27_combout\ & ( !\LowDigit1[1]~5_combout\ $ (((!\LowDigit1[3]~26_combout\) # (!\LowDigit1[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[1]~5_combout\,
	datac => \ALT_INV_LowDigit1[3]~26_combout\,
	datad => \ALT_INV_LowDigit1[1]~6_combout\,
	dataf => \ALT_INV_LowDigit1[1]~27_combout\,
	combout => \LowDigit1[1]~7_combout\);

-- Location: FF_X35_Y1_N4
\LowDigit1[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit1[1]~7_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit1[1]~_emulated_q\);

-- Location: LABCELL_X35_Y1_N54
\LowDigit1[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[1]~6_combout\ = ( \LowDigit1[1]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((!\LowDigit1[1]~5_combout\))) # (\CLK_ON~input_o\ & (\LowDigit1~28_combout\)))) ) ) # ( !\LowDigit1[1]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((\LowDigit1[1]~5_combout\))) # (\CLK_ON~input_o\ & (\LowDigit1~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000101010000000100010101000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_LowDigit1~28_combout\,
	datac => \ALT_INV_LowDigit1[1]~5_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit1[1]~_emulated_q\,
	combout => \LowDigit1[1]~6_combout\);

-- Location: LABCELL_X32_Y1_N9
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( \LowDigit1[1]~6_combout\ & ( \LowDigit1[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_LowDigit1[0]~2_combout\,
	dataf => \ALT_INV_LowDigit1[1]~6_combout\,
	combout => \Add1~0_combout\);

-- Location: LABCELL_X32_Y1_N18
\LowDigit1[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[2]~11_combout\ = ( \LowDigit1[2]~10_combout\ & ( !\LowDigit1[2]~9_combout\ $ (((\Add1~0_combout\ & !\LowDigit1[3]~26_combout\))) ) ) # ( !\LowDigit1[2]~10_combout\ & ( !\LowDigit1[2]~9_combout\ $ (((!\Add1~0_combout\) # 
-- (\LowDigit1[3]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001111000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit1[2]~9_combout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_LowDigit1[3]~26_combout\,
	dataf => \ALT_INV_LowDigit1[2]~10_combout\,
	combout => \LowDigit1[2]~11_combout\);

-- Location: FF_X32_Y1_N19
\LowDigit1[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit1[2]~11_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit1[2]~_emulated_q\);

-- Location: LABCELL_X32_Y1_N39
\LowDigit1[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[2]~10_combout\ = ( \LowDigit1[2]~_emulated_q\ & ( \LowDigit1[2]~9_combout\ & ( (\LowDigit0[3]~20_combout\ & (\CLK_ON~input_o\ & \LowDigit1~29_combout\)) ) ) ) # ( !\LowDigit1[2]~_emulated_q\ & ( \LowDigit1[2]~9_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\) # (\LowDigit1~29_combout\))) ) ) ) # ( \LowDigit1[2]~_emulated_q\ & ( !\LowDigit1[2]~9_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\) # (\LowDigit1~29_combout\))) ) ) ) # ( 
-- !\LowDigit1[2]~_emulated_q\ & ( !\LowDigit1[2]~9_combout\ & ( (\LowDigit0[3]~20_combout\ & (\CLK_ON~input_o\ & \LowDigit1~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100000011001100110000001100110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_LowDigit1~29_combout\,
	datae => \ALT_INV_LowDigit1[2]~_emulated_q\,
	dataf => \ALT_INV_LowDigit1[2]~9_combout\,
	combout => \LowDigit1[2]~10_combout\);

-- Location: LABCELL_X35_Y1_N12
\LowDigit1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1~31_combout\ = ( \LowDigit1[3]~14_combout\ & ( (!\LessThan3~0_combout\ & ((\SW3~input_o\) # (\KEY2~input_o\))) ) ) # ( !\LowDigit1[3]~14_combout\ & ( (!\LessThan3~0_combout\ & (!\KEY2~input_o\ & \SW3~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_KEY2~input_o\,
	datad => \ALT_INV_SW3~input_o\,
	dataf => \ALT_INV_LowDigit1[3]~14_combout\,
	combout => \LowDigit1~31_combout\);

-- Location: LABCELL_X35_Y1_N36
\LowDigit1[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[3]~13_combout\ = ( \LowDigit1~31_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\LowDigit1[3]~13_combout\) # (\CLK_ON~input_o\))) ) ) # ( !\LowDigit1~31_combout\ & ( (\LowDigit0[3]~20_combout\ & (!\CLK_ON~input_o\ & \LowDigit1[3]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_LowDigit1[3]~13_combout\,
	dataf => \ALT_INV_LowDigit1~31_combout\,
	combout => \LowDigit1[3]~13_combout\);

-- Location: LABCELL_X36_Y1_N57
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( \LowDigit1[2]~10_combout\ & ( !\LowDigit1[3]~14_combout\ $ (((!\LowDigit1[1]~6_combout\) # (!\LowDigit1[0]~2_combout\))) ) ) # ( !\LowDigit1[2]~10_combout\ & ( \LowDigit1[3]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[1]~6_combout\,
	datac => \ALT_INV_LowDigit1[0]~2_combout\,
	datad => \ALT_INV_LowDigit1[3]~14_combout\,
	dataf => \ALT_INV_LowDigit1[2]~10_combout\,
	combout => \Add1~1_combout\);

-- Location: LABCELL_X36_Y1_N18
\LowDigit1[3]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[3]~30_combout\ = ( !\Equal2~0_combout\ & ( (\Equal0~0_combout\ & (!\HighDigit0[3]~14_combout\ & (\Equal1~0_combout\ & \Add1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_HighDigit0[3]~14_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \LowDigit1[3]~30_combout\);

-- Location: LABCELL_X35_Y1_N33
\LowDigit1[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[3]~15_combout\ = ( \LowDigit1[3]~26_combout\ & ( !\LowDigit1[3]~13_combout\ $ (((!\LowDigit1[3]~14_combout\ & !\LowDigit1[3]~30_combout\))) ) ) # ( !\LowDigit1[3]~26_combout\ & ( !\LowDigit1[3]~13_combout\ $ (!\LowDigit1[3]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[3]~14_combout\,
	datac => \ALT_INV_LowDigit1[3]~13_combout\,
	datad => \ALT_INV_LowDigit1[3]~30_combout\,
	dataf => \ALT_INV_LowDigit1[3]~26_combout\,
	combout => \LowDigit1[3]~15_combout\);

-- Location: FF_X35_Y1_N34
\LowDigit1[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit1[3]~15_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit1[3]~_emulated_q\);

-- Location: LABCELL_X35_Y1_N24
\LowDigit1[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[3]~14_combout\ = ( \LowDigit1[3]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\LowDigit1[3]~13_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit1~31_combout\))))) ) ) # ( !\LowDigit1[3]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\LowDigit1[3]~13_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit1~31_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_LowDigit1[3]~13_combout\,
	datad => \ALT_INV_LowDigit1~31_combout\,
	dataf => \ALT_INV_LowDigit1[3]~_emulated_q\,
	combout => \LowDigit1[3]~14_combout\);

-- Location: LABCELL_X35_Y1_N6
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( \LowDigit1[3]~14_combout\ & ( (\LowDigit1[1]~6_combout\) # (\LowDigit1[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LowDigit1[2]~10_combout\,
	datad => \ALT_INV_LowDigit1[1]~6_combout\,
	dataf => \ALT_INV_LowDigit1[3]~14_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X35_Y1_N39
\LowDigit1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1~25_combout\ = ( \LowDigit1[0]~2_combout\ & ( (!\LessThan3~0_combout\ & ((\SW0~input_o\) # (\KEY2~input_o\))) ) ) # ( !\LowDigit1[0]~2_combout\ & ( (!\LessThan3~0_combout\ & (!\KEY2~input_o\ & \SW0~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_KEY2~input_o\,
	datad => \ALT_INV_SW0~input_o\,
	dataf => \ALT_INV_LowDigit1[0]~2_combout\,
	combout => \LowDigit1~25_combout\);

-- Location: LABCELL_X35_Y1_N0
\LowDigit1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[0]~1_combout\ = ( \LowDigit1~25_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\LowDigit1[0]~1_combout\) # (\CLK_ON~input_o\))) ) ) # ( !\LowDigit1~25_combout\ & ( (\LowDigit0[3]~20_combout\ & (!\CLK_ON~input_o\ & \LowDigit1[0]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_LowDigit1[0]~1_combout\,
	dataf => \ALT_INV_LowDigit1~25_combout\,
	combout => \LowDigit1[0]~1_combout\);

-- Location: LABCELL_X36_Y1_N33
\LowDigit1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1~24_combout\ = ( \Equal0~0_combout\ & ( (!\HighDigit0[3]~14_combout\ & \Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HighDigit0[3]~14_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \LowDigit1~24_combout\);

-- Location: LABCELL_X36_Y1_N9
\LowDigit1[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[0]~3_combout\ = ( \LowDigit1~24_combout\ & ( !\LowDigit1[0]~2_combout\ $ (\LowDigit1[0]~1_combout\) ) ) # ( !\LowDigit1~24_combout\ & ( !\LowDigit1[0]~2_combout\ $ (!\LowDigit1[0]~1_combout\ $ (\Equal2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit1[0]~2_combout\,
	datac => \ALT_INV_LowDigit1[0]~1_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_LowDigit1~24_combout\,
	combout => \LowDigit1[0]~3_combout\);

-- Location: FF_X36_Y1_N11
\LowDigit1[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit1[0]~3_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit1[0]~_emulated_q\);

-- Location: LABCELL_X36_Y1_N12
\LowDigit1[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit1[0]~2_combout\ = ( \LowDigit1[0]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\LowDigit1[0]~1_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit1~25_combout\))))) ) ) # ( !\LowDigit1[0]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\LowDigit1[0]~1_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit1~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011100001000000011010000100000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK_ON~input_o\,
	datab => \ALT_INV_LowDigit1[0]~1_combout\,
	datac => \ALT_INV_LowDigit0[3]~20_combout\,
	datad => \ALT_INV_LowDigit1~25_combout\,
	dataf => \ALT_INV_LowDigit1[0]~_emulated_q\,
	combout => \LowDigit1[0]~2_combout\);

-- Location: LABCELL_X36_Y1_N6
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\LowDigit1[2]~10_combout\ & ( (\LowDigit1[0]~2_combout\ & (!\LowDigit1[1]~6_combout\ & \LowDigit1[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit1[0]~2_combout\,
	datac => \ALT_INV_LowDigit1[1]~6_combout\,
	datad => \ALT_INV_LowDigit1[3]~14_combout\,
	dataf => \ALT_INV_LowDigit1[2]~10_combout\,
	combout => \Equal2~0_combout\);

-- Location: FF_X39_Y2_N10
\HighDigit1[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit1[2]~11_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit1[2]~_emulated_q\);

-- Location: LABCELL_X39_Y2_N42
\HighDigit1[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[2]~10_combout\ = ( \HighDigit1[2]~9_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit1[2]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit1~28_combout\))))) ) ) # ( !\HighDigit1[2]~9_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit1[2]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit1~28_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000100011010000000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK_ON~input_o\,
	datab => \ALT_INV_HighDigit1[2]~_emulated_q\,
	datac => \ALT_INV_HighDigit1~28_combout\,
	datad => \ALT_INV_LowDigit0[3]~20_combout\,
	dataf => \ALT_INV_HighDigit1[2]~9_combout\,
	combout => \HighDigit1[2]~10_combout\);

-- Location: LABCELL_X36_Y2_N48
\HighDigit1[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[3]~24_combout\ = ( \HighDigit1[3]~14_combout\ & ( (!\HighDigit1[2]~10_combout\) # ((!\Add5~0_combout\) # (!\Equal2~0_combout\)) ) ) # ( !\HighDigit1[3]~14_combout\ & ( (\HighDigit1[2]~10_combout\ & (\Add5~0_combout\ & \Equal2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit1[2]~10_combout\,
	datac => \ALT_INV_Add5~0_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_HighDigit1[3]~14_combout\,
	combout => \HighDigit1[3]~24_combout\);

-- Location: LABCELL_X36_Y2_N36
\HighDigit1[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[3]~15_combout\ = ( \HighDigit1[3]~24_combout\ & ( !\HighDigit1[3]~13_combout\ ) ) # ( !\HighDigit1[3]~24_combout\ & ( \HighDigit1[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_HighDigit1[3]~13_combout\,
	dataf => \ALT_INV_HighDigit1[3]~24_combout\,
	combout => \HighDigit1[3]~15_combout\);

-- Location: FF_X36_Y2_N38
\HighDigit1[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit1[3]~15_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit1[3]~_emulated_q\);

-- Location: LABCELL_X36_Y2_N30
\HighDigit1[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[3]~14_combout\ = ( \HighDigit1[3]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit1[3]~13_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit1~25_combout\))))) ) ) # ( !\HighDigit1[3]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit1[3]~13_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit1~25_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit1[3]~13_combout\,
	datad => \ALT_INV_HighDigit1~25_combout\,
	dataf => \ALT_INV_HighDigit1[3]~_emulated_q\,
	combout => \HighDigit1[3]~14_combout\);

-- Location: LABCELL_X39_Y2_N12
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( \HighDigit1[2]~10_combout\ & ( (!\HighDigit1[1]~6_combout\ & (\HighDigit1[0]~2_combout\ & !\HighDigit1[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit1[1]~6_combout\,
	datac => \ALT_INV_HighDigit1[0]~2_combout\,
	datad => \ALT_INV_HighDigit1[3]~14_combout\,
	dataf => \ALT_INV_HighDigit1[2]~10_combout\,
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X36_Y2_N9
\HighDigit1[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[1]~7_combout\ = ( \HighDigit1[1]~6_combout\ & ( !\HighDigit1[1]~5_combout\ $ (((\Equal3~0_combout\) # (\HighDigit1[0]~2_combout\))) ) ) # ( !\HighDigit1[1]~6_combout\ & ( !\HighDigit1[1]~5_combout\ $ (((!\HighDigit1[0]~2_combout\) # 
-- (\Equal3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001111010110100000111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit1[0]~2_combout\,
	datac => \ALT_INV_HighDigit1[1]~5_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \HighDigit1[1]~7_combout\);

-- Location: FF_X36_Y2_N10
\HighDigit1[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit1[1]~7_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit1[1]~_emulated_q\);

-- Location: LABCELL_X36_Y2_N39
\HighDigit1[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[1]~6_combout\ = ( \HighDigit1[1]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit1[1]~5_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit1~27_combout\))))) ) ) # ( !\HighDigit1[1]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit1[1]~5_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit1~27_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit1[1]~5_combout\,
	datad => \ALT_INV_HighDigit1~27_combout\,
	dataf => \ALT_INV_HighDigit1[1]~_emulated_q\,
	combout => \HighDigit1[1]~6_combout\);

-- Location: LABCELL_X36_Y2_N42
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( !\HighDigit1[3]~14_combout\ & ( (!\HighDigit1[1]~6_combout\) # (!\HighDigit1[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit1[1]~6_combout\,
	datad => \ALT_INV_HighDigit1[2]~10_combout\,
	dataf => \ALT_INV_HighDigit1[3]~14_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X36_Y2_N27
\HighDigit1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1~26_combout\ = ( \HighDigit1[0]~2_combout\ & ( (\LessThan4~0_combout\ & ((\KEY2~input_o\) # (\SW4~input_o\))) ) ) # ( !\HighDigit1[0]~2_combout\ & ( (\LessThan4~0_combout\ & (\SW4~input_o\ & !\KEY2~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan4~0_combout\,
	datac => \ALT_INV_SW4~input_o\,
	datad => \ALT_INV_KEY2~input_o\,
	dataf => \ALT_INV_HighDigit1[0]~2_combout\,
	combout => \HighDigit1~26_combout\);

-- Location: LABCELL_X36_Y2_N18
\HighDigit1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[0]~1_combout\ = ( \HighDigit1[0]~1_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\) # (\HighDigit1~26_combout\))) ) ) # ( !\HighDigit1[0]~1_combout\ & ( (\HighDigit1~26_combout\ & (\LowDigit0[3]~20_combout\ & \CLK_ON~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit1~26_combout\,
	datac => \ALT_INV_LowDigit0[3]~20_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_HighDigit1[0]~1_combout\,
	combout => \HighDigit1[0]~1_combout\);

-- Location: LABCELL_X36_Y2_N54
\HighDigit1[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[0]~3_combout\ = ( \HighDigit1[0]~1_combout\ & ( \HighDigit1[0]~2_combout\ ) ) # ( !\HighDigit1[0]~1_combout\ & ( !\HighDigit1[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit1[0]~2_combout\,
	dataf => \ALT_INV_HighDigit1[0]~1_combout\,
	combout => \HighDigit1[0]~3_combout\);

-- Location: FF_X36_Y2_N55
\HighDigit1[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit1[0]~3_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit1[0]~_emulated_q\);

-- Location: LABCELL_X36_Y2_N33
\HighDigit1[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit1[0]~2_combout\ = ( \HighDigit1[0]~1_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit1[0]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit1~26_combout\))))) ) ) # ( !\HighDigit1[0]~1_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit1[0]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit1~26_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit1[0]~_emulated_q\,
	datad => \ALT_INV_HighDigit1~26_combout\,
	dataf => \ALT_INV_HighDigit1[0]~1_combout\,
	combout => \HighDigit1[0]~2_combout\);

-- Location: LABCELL_X36_Y2_N57
\LowDigit2~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~26_combout\ = ( !\HighDigit1[1]~6_combout\ & ( (\HighDigit1[0]~2_combout\ & (\HighDigit1[2]~10_combout\ & (!\HighDigit1[3]~14_combout\ & \Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit1[0]~2_combout\,
	datab => \ALT_INV_HighDigit1[2]~10_combout\,
	datac => \ALT_INV_HighDigit1[3]~14_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \LowDigit2~26_combout\);

-- Location: LABCELL_X39_Y2_N24
\LowDigit2~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~35_combout\ = ( \LowDigit2~31_combout\ & ( (!\KEY3~input_o\ & ((\SW0~input_o\))) # (\KEY3~input_o\ & (\LowDigit2[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY3~input_o\,
	datac => \ALT_INV_LowDigit2[0]~2_combout\,
	datad => \ALT_INV_SW0~input_o\,
	dataf => \ALT_INV_LowDigit2~31_combout\,
	combout => \LowDigit2~35_combout\);

-- Location: LABCELL_X39_Y2_N57
\LowDigit2[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[0]~1_combout\ = ( \LowDigit2~35_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\CLK_ON~input_o\) # (\LowDigit2[0]~1_combout\))) ) ) # ( !\LowDigit2~35_combout\ & ( (\LowDigit0[3]~20_combout\ & (\LowDigit2[0]~1_combout\ & !\CLK_ON~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_LowDigit2[0]~1_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LowDigit2~35_combout\,
	combout => \LowDigit2[0]~1_combout\);

-- Location: LABCELL_X35_Y2_N24
\HighDigit2~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2~20_combout\ = (!\LowDigit2[0]~2_combout\ & !\LowDigit2[3]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LowDigit2[0]~2_combout\,
	datad => \ALT_INV_LowDigit2[3]~14_combout\,
	combout => \HighDigit2~20_combout\);

-- Location: LABCELL_X35_Y2_N12
\LowDigit2~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~24_combout\ = ( \LowDigit2[2]~10_combout\ & ( (\HighDigit2[0]~2_combout\ & (\HighDigit2[1]~6_combout\ & (\MODE24~input_o\ & \LowDigit2[1]~6_combout\))) ) ) # ( !\LowDigit2[2]~10_combout\ & ( (!\HighDigit2[0]~2_combout\ & 
-- (!\HighDigit2[1]~6_combout\ & (!\MODE24~input_o\ & !\LowDigit2[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[0]~2_combout\,
	datab => \ALT_INV_HighDigit2[1]~6_combout\,
	datac => \ALT_INV_MODE24~input_o\,
	datad => \ALT_INV_LowDigit2[1]~6_combout\,
	dataf => \ALT_INV_LowDigit2[2]~10_combout\,
	combout => \LowDigit2~24_combout\);

-- Location: LABCELL_X35_Y2_N6
\LowDigit2~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~27_combout\ = ( \LowDigit2~24_combout\ & ( (!\HighDigit2[3]~14_combout\ & (\HighDigit2~20_combout\ & !\HighDigit2[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datac => \ALT_INV_HighDigit2~20_combout\,
	datad => \ALT_INV_HighDigit2[2]~10_combout\,
	dataf => \ALT_INV_LowDigit2~24_combout\,
	combout => \LowDigit2~27_combout\);

-- Location: LABCELL_X36_Y2_N15
\LowDigit2[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[0]~3_combout\ = ( \LowDigit2~27_combout\ & ( \LowDigit2[0]~1_combout\ ) ) # ( !\LowDigit2~27_combout\ & ( !\LowDigit2[0]~2_combout\ $ (!\LowDigit2[0]~1_combout\ $ (\LowDigit2~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[0]~2_combout\,
	datab => \ALT_INV_LowDigit2[0]~1_combout\,
	datac => \ALT_INV_LowDigit2~26_combout\,
	dataf => \ALT_INV_LowDigit2~27_combout\,
	combout => \LowDigit2[0]~3_combout\);

-- Location: FF_X36_Y2_N17
\LowDigit2[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit2[0]~3_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit2[0]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N30
\LowDigit2[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[0]~2_combout\ = ( \LowDigit2[0]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\LowDigit2[0]~1_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit2~35_combout\))))) ) ) # ( !\LowDigit2[0]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\LowDigit2[0]~1_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit2~35_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_LowDigit2[0]~1_combout\,
	datad => \ALT_INV_LowDigit2~35_combout\,
	dataf => \ALT_INV_LowDigit2[0]~_emulated_q\,
	combout => \LowDigit2[0]~2_combout\);

-- Location: LABCELL_X35_Y2_N48
\LowDigit2[2]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[2]~33_combout\ = ( !\LowDigit2~27_combout\ & ( (\LowDigit2~26_combout\ & (!\LowDigit2[2]~10_combout\ $ (((!\LowDigit2[0]~2_combout\) # (\LowDigit2[1]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010001000100100001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[2]~10_combout\,
	datab => \ALT_INV_LowDigit2~26_combout\,
	datac => \ALT_INV_LowDigit2[0]~2_combout\,
	datad => \ALT_INV_LowDigit2[1]~6_combout\,
	dataf => \ALT_INV_LowDigit2~27_combout\,
	combout => \LowDigit2[2]~33_combout\);

-- Location: LABCELL_X35_Y2_N33
\LowDigit2[3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[3]~28_combout\ = ( !\LowDigit2~27_combout\ & ( !\LowDigit2~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_LowDigit2~26_combout\,
	dataf => \ALT_INV_LowDigit2~27_combout\,
	combout => \LowDigit2[3]~28_combout\);

-- Location: LABCELL_X35_Y2_N51
\LowDigit2[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[2]~11_combout\ = ( \LowDigit2[3]~28_combout\ & ( !\LowDigit2[2]~9_combout\ $ (((!\LowDigit2[2]~10_combout\ & !\LowDigit2[2]~33_combout\))) ) ) # ( !\LowDigit2[3]~28_combout\ & ( !\LowDigit2[2]~9_combout\ $ (!\LowDigit2[2]~33_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[2]~10_combout\,
	datac => \ALT_INV_LowDigit2[2]~9_combout\,
	datad => \ALT_INV_LowDigit2[2]~33_combout\,
	dataf => \ALT_INV_LowDigit2[3]~28_combout\,
	combout => \LowDigit2[2]~11_combout\);

-- Location: FF_X35_Y2_N52
\LowDigit2[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit2[2]~11_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit2[2]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N18
\LowDigit2[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[2]~10_combout\ = ( \LowDigit2[2]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((!\LowDigit2[2]~9_combout\))) # (\CLK_ON~input_o\ & (\LowDigit2~34_combout\)))) ) ) # ( !\LowDigit2[2]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & ((\LowDigit2[2]~9_combout\))) # (\CLK_ON~input_o\ & (\LowDigit2~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010101000101000000010100010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_LowDigit2~34_combout\,
	datad => \ALT_INV_LowDigit2[2]~9_combout\,
	dataf => \ALT_INV_LowDigit2[2]~_emulated_q\,
	combout => \LowDigit2[2]~10_combout\);

-- Location: LABCELL_X35_Y2_N36
\LowDigit2[3]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[3]~36_combout\ = ( \LowDigit2~26_combout\ & ( !\LowDigit2~27_combout\ & ( !\LowDigit2[3]~14_combout\ $ ((((!\LowDigit2[2]~10_combout\) # (!\LowDigit2[0]~2_combout\)) # (\LowDigit2[1]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[3]~14_combout\,
	datab => \ALT_INV_LowDigit2[1]~6_combout\,
	datac => \ALT_INV_LowDigit2[2]~10_combout\,
	datad => \ALT_INV_LowDigit2[0]~2_combout\,
	datae => \ALT_INV_LowDigit2~26_combout\,
	dataf => \ALT_INV_LowDigit2~27_combout\,
	combout => \LowDigit2[3]~36_combout\);

-- Location: LABCELL_X35_Y2_N9
\LowDigit2[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[3]~15_combout\ = ( \LowDigit2[3]~28_combout\ & ( !\LowDigit2[3]~13_combout\ $ (((!\LowDigit2[3]~14_combout\ & !\LowDigit2[3]~36_combout\))) ) ) # ( !\LowDigit2[3]~28_combout\ & ( !\LowDigit2[3]~13_combout\ $ (!\LowDigit2[3]~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000111100110011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit2[3]~13_combout\,
	datac => \ALT_INV_LowDigit2[3]~14_combout\,
	datad => \ALT_INV_LowDigit2[3]~36_combout\,
	dataf => \ALT_INV_LowDigit2[3]~28_combout\,
	combout => \LowDigit2[3]~15_combout\);

-- Location: FF_X35_Y2_N11
\LowDigit2[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit2[3]~15_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit2[3]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N27
\LowDigit2[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[3]~14_combout\ = ( \LowDigit2[3]~13_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\LowDigit2[3]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\LowDigit2~37_combout\))))) ) ) # ( !\LowDigit2[3]~13_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\LowDigit2[3]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\LowDigit2~37_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100100000001100010010000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK_ON~input_o\,
	datab => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_LowDigit2[3]~_emulated_q\,
	datad => \ALT_INV_LowDigit2~37_combout\,
	dataf => \ALT_INV_LowDigit2[3]~13_combout\,
	combout => \LowDigit2[3]~14_combout\);

-- Location: MLABCELL_X34_Y2_N48
\LowDigit2~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~30_combout\ = ( \LowDigit2[0]~2_combout\ & ( \HighDigit2[0]~2_combout\ & ( (\LowDigit2[3]~14_combout\ & ((!\LowDigit2[1]~6_combout\) # (\LowDigit2[2]~10_combout\))) ) ) ) # ( !\LowDigit2[0]~2_combout\ & ( \HighDigit2[0]~2_combout\ & ( 
-- (\LowDigit2[3]~14_combout\ & ((!\LowDigit2[1]~6_combout\) # (\LowDigit2[2]~10_combout\))) ) ) ) # ( \LowDigit2[0]~2_combout\ & ( !\HighDigit2[0]~2_combout\ & ( (!\LowDigit2[3]~14_combout\ & (!\MODE24~input_o\ & ((!\LowDigit2[1]~6_combout\) # 
-- (\LowDigit2[2]~10_combout\)))) # (\LowDigit2[3]~14_combout\ & ((!\MODE24~input_o\) # ((!\LowDigit2[1]~6_combout\) # (\LowDigit2[2]~10_combout\)))) ) ) ) # ( !\LowDigit2[0]~2_combout\ & ( !\HighDigit2[0]~2_combout\ & ( (!\LowDigit2[3]~14_combout\ & 
-- (!\MODE24~input_o\ & ((\LowDigit2[2]~10_combout\)))) # (\LowDigit2[3]~14_combout\ & ((!\MODE24~input_o\) # ((!\LowDigit2[1]~6_combout\) # (\LowDigit2[2]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010011011101110101001101110101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[3]~14_combout\,
	datab => \ALT_INV_MODE24~input_o\,
	datac => \ALT_INV_LowDigit2[1]~6_combout\,
	datad => \ALT_INV_LowDigit2[2]~10_combout\,
	datae => \ALT_INV_LowDigit2[0]~2_combout\,
	dataf => \ALT_INV_HighDigit2[0]~2_combout\,
	combout => \LowDigit2~30_combout\);

-- Location: LABCELL_X39_Y2_N48
\LowDigit2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~29_combout\ = ( \LowDigit2[1]~6_combout\ & ( (!\LowDigit2[3]~14_combout\ & ((!\LowDigit2[2]~10_combout\) # ((\MODE24~input_o\ & !\LowDigit2[0]~2_combout\)))) ) ) # ( !\LowDigit2[1]~6_combout\ & ( (!\LowDigit2[3]~14_combout\ & 
-- (!\LowDigit2[2]~10_combout\ & ((!\LowDigit2[0]~2_combout\) # (\MODE24~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000000000110001000000000011001100010000001100110001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MODE24~input_o\,
	datab => \ALT_INV_LowDigit2[3]~14_combout\,
	datac => \ALT_INV_LowDigit2[0]~2_combout\,
	datad => \ALT_INV_LowDigit2[2]~10_combout\,
	dataf => \ALT_INV_LowDigit2[1]~6_combout\,
	combout => \LowDigit2~29_combout\);

-- Location: MLABCELL_X34_Y2_N12
\LowDigit2~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~31_combout\ = ( \HighDigit2[1]~6_combout\ & ( (!\LowDigit2~30_combout\ & \LowDigit2~29_combout\) ) ) # ( !\HighDigit2[1]~6_combout\ & ( (!\LowDigit2~30_combout\ & (((!\HighDigit2[3]~14_combout\ & !\HighDigit2[2]~10_combout\)) # 
-- (\LowDigit2~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011110000100000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_HighDigit2[2]~10_combout\,
	datac => \ALT_INV_LowDigit2~30_combout\,
	datad => \ALT_INV_LowDigit2~29_combout\,
	dataf => \ALT_INV_HighDigit2[1]~6_combout\,
	combout => \LowDigit2~31_combout\);

-- Location: LABCELL_X36_Y2_N45
\LowDigit2~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~32_combout\ = ( \SW1~input_o\ & ( (!\LowDigit2~31_combout\) # ((\LowDigit2[1]~6_combout\ & \KEY3~input_o\)) ) ) # ( !\SW1~input_o\ & ( ((!\KEY3~input_o\) # (!\LowDigit2~31_combout\)) # (\LowDigit2[1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101111111111111010111111111000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[1]~6_combout\,
	datac => \ALT_INV_KEY3~input_o\,
	datad => \ALT_INV_LowDigit2~31_combout\,
	dataf => \ALT_INV_SW1~input_o\,
	combout => \LowDigit2~32_combout\);

-- Location: LABCELL_X36_Y2_N0
\LowDigit2[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[1]~5_combout\ = ( \LowDigit2~32_combout\ & ( (\LowDigit0[3]~20_combout\ & ((\LowDigit2[1]~5_combout\) # (\CLK_ON~input_o\))) ) ) # ( !\LowDigit2~32_combout\ & ( (\LowDigit0[3]~20_combout\ & (!\CLK_ON~input_o\ & \LowDigit2[1]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_LowDigit2[1]~5_combout\,
	dataf => \ALT_INV_LowDigit2~32_combout\,
	combout => \LowDigit2[1]~5_combout\);

-- Location: LABCELL_X35_Y2_N0
\LowDigit2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2~25_combout\ = ( \HighDigit2[2]~10_combout\ & ( \LowDigit2~24_combout\ & ( !\LowDigit2[1]~6_combout\ $ (\LowDigit2[0]~2_combout\) ) ) ) # ( !\HighDigit2[2]~10_combout\ & ( \LowDigit2~24_combout\ & ( (!\LowDigit2[1]~6_combout\ & 
-- (!\LowDigit2[0]~2_combout\ & ((\LowDigit2[3]~14_combout\) # (\HighDigit2[3]~14_combout\)))) # (\LowDigit2[1]~6_combout\ & (((\LowDigit2[0]~2_combout\)))) ) ) ) # ( \HighDigit2[2]~10_combout\ & ( !\LowDigit2~24_combout\ & ( !\LowDigit2[1]~6_combout\ $ 
-- (\LowDigit2[0]~2_combout\) ) ) ) # ( !\HighDigit2[2]~10_combout\ & ( !\LowDigit2~24_combout\ & ( !\LowDigit2[1]~6_combout\ $ (\LowDigit2[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001101001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_LowDigit2[1]~6_combout\,
	datac => \ALT_INV_LowDigit2[3]~14_combout\,
	datad => \ALT_INV_LowDigit2[0]~2_combout\,
	datae => \ALT_INV_HighDigit2[2]~10_combout\,
	dataf => \ALT_INV_LowDigit2~24_combout\,
	combout => \LowDigit2~25_combout\);

-- Location: LABCELL_X35_Y2_N45
\LowDigit2[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[1]~7_combout\ = ( \LowDigit2[3]~28_combout\ & ( !\LowDigit2[1]~6_combout\ $ (!\LowDigit2[1]~5_combout\) ) ) # ( !\LowDigit2[3]~28_combout\ & ( !\LowDigit2[1]~5_combout\ $ (\LowDigit2~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[1]~6_combout\,
	datac => \ALT_INV_LowDigit2[1]~5_combout\,
	datad => \ALT_INV_LowDigit2~25_combout\,
	dataf => \ALT_INV_LowDigit2[3]~28_combout\,
	combout => \LowDigit2[1]~7_combout\);

-- Location: FF_X35_Y2_N46
\LowDigit2[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LowDigit2[1]~7_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LowDigit2[1]~_emulated_q\);

-- Location: LABCELL_X35_Y2_N21
\LowDigit2[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LowDigit2[1]~6_combout\ = ( \LowDigit2[1]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\LowDigit2[1]~5_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit2~32_combout\))))) ) ) # ( !\LowDigit2[1]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\LowDigit2[1]~5_combout\)) # (\CLK_ON~input_o\ & ((\LowDigit2~32_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_LowDigit2[1]~5_combout\,
	datad => \ALT_INV_LowDigit2~32_combout\,
	dataf => \ALT_INV_LowDigit2[1]~_emulated_q\,
	combout => \LowDigit2[1]~6_combout\);

-- Location: MLABCELL_X34_Y2_N3
\HighDigit2~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2~27_combout\ = ( !\LowDigit2[0]~2_combout\ & ( (!\LowDigit2[3]~14_combout\ & ((!\LowDigit2[1]~6_combout\ & (!\MODE24~input_o\ & !\LowDigit2[2]~10_combout\)) # (\LowDigit2[1]~6_combout\ & (\MODE24~input_o\ & \LowDigit2[2]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100000000100000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[1]~6_combout\,
	datab => \ALT_INV_MODE24~input_o\,
	datac => \ALT_INV_LowDigit2[2]~10_combout\,
	datad => \ALT_INV_LowDigit2[3]~14_combout\,
	dataf => \ALT_INV_LowDigit2[0]~2_combout\,
	combout => \HighDigit2~27_combout\);

-- Location: FF_X34_Y2_N31
\HighDigit2[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit2[0]~3_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \HighDigit2~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit2[0]~_emulated_q\);

-- Location: MLABCELL_X34_Y2_N45
\HighDigit2[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[0]~2_combout\ = ( \HighDigit2[0]~1_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit2[0]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit2~33_combout\))))) ) ) # ( !\HighDigit2[0]~1_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit2[0]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit2~33_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000100011010000000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLK_ON~input_o\,
	datab => \ALT_INV_HighDigit2[0]~_emulated_q\,
	datac => \ALT_INV_HighDigit2~33_combout\,
	datad => \ALT_INV_LowDigit0[3]~20_combout\,
	dataf => \ALT_INV_HighDigit2[0]~1_combout\,
	combout => \HighDigit2[0]~2_combout\);

-- Location: MLABCELL_X34_Y2_N54
\HighDigit2[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[1]~7_combout\ = ( \HighDigit2[1]~6_combout\ & ( !\HighDigit2[1]~5_combout\ $ (((!\HighDigit2[0]~2_combout\) # (\HighDigit2[2]~26_combout\))) ) ) # ( !\HighDigit2[1]~6_combout\ & ( !\HighDigit2[1]~5_combout\ $ (((\HighDigit2[0]~2_combout\) # 
-- (\HighDigit2[2]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100001111110000110000111100001111110000110000111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit2[2]~26_combout\,
	datac => \ALT_INV_HighDigit2[1]~5_combout\,
	datad => \ALT_INV_HighDigit2[0]~2_combout\,
	dataf => \ALT_INV_HighDigit2[1]~6_combout\,
	combout => \HighDigit2[1]~7_combout\);

-- Location: FF_X34_Y2_N55
\HighDigit2[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit2[1]~7_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \HighDigit2~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit2[1]~_emulated_q\);

-- Location: MLABCELL_X34_Y2_N18
\HighDigit2[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[1]~6_combout\ = ( \HighDigit2[1]~5_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit2[1]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit2~34_combout\))))) ) ) # ( !\HighDigit2[1]~5_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit2[1]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit2~34_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit2[1]~_emulated_q\,
	datad => \ALT_INV_HighDigit2~34_combout\,
	dataf => \ALT_INV_HighDigit2[1]~5_combout\,
	combout => \HighDigit2[1]~6_combout\);

-- Location: MLABCELL_X34_Y1_N30
\HighDigit2[2]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[2]~26_combout\ = ( \HighDigit2[0]~2_combout\ & ( (!\HighDigit2[3]~14_combout\ & (\MODE24~input_o\ & (\HighDigit2[1]~6_combout\ & !\HighDigit2[2]~10_combout\))) ) ) # ( !\HighDigit2[0]~2_combout\ & ( (!\HighDigit2[3]~14_combout\ & 
-- (!\MODE24~input_o\ & (!\HighDigit2[1]~6_combout\ & !\HighDigit2[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_MODE24~input_o\,
	datac => \ALT_INV_HighDigit2[1]~6_combout\,
	datad => \ALT_INV_HighDigit2[2]~10_combout\,
	dataf => \ALT_INV_HighDigit2[0]~2_combout\,
	combout => \HighDigit2[2]~26_combout\);

-- Location: LABCELL_X35_Y1_N48
\Add6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = ( \HighDigit2[1]~6_combout\ & ( !\HighDigit2[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_HighDigit2[0]~2_combout\,
	dataf => \ALT_INV_HighDigit2[1]~6_combout\,
	combout => \Add6~0_combout\);

-- Location: LABCELL_X35_Y1_N57
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = ( \Add6~0_combout\ & ( \HighDigit2[2]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_HighDigit2[2]~10_combout\,
	dataf => \ALT_INV_Add6~0_combout\,
	combout => \Add6~1_combout\);

-- Location: MLABCELL_X34_Y2_N57
\HighDigit2[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[3]~15_combout\ = ( \Add6~1_combout\ & ( !\HighDigit2[3]~13_combout\ $ (((\HighDigit2[3]~14_combout\) # (\HighDigit2[2]~26_combout\))) ) ) # ( !\Add6~1_combout\ & ( !\HighDigit2[3]~13_combout\ $ (((!\HighDigit2[3]~14_combout\) # 
-- (\HighDigit2[2]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100110010101100101011001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~13_combout\,
	datab => \ALT_INV_HighDigit2[2]~26_combout\,
	datac => \ALT_INV_HighDigit2[3]~14_combout\,
	dataf => \ALT_INV_Add6~1_combout\,
	combout => \HighDigit2[3]~15_combout\);

-- Location: FF_X34_Y2_N59
\HighDigit2[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit2[3]~15_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \HighDigit2~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit2[3]~_emulated_q\);

-- Location: MLABCELL_X34_Y2_N39
\HighDigit2[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[3]~14_combout\ = ( \HighDigit2[3]~13_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit2[3]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit2~30_combout\))))) ) ) # ( !\HighDigit2[3]~13_combout\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit2[3]~_emulated_q\)) # (\CLK_ON~input_o\ & ((\HighDigit2~30_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000101000110000000010100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~_emulated_q\,
	datab => \ALT_INV_HighDigit2~30_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_LowDigit0[3]~20_combout\,
	dataf => \ALT_INV_HighDigit2[3]~13_combout\,
	combout => \HighDigit2[3]~14_combout\);

-- Location: LABCELL_X36_Y1_N51
\HighDigit2~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2~28_combout\ = ( \HighDigit2[1]~6_combout\ & ( (!\HighDigit2[3]~14_combout\ & (!\HighDigit2[2]~10_combout\ & (\MODE24~input_o\ & \HighDigit2[0]~2_combout\))) ) ) # ( !\HighDigit2[1]~6_combout\ & ( (!\HighDigit2[3]~14_combout\ & 
-- !\HighDigit2[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_HighDigit2[2]~10_combout\,
	datac => \ALT_INV_MODE24~input_o\,
	datad => \ALT_INV_HighDigit2[0]~2_combout\,
	dataf => \ALT_INV_HighDigit2[1]~6_combout\,
	combout => \HighDigit2~28_combout\);

-- Location: LABCELL_X39_Y2_N45
\HighDigit2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2~29_combout\ = ( \HighDigit2~28_combout\ & ( (\SW6~input_o\ & !\KEY3~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW6~input_o\,
	datad => \ALT_INV_KEY3~input_o\,
	dataf => \ALT_INV_HighDigit2~28_combout\,
	combout => \HighDigit2~29_combout\);

-- Location: MLABCELL_X34_Y2_N9
\HighDigit2[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[2]~9_combout\ = ( \HighDigit2[2]~9_combout\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\) # (\HighDigit2~29_combout\))) ) ) # ( !\HighDigit2[2]~9_combout\ & ( (\LowDigit0[3]~20_combout\ & (\HighDigit2~29_combout\ & \CLK_ON~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datac => \ALT_INV_HighDigit2~29_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_HighDigit2[2]~9_combout\,
	combout => \HighDigit2[2]~9_combout\);

-- Location: MLABCELL_X34_Y2_N15
\HighDigit2[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[2]~11_combout\ = ( \Add6~0_combout\ & ( !\HighDigit2[2]~9_combout\ $ (((\HighDigit2[2]~26_combout\) # (\HighDigit2[2]~10_combout\))) ) ) # ( !\Add6~0_combout\ & ( !\HighDigit2[2]~9_combout\ $ (((!\HighDigit2[2]~10_combout\) # 
-- (\HighDigit2[2]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011001111001100001100111111000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit2[2]~10_combout\,
	datac => \ALT_INV_HighDigit2[2]~26_combout\,
	datad => \ALT_INV_HighDigit2[2]~9_combout\,
	dataf => \ALT_INV_Add6~0_combout\,
	combout => \HighDigit2[2]~11_combout\);

-- Location: FF_X34_Y2_N16
\HighDigit2[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \HighDigit2[2]~11_combout\,
	clrn => \ALT_INV_HighDigit2[0]~0_combout\,
	ena => \HighDigit2~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HighDigit2[2]~_emulated_q\);

-- Location: MLABCELL_X34_Y2_N21
\HighDigit2[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \HighDigit2[2]~10_combout\ = ( \HighDigit2[2]~_emulated_q\ & ( (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (!\HighDigit2[2]~9_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit2~29_combout\))))) ) ) # ( !\HighDigit2[2]~_emulated_q\ & ( 
-- (\LowDigit0[3]~20_combout\ & ((!\CLK_ON~input_o\ & (\HighDigit2[2]~9_combout\)) # (\CLK_ON~input_o\ & ((\HighDigit2~29_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010101000000010100010100000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[3]~20_combout\,
	datab => \ALT_INV_CLK_ON~input_o\,
	datac => \ALT_INV_HighDigit2[2]~9_combout\,
	datad => \ALT_INV_HighDigit2~29_combout\,
	dataf => \ALT_INV_HighDigit2[2]~_emulated_q\,
	combout => \HighDigit2[2]~10_combout\);

-- Location: LABCELL_X35_Y2_N42
\LEDR9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR9~0_combout\ = ( !\LowDigit2[2]~10_combout\ & ( (!\LowDigit2[1]~6_combout\ & (!\HighDigit2[1]~6_combout\ & (!\HighDigit2[0]~2_combout\ & !\MODE24~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[1]~6_combout\,
	datab => \ALT_INV_HighDigit2[1]~6_combout\,
	datac => \ALT_INV_HighDigit2[0]~2_combout\,
	datad => \ALT_INV_MODE24~input_o\,
	dataf => \ALT_INV_LowDigit2[2]~10_combout\,
	combout => \LEDR9~0_combout\);

-- Location: LABCELL_X35_Y2_N57
\LEDR9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR9~1_combout\ = ( \LEDR9~0_combout\ & ( \HighDigit2~20_combout\ & ( (\KEY0~input_o\ & (!\HighDigit2[2]~10_combout\ & (!\CLK_ON~input_o\ & !\HighDigit2[3]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY0~input_o\,
	datab => \ALT_INV_HighDigit2[2]~10_combout\,
	datac => \ALT_INV_CLK_ON~input_o\,
	datad => \ALT_INV_HighDigit2[3]~14_combout\,
	datae => \ALT_INV_LEDR9~0_combout\,
	dataf => \ALT_INV_HighDigit2~20_combout\,
	combout => \LEDR9~1_combout\);

-- Location: FF_X35_Y2_N29
PM : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \PM~0_combout\,
	sload => VCC,
	ena => \LEDR9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PM~q\);

-- Location: FF_X35_Y2_N59
\LEDR9~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	asdata => \PM~q\,
	sload => VCC,
	ena => \LEDR9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR9~reg0_q\);

-- Location: LABCELL_X36_Y2_N12
\LEDR8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR8~1_combout\ = ( \LEDR8~1_combout\ & ( (!\MODE24~input_o\) # (!\CLK_ON~input_o\) ) ) # ( !\LEDR8~1_combout\ & ( (!\MODE24~input_o\ & \CLK_ON~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_MODE24~input_o\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LEDR8~1_combout\,
	combout => \LEDR8~1_combout\);

-- Location: MLABCELL_X34_Y2_N24
\LEDR8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR8~3_combout\ = ( \LEDR8~1_combout\ & ( (!\KEY0~input_o\ & ((!\LEDR8~2_combout\))) # (\KEY0~input_o\ & (\MODE24~input_o\)) ) ) # ( !\LEDR8~1_combout\ & ( (!\KEY0~input_o\ & ((\LEDR8~2_combout\))) # (\KEY0~input_o\ & (!\MODE24~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001100000011111100110011110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MODE24~input_o\,
	datac => \ALT_INV_LEDR8~2_combout\,
	datad => \ALT_INV_KEY0~input_o\,
	dataf => \ALT_INV_LEDR8~1_combout\,
	combout => \LEDR8~3_combout\);

-- Location: FF_X34_Y2_N25
\LEDR8~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ClkFlag~q\,
	d => \LEDR8~3_combout\,
	clrn => \ALT_INV_CLK_ON~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR8~reg0_emulated_q\);

-- Location: MLABCELL_X34_Y2_N27
\LEDR8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR8~2_combout\ = ( \LEDR8~reg0_emulated_q\ & ( (!\CLK_ON~input_o\ & ((!\LEDR8~1_combout\))) # (\CLK_ON~input_o\ & (!\MODE24~input_o\)) ) ) # ( !\LEDR8~reg0_emulated_q\ & ( (!\CLK_ON~input_o\ & ((\LEDR8~1_combout\))) # (\CLK_ON~input_o\ & 
-- (!\MODE24~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001100000011111100110011110000110011001111000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MODE24~input_o\,
	datac => \ALT_INV_LEDR8~1_combout\,
	datad => \ALT_INV_CLK_ON~input_o\,
	dataf => \ALT_INV_LEDR8~reg0_emulated_q\,
	combout => \LEDR8~2_combout\);

-- Location: LABCELL_X36_Y1_N39
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \HighDigit2[3]~14_combout\ & ( (!\HighDigit2[2]~10_combout\ & !\HighDigit2[1]~6_combout\) ) ) # ( !\HighDigit2[3]~14_combout\ & ( (!\HighDigit2[2]~10_combout\ & (\HighDigit2[1]~6_combout\)) # (\HighDigit2[2]~10_combout\ & 
-- ((!\HighDigit2[1]~6_combout\) # (\HighDigit2[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111111001111000011111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit2[2]~10_combout\,
	datac => \ALT_INV_HighDigit2[1]~6_combout\,
	datad => \ALT_INV_HighDigit2[0]~2_combout\,
	dataf => \ALT_INV_HighDigit2[3]~14_combout\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X36_Y1_N42
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \HighDigit2[1]~6_combout\ & ( ((!\HighDigit2[2]~10_combout\) # (!\HighDigit2[0]~2_combout\)) # (\HighDigit2[3]~14_combout\) ) ) # ( !\HighDigit2[1]~6_combout\ & ( (!\HighDigit2[3]~14_combout\ & (!\HighDigit2[2]~10_combout\ & 
-- !\HighDigit2[0]~2_combout\)) # (\HighDigit2[3]~14_combout\ & (\HighDigit2[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000110010001100100011001000111111101111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_HighDigit2[2]~10_combout\,
	datac => \ALT_INV_HighDigit2[0]~2_combout\,
	dataf => \ALT_INV_HighDigit2[1]~6_combout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X36_Y1_N45
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\HighDigit2[0]~2_combout\) # ((!\HighDigit2[1]~6_combout\ & ((\HighDigit2[2]~10_combout\))) # (\HighDigit2[1]~6_combout\ & (\HighDigit2[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110101111111110011010111111111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_HighDigit2[2]~10_combout\,
	datac => \ALT_INV_HighDigit2[1]~6_combout\,
	datad => \ALT_INV_HighDigit2[0]~2_combout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X36_Y1_N0
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \HighDigit2[2]~10_combout\ & ( \HighDigit2[3]~14_combout\ ) ) # ( !\HighDigit2[2]~10_combout\ & ( \HighDigit2[3]~14_combout\ & ( \HighDigit2[1]~6_combout\ ) ) ) # ( \HighDigit2[2]~10_combout\ & ( !\HighDigit2[3]~14_combout\ & ( 
-- !\HighDigit2[1]~6_combout\ $ (!\HighDigit2[0]~2_combout\) ) ) ) # ( !\HighDigit2[2]~10_combout\ & ( !\HighDigit2[3]~14_combout\ & ( (!\HighDigit2[1]~6_combout\ & !\HighDigit2[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001111000011110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit2[1]~6_combout\,
	datac => \ALT_INV_HighDigit2[0]~2_combout\,
	datae => \ALT_INV_HighDigit2[2]~10_combout\,
	dataf => \ALT_INV_HighDigit2[3]~14_combout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X36_Y1_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \HighDigit2[3]~14_combout\ & ( (\HighDigit2[2]~10_combout\) # (\HighDigit2[1]~6_combout\) ) ) # ( !\HighDigit2[3]~14_combout\ & ( (\HighDigit2[0]~2_combout\ & (\HighDigit2[1]~6_combout\ & !\HighDigit2[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[0]~2_combout\,
	datab => \ALT_INV_HighDigit2[1]~6_combout\,
	datad => \ALT_INV_HighDigit2[2]~10_combout\,
	dataf => \ALT_INV_HighDigit2[3]~14_combout\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X36_Y1_N24
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\HighDigit2[3]~14_combout\ & (\HighDigit2[2]~10_combout\ & (!\HighDigit2[1]~6_combout\ $ (\HighDigit2[0]~2_combout\)))) # (\HighDigit2[3]~14_combout\ & (((\HighDigit2[2]~10_combout\)) # (\HighDigit2[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010111000100011101011100010001110101110001000111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_HighDigit2[1]~6_combout\,
	datac => \ALT_INV_HighDigit2[0]~2_combout\,
	datad => \ALT_INV_HighDigit2[2]~10_combout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X36_Y1_N27
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\HighDigit2[1]~6_combout\ & (!\HighDigit2[2]~10_combout\ $ (((\HighDigit2[0]~2_combout\) # (\HighDigit2[3]~14_combout\))))) # (\HighDigit2[1]~6_combout\ & (\HighDigit2[3]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100011101100101010001110110010101000111011001010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit2[3]~14_combout\,
	datab => \ALT_INV_HighDigit2[1]~6_combout\,
	datac => \ALT_INV_HighDigit2[2]~10_combout\,
	datad => \ALT_INV_HighDigit2[0]~2_combout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X36_Y2_N6
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \LowDigit2[0]~2_combout\ & ( (!\LowDigit2[2]~10_combout\ & (!\LowDigit2[1]~6_combout\ $ (\LowDigit2[3]~14_combout\))) # (\LowDigit2[2]~10_combout\ & (\LowDigit2[1]~6_combout\ & !\LowDigit2[3]~14_combout\)) ) ) # ( 
-- !\LowDigit2[0]~2_combout\ & ( !\LowDigit2[3]~14_combout\ $ (((!\LowDigit2[2]~10_combout\ & \LowDigit2[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100001100111100110000110011000011000011001100001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit2[2]~10_combout\,
	datac => \ALT_INV_LowDigit2[1]~6_combout\,
	datad => \ALT_INV_LowDigit2[3]~14_combout\,
	dataf => \ALT_INV_LowDigit2[0]~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X39_Y2_N0
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \LowDigit2[0]~2_combout\ & ( (!\LowDigit2[1]~6_combout\) # (!\LowDigit2[3]~14_combout\ $ (\LowDigit2[2]~10_combout\)) ) ) # ( !\LowDigit2[0]~2_combout\ & ( (!\LowDigit2[2]~10_combout\ & ((!\LowDigit2[1]~6_combout\))) # 
-- (\LowDigit2[2]~10_combout\ & (\LowDigit2[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011111100110000001111111111110000111111111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit2[3]~14_combout\,
	datac => \ALT_INV_LowDigit2[2]~10_combout\,
	datad => \ALT_INV_LowDigit2[1]~6_combout\,
	dataf => \ALT_INV_LowDigit2[0]~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X39_Y2_N54
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \LowDigit2[1]~6_combout\ & ( (\LowDigit2[2]~10_combout\) # (\LowDigit2[0]~2_combout\) ) ) # ( !\LowDigit2[1]~6_combout\ & ( (\LowDigit2[0]~2_combout\) # (\LowDigit2[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit2[3]~14_combout\,
	datac => \ALT_INV_LowDigit2[0]~2_combout\,
	datad => \ALT_INV_LowDigit2[2]~10_combout\,
	dataf => \ALT_INV_LowDigit2[1]~6_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X39_Y2_N27
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \LowDigit2[1]~6_combout\ & ( !\LowDigit2[2]~10_combout\ $ (((!\LowDigit2[0]~2_combout\) # (\LowDigit2[3]~14_combout\))) ) ) # ( !\LowDigit2[1]~6_combout\ & ( ((\LowDigit2[0]~2_combout\ & \LowDigit2[2]~10_combout\)) # 
-- (\LowDigit2[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111101010000101011110101000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[0]~2_combout\,
	datac => \ALT_INV_LowDigit2[3]~14_combout\,
	datad => \ALT_INV_LowDigit2[2]~10_combout\,
	dataf => \ALT_INV_LowDigit2[1]~6_combout\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X39_Y2_N36
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \LowDigit2[3]~14_combout\ & ( (!\LowDigit2[1]~6_combout\) # (\LowDigit2[2]~10_combout\) ) ) # ( !\LowDigit2[3]~14_combout\ & ( (!\LowDigit2[1]~6_combout\ & (!\LowDigit2[2]~10_combout\ & !\LowDigit2[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[1]~6_combout\,
	datac => \ALT_INV_LowDigit2[2]~10_combout\,
	datad => \ALT_INV_LowDigit2[0]~2_combout\,
	dataf => \ALT_INV_LowDigit2[3]~14_combout\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X39_Y2_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \LowDigit2[0]~2_combout\ & ( (!\LowDigit2[1]~6_combout\ & ((\LowDigit2[3]~14_combout\))) # (\LowDigit2[1]~6_combout\ & (\LowDigit2[2]~10_combout\)) ) ) # ( !\LowDigit2[0]~2_combout\ & ( (!\LowDigit2[2]~10_combout\ & 
-- (\LowDigit2[3]~14_combout\ & !\LowDigit2[1]~6_combout\)) # (\LowDigit2[2]~10_combout\ & ((!\LowDigit2[1]~6_combout\) # (\LowDigit2[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[2]~10_combout\,
	datac => \ALT_INV_LowDigit2[3]~14_combout\,
	datad => \ALT_INV_LowDigit2[1]~6_combout\,
	dataf => \ALT_INV_LowDigit2[0]~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X39_Y2_N21
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \LowDigit2[0]~2_combout\ & ( !\LowDigit2[3]~14_combout\ $ (((!\LowDigit2[1]~6_combout\) # (\LowDigit2[2]~10_combout\))) ) ) # ( !\LowDigit2[0]~2_combout\ & ( (!\LowDigit2[1]~6_combout\ & ((\LowDigit2[3]~14_combout\))) # 
-- (\LowDigit2[1]~6_combout\ & (\LowDigit2[2]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111101001010000111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit2[2]~10_combout\,
	datac => \ALT_INV_LowDigit2[3]~14_combout\,
	datad => \ALT_INV_LowDigit2[1]~6_combout\,
	dataf => \ALT_INV_LowDigit2[0]~2_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X32_Y1_N24
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \HighDigit1[1]~6_combout\ & ( (!\HighDigit1[3]~14_combout\ & ((!\HighDigit1[0]~2_combout\) # (!\HighDigit1[2]~10_combout\))) ) ) # ( !\HighDigit1[1]~6_combout\ & ( !\HighDigit1[3]~14_combout\ $ (!\HighDigit1[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit1[0]~2_combout\,
	datac => \ALT_INV_HighDigit1[3]~14_combout\,
	datad => \ALT_INV_HighDigit1[2]~10_combout\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X32_Y1_N0
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \HighDigit1[1]~6_combout\ & ( (!\HighDigit1[2]~10_combout\) # ((\HighDigit1[3]~14_combout\) # (\HighDigit1[0]~2_combout\)) ) ) # ( !\HighDigit1[1]~6_combout\ & ( (!\HighDigit1[2]~10_combout\ & (\HighDigit1[0]~2_combout\ & 
-- !\HighDigit1[3]~14_combout\)) # (\HighDigit1[2]~10_combout\ & ((\HighDigit1[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit1[2]~10_combout\,
	datab => \ALT_INV_HighDigit1[0]~2_combout\,
	datac => \ALT_INV_HighDigit1[3]~14_combout\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X32_Y1_N27
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \HighDigit1[1]~6_combout\ & ( (\HighDigit1[0]~2_combout\) # (\HighDigit1[3]~14_combout\) ) ) # ( !\HighDigit1[1]~6_combout\ & ( (\HighDigit1[2]~10_combout\) # (\HighDigit1[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit1[3]~14_combout\,
	datac => \ALT_INV_HighDigit1[0]~2_combout\,
	datad => \ALT_INV_HighDigit1[2]~10_combout\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X39_Y2_N6
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \HighDigit1[0]~2_combout\ & ( (!\HighDigit1[2]~10_combout\ & (!\HighDigit1[1]~6_combout\ $ (\HighDigit1[3]~14_combout\))) # (\HighDigit1[2]~10_combout\ & ((\HighDigit1[3]~14_combout\) # (\HighDigit1[1]~6_combout\))) ) ) # ( 
-- !\HighDigit1[0]~2_combout\ & ( (!\HighDigit1[1]~6_combout\ & (\HighDigit1[2]~10_combout\)) # (\HighDigit1[1]~6_combout\ & ((\HighDigit1[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000011001111111100001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit1[2]~10_combout\,
	datac => \ALT_INV_HighDigit1[1]~6_combout\,
	datad => \ALT_INV_HighDigit1[3]~14_combout\,
	dataf => \ALT_INV_HighDigit1[0]~2_combout\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X32_Y1_N42
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \HighDigit1[1]~6_combout\ & ( ((!\HighDigit1[0]~2_combout\ & !\HighDigit1[2]~10_combout\)) # (\HighDigit1[3]~14_combout\) ) ) # ( !\HighDigit1[1]~6_combout\ & ( (\HighDigit1[3]~14_combout\ & \HighDigit1[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit1[0]~2_combout\,
	datac => \ALT_INV_HighDigit1[3]~14_combout\,
	datad => \ALT_INV_HighDigit1[2]~10_combout\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X32_Y1_N3
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \HighDigit1[1]~6_combout\ & ( ((\HighDigit1[2]~10_combout\ & !\HighDigit1[0]~2_combout\)) # (\HighDigit1[3]~14_combout\) ) ) # ( !\HighDigit1[1]~6_combout\ & ( (\HighDigit1[2]~10_combout\ & ((\HighDigit1[3]~14_combout\) # 
-- (\HighDigit1[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit1[2]~10_combout\,
	datac => \ALT_INV_HighDigit1[0]~2_combout\,
	datad => \ALT_INV_HighDigit1[3]~14_combout\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X32_Y1_N45
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \HighDigit1[1]~6_combout\ & ( \HighDigit1[3]~14_combout\ ) ) # ( !\HighDigit1[1]~6_combout\ & ( !\HighDigit1[2]~10_combout\ $ (((!\HighDigit1[0]~2_combout\) # (\HighDigit1[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit1[3]~14_combout\,
	datac => \ALT_INV_HighDigit1[0]~2_combout\,
	datad => \ALT_INV_HighDigit1[2]~10_combout\,
	dataf => \ALT_INV_HighDigit1[1]~6_combout\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X32_Y1_N30
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \LowDigit1[3]~14_combout\ & ( (!\LowDigit1[2]~10_combout\ & !\LowDigit1[1]~6_combout\) ) ) # ( !\LowDigit1[3]~14_combout\ & ( (!\LowDigit1[2]~10_combout\ & (\LowDigit1[1]~6_combout\)) # (\LowDigit1[2]~10_combout\ & 
-- ((!\LowDigit1[1]~6_combout\) # (!\LowDigit1[0]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit1[2]~10_combout\,
	datac => \ALT_INV_LowDigit1[1]~6_combout\,
	datad => \ALT_INV_LowDigit1[0]~2_combout\,
	dataf => \ALT_INV_LowDigit1[3]~14_combout\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X32_Y1_N21
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \LowDigit1[1]~6_combout\ & ( (!\LowDigit1[2]~10_combout\) # ((\LowDigit1[0]~2_combout\) # (\LowDigit1[3]~14_combout\)) ) ) # ( !\LowDigit1[1]~6_combout\ & ( (!\LowDigit1[2]~10_combout\ & (!\LowDigit1[3]~14_combout\ & 
-- \LowDigit1[0]~2_combout\)) # (\LowDigit1[2]~10_combout\ & (\LowDigit1[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[2]~10_combout\,
	datac => \ALT_INV_LowDigit1[3]~14_combout\,
	datad => \ALT_INV_LowDigit1[0]~2_combout\,
	dataf => \ALT_INV_LowDigit1[1]~6_combout\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X32_Y1_N48
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \LowDigit1[3]~14_combout\ & ( ((\LowDigit1[2]~10_combout\) # (\LowDigit1[0]~2_combout\)) # (\LowDigit1[1]~6_combout\) ) ) # ( !\LowDigit1[3]~14_combout\ & ( ((!\LowDigit1[1]~6_combout\ & \LowDigit1[2]~10_combout\)) # 
-- (\LowDigit1[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[1]~6_combout\,
	datac => \ALT_INV_LowDigit1[0]~2_combout\,
	datad => \ALT_INV_LowDigit1[2]~10_combout\,
	dataf => \ALT_INV_LowDigit1[3]~14_combout\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X32_Y1_N57
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \LowDigit1[3]~14_combout\ & ( (\LowDigit1[2]~10_combout\) # (\LowDigit1[1]~6_combout\) ) ) # ( !\LowDigit1[3]~14_combout\ & ( (!\LowDigit1[1]~6_combout\ & (!\LowDigit1[2]~10_combout\ $ (!\LowDigit1[0]~2_combout\))) # 
-- (\LowDigit1[1]~6_combout\ & (\LowDigit1[2]~10_combout\ & \LowDigit1[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[1]~6_combout\,
	datab => \ALT_INV_LowDigit1[2]~10_combout\,
	datad => \ALT_INV_LowDigit1[0]~2_combout\,
	dataf => \ALT_INV_LowDigit1[3]~14_combout\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X32_Y1_N54
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \LowDigit1[3]~14_combout\ & ( (\LowDigit1[1]~6_combout\) # (\LowDigit1[2]~10_combout\) ) ) # ( !\LowDigit1[3]~14_combout\ & ( (!\LowDigit1[2]~10_combout\ & (\LowDigit1[1]~6_combout\ & !\LowDigit1[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit1[2]~10_combout\,
	datac => \ALT_INV_LowDigit1[1]~6_combout\,
	datad => \ALT_INV_LowDigit1[0]~2_combout\,
	dataf => \ALT_INV_LowDigit1[3]~14_combout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X32_Y1_N6
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \LowDigit1[3]~14_combout\ & ( (\LowDigit1[1]~6_combout\) # (\LowDigit1[2]~10_combout\) ) ) # ( !\LowDigit1[3]~14_combout\ & ( (\LowDigit1[2]~10_combout\ & (!\LowDigit1[0]~2_combout\ $ (!\LowDigit1[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[0]~2_combout\,
	datab => \ALT_INV_LowDigit1[2]~10_combout\,
	datac => \ALT_INV_LowDigit1[1]~6_combout\,
	dataf => \ALT_INV_LowDigit1[3]~14_combout\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X36_Y1_N54
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \LowDigit1[0]~2_combout\ & ( !\LowDigit1[3]~14_combout\ $ (((\LowDigit1[2]~10_combout\) # (\LowDigit1[1]~6_combout\))) ) ) # ( !\LowDigit1[0]~2_combout\ & ( (!\LowDigit1[1]~6_combout\ & (\LowDigit1[2]~10_combout\)) # 
-- (\LowDigit1[1]~6_combout\ & ((\LowDigit1[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit1[1]~6_combout\,
	datab => \ALT_INV_LowDigit1[2]~10_combout\,
	datac => \ALT_INV_LowDigit1[3]~14_combout\,
	dataf => \ALT_INV_LowDigit1[0]~2_combout\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X40_Y1_N0
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \HighDigit0[2]~10_combout\ & ( \HighDigit0[0]~2_combout\ & ( (!\HighDigit0[3]~14_combout\ & !\HighDigit0[1]~6_combout\) ) ) ) # ( !\HighDigit0[2]~10_combout\ & ( \HighDigit0[0]~2_combout\ & ( !\HighDigit0[3]~14_combout\ $ 
-- (!\HighDigit0[1]~6_combout\) ) ) ) # ( \HighDigit0[2]~10_combout\ & ( !\HighDigit0[0]~2_combout\ & ( !\HighDigit0[3]~14_combout\ ) ) ) # ( !\HighDigit0[2]~10_combout\ & ( !\HighDigit0[0]~2_combout\ & ( !\HighDigit0[3]~14_combout\ $ 
-- (!\HighDigit0[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110011001100110000111100001111001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit0[3]~14_combout\,
	datac => \ALT_INV_HighDigit0[1]~6_combout\,
	datae => \ALT_INV_HighDigit0[2]~10_combout\,
	dataf => \ALT_INV_HighDigit0[0]~2_combout\,
	combout => \Mux41~0_combout\);

-- Location: LABCELL_X40_Y1_N33
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \HighDigit0[2]~10_combout\ & ( \HighDigit0[3]~14_combout\ ) ) # ( !\HighDigit0[2]~10_combout\ & ( \HighDigit0[3]~14_combout\ & ( \HighDigit0[1]~6_combout\ ) ) ) # ( \HighDigit0[2]~10_combout\ & ( !\HighDigit0[3]~14_combout\ & ( 
-- (\HighDigit0[1]~6_combout\ & \HighDigit0[0]~2_combout\) ) ) ) # ( !\HighDigit0[2]~10_combout\ & ( !\HighDigit0[3]~14_combout\ & ( (\HighDigit0[0]~2_combout\) # (\HighDigit0[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000110000001100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit0[1]~6_combout\,
	datac => \ALT_INV_HighDigit0[0]~2_combout\,
	datae => \ALT_INV_HighDigit0[2]~10_combout\,
	dataf => \ALT_INV_HighDigit0[3]~14_combout\,
	combout => \Mux40~0_combout\);

-- Location: LABCELL_X40_Y1_N51
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \HighDigit0[2]~10_combout\ & ( \HighDigit0[3]~14_combout\ ) ) # ( !\HighDigit0[2]~10_combout\ & ( \HighDigit0[3]~14_combout\ & ( (\HighDigit0[0]~2_combout\) # (\HighDigit0[1]~6_combout\) ) ) ) # ( \HighDigit0[2]~10_combout\ & ( 
-- !\HighDigit0[3]~14_combout\ & ( (!\HighDigit0[1]~6_combout\) # (\HighDigit0[0]~2_combout\) ) ) ) # ( !\HighDigit0[2]~10_combout\ & ( !\HighDigit0[3]~14_combout\ & ( \HighDigit0[0]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011111100111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit0[1]~6_combout\,
	datac => \ALT_INV_HighDigit0[0]~2_combout\,
	datae => \ALT_INV_HighDigit0[2]~10_combout\,
	dataf => \ALT_INV_HighDigit0[3]~14_combout\,
	combout => \Mux39~0_combout\);

-- Location: LABCELL_X40_Y1_N54
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \HighDigit0[0]~2_combout\ & ( (!\HighDigit0[3]~14_combout\ & (!\HighDigit0[1]~6_combout\ $ (\HighDigit0[2]~10_combout\))) # (\HighDigit0[3]~14_combout\ & ((\HighDigit0[2]~10_combout\) # (\HighDigit0[1]~6_combout\))) ) ) # ( 
-- !\HighDigit0[0]~2_combout\ & ( (!\HighDigit0[1]~6_combout\ & ((\HighDigit0[2]~10_combout\))) # (\HighDigit0[1]~6_combout\ & (\HighDigit0[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111000011001111111100001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit0[3]~14_combout\,
	datac => \ALT_INV_HighDigit0[1]~6_combout\,
	datad => \ALT_INV_HighDigit0[2]~10_combout\,
	dataf => \ALT_INV_HighDigit0[0]~2_combout\,
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X40_Y1_N39
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \HighDigit0[2]~10_combout\ & ( \HighDigit0[3]~14_combout\ ) ) # ( !\HighDigit0[2]~10_combout\ & ( \HighDigit0[3]~14_combout\ & ( \HighDigit0[1]~6_combout\ ) ) ) # ( !\HighDigit0[2]~10_combout\ & ( !\HighDigit0[3]~14_combout\ & ( 
-- (\HighDigit0[1]~6_combout\ & !\HighDigit0[0]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit0[1]~6_combout\,
	datac => \ALT_INV_HighDigit0[0]~2_combout\,
	datae => \ALT_INV_HighDigit0[2]~10_combout\,
	dataf => \ALT_INV_HighDigit0[3]~14_combout\,
	combout => \Mux37~0_combout\);

-- Location: LABCELL_X40_Y1_N18
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \HighDigit0[2]~10_combout\ & ( \HighDigit0[0]~2_combout\ & ( (!\HighDigit0[1]~6_combout\) # (\HighDigit0[3]~14_combout\) ) ) ) # ( !\HighDigit0[2]~10_combout\ & ( \HighDigit0[0]~2_combout\ & ( (\HighDigit0[3]~14_combout\ & 
-- \HighDigit0[1]~6_combout\) ) ) ) # ( \HighDigit0[2]~10_combout\ & ( !\HighDigit0[0]~2_combout\ & ( (\HighDigit0[1]~6_combout\) # (\HighDigit0[3]~14_combout\) ) ) ) # ( !\HighDigit0[2]~10_combout\ & ( !\HighDigit0[0]~2_combout\ & ( 
-- (\HighDigit0[3]~14_combout\ & \HighDigit0[1]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100111111111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_HighDigit0[3]~14_combout\,
	datad => \ALT_INV_HighDigit0[1]~6_combout\,
	datae => \ALT_INV_HighDigit0[2]~10_combout\,
	dataf => \ALT_INV_HighDigit0[0]~2_combout\,
	combout => \Mux36~0_combout\);

-- Location: LABCELL_X40_Y1_N27
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \HighDigit0[0]~2_combout\ & ( !\HighDigit0[3]~14_combout\ $ (((\HighDigit0[2]~10_combout\) # (\HighDigit0[1]~6_combout\))) ) ) # ( !\HighDigit0[0]~2_combout\ & ( (!\HighDigit0[1]~6_combout\ & ((\HighDigit0[2]~10_combout\))) # 
-- (\HighDigit0[1]~6_combout\ & (\HighDigit0[3]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_HighDigit0[1]~6_combout\,
	datac => \ALT_INV_HighDigit0[3]~14_combout\,
	datad => \ALT_INV_HighDigit0[2]~10_combout\,
	dataf => \ALT_INV_HighDigit0[0]~2_combout\,
	combout => \Mux35~0_combout\);

-- Location: LABCELL_X40_Y1_N42
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \LowDigit0[2]~10_combout\ & ( (!\LowDigit0[3]~14_combout\ & ((!\LowDigit0[1]~6_combout\) # (!\LowDigit0[0]~2_combout\))) ) ) # ( !\LowDigit0[2]~10_combout\ & ( !\LowDigit0[1]~6_combout\ $ (!\LowDigit0[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~6_combout\,
	datab => \ALT_INV_LowDigit0[0]~2_combout\,
	datac => \ALT_INV_LowDigit0[3]~14_combout\,
	dataf => \ALT_INV_LowDigit0[2]~10_combout\,
	combout => \Mux34~0_combout\);

-- Location: LABCELL_X40_Y1_N12
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \LowDigit0[3]~14_combout\ & ( \LowDigit0[0]~2_combout\ & ( (\LowDigit0[2]~10_combout\) # (\LowDigit0[1]~6_combout\) ) ) ) # ( !\LowDigit0[3]~14_combout\ & ( \LowDigit0[0]~2_combout\ & ( (!\LowDigit0[2]~10_combout\) # 
-- (\LowDigit0[1]~6_combout\) ) ) ) # ( \LowDigit0[3]~14_combout\ & ( !\LowDigit0[0]~2_combout\ & ( (\LowDigit0[2]~10_combout\) # (\LowDigit0[1]~6_combout\) ) ) ) # ( !\LowDigit0[3]~14_combout\ & ( !\LowDigit0[0]~2_combout\ & ( (\LowDigit0[1]~6_combout\ & 
-- !\LowDigit0[2]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111111110101111101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~6_combout\,
	datac => \ALT_INV_LowDigit0[2]~10_combout\,
	datae => \ALT_INV_LowDigit0[3]~14_combout\,
	dataf => \ALT_INV_LowDigit0[0]~2_combout\,
	combout => \Mux33~0_combout\);

-- Location: LABCELL_X40_Y1_N45
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \LowDigit0[2]~10_combout\ & ( (!\LowDigit0[1]~6_combout\) # ((\LowDigit0[3]~14_combout\) # (\LowDigit0[0]~2_combout\)) ) ) # ( !\LowDigit0[2]~10_combout\ & ( ((\LowDigit0[1]~6_combout\ & \LowDigit0[3]~14_combout\)) # 
-- (\LowDigit0[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011110111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~6_combout\,
	datab => \ALT_INV_LowDigit0[0]~2_combout\,
	datad => \ALT_INV_LowDigit0[3]~14_combout\,
	dataf => \ALT_INV_LowDigit0[2]~10_combout\,
	combout => \Mux32~0_combout\);

-- Location: LABCELL_X40_Y1_N24
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \LowDigit0[1]~6_combout\ & ( ((\LowDigit0[0]~2_combout\ & \LowDigit0[2]~10_combout\)) # (\LowDigit0[3]~14_combout\) ) ) # ( !\LowDigit0[1]~6_combout\ & ( !\LowDigit0[2]~10_combout\ $ (((!\LowDigit0[0]~2_combout\) # 
-- (\LowDigit0[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001111001111000000111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LowDigit0[0]~2_combout\,
	datac => \ALT_INV_LowDigit0[2]~10_combout\,
	datad => \ALT_INV_LowDigit0[3]~14_combout\,
	dataf => \ALT_INV_LowDigit0[1]~6_combout\,
	combout => \Mux31~0_combout\);

-- Location: LABCELL_X40_Y1_N9
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \LowDigit0[2]~10_combout\ & ( \LowDigit0[3]~14_combout\ ) ) # ( !\LowDigit0[2]~10_combout\ & ( (\LowDigit0[1]~6_combout\ & ((!\LowDigit0[0]~2_combout\) # (\LowDigit0[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001010101010001000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~6_combout\,
	datab => \ALT_INV_LowDigit0[0]~2_combout\,
	datad => \ALT_INV_LowDigit0[3]~14_combout\,
	dataf => \ALT_INV_LowDigit0[2]~10_combout\,
	combout => \Mux30~0_combout\);

-- Location: LABCELL_X40_Y1_N57
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \LowDigit0[2]~10_combout\ & ( (!\LowDigit0[1]~6_combout\ $ (!\LowDigit0[0]~2_combout\)) # (\LowDigit0[3]~14_combout\) ) ) # ( !\LowDigit0[2]~10_combout\ & ( (\LowDigit0[1]~6_combout\ & \LowDigit0[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~6_combout\,
	datac => \ALT_INV_LowDigit0[0]~2_combout\,
	datad => \ALT_INV_LowDigit0[3]~14_combout\,
	dataf => \ALT_INV_LowDigit0[2]~10_combout\,
	combout => \Mux29~0_combout\);

-- Location: LABCELL_X40_Y1_N6
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \LowDigit0[2]~10_combout\ & ( ((!\LowDigit0[1]~6_combout\ & !\LowDigit0[0]~2_combout\)) # (\LowDigit0[3]~14_combout\) ) ) # ( !\LowDigit0[2]~10_combout\ & ( (!\LowDigit0[1]~6_combout\ & (\LowDigit0[0]~2_combout\ & 
-- !\LowDigit0[3]~14_combout\)) # (\LowDigit0[1]~6_combout\ & ((\LowDigit0[3]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010110001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LowDigit0[1]~6_combout\,
	datab => \ALT_INV_LowDigit0[0]~2_combout\,
	datac => \ALT_INV_LowDigit0[3]~14_combout\,
	dataf => \ALT_INV_LowDigit0[2]~10_combout\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X37_Y40_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


