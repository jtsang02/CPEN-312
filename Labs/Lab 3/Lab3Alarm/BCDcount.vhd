LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY BCDCOUNT IS
	PORT (
		KEY0, KEY1, KEY2, KEY3, CLK_50 : IN STD_LOGIC;
		SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, MODE_ALARM : IN STD_LOGIC;
		CLK_ON : IN STD_LOGIC;
		LEDR9, LEDR0 : BUFFER STD_LOGIC;
		MSD5, LSD4, MSD3, LSD2, MSD1, LSD0 : OUT STD_LOGIC_VECTOR (0 TO 6)
	);
END BCDCOUNT;

ARCHITECTURE a OF BCDCOUNT IS
	SIGNAL ClkFlag : STD_LOGIC;
	SIGNAL PM : STD_LOGIC;
	SIGNAL Internal_Count : STD_LOGIC_VECTOR(28 DOWNTO 0);
	SIGNAL HighDigit2, LowDigit2, HighDigit1, LowDigit1, HighDigit0, LowDigit0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL MSD5_7SEG, LSD4_7SEG, MSD3_7SEG, LSD2_7SEG, MSD1_7SEG, LSD0_7SEG : STD_LOGIC_VECTOR(0 TO 6);

BEGIN
	LSD0 <= LSD0_7SEG; -- initialize
	MSD1 <= MSD1_7SEG;
	LSD2 <= LSD2_7SEG;
	MSD3 <= MSD3_7SEG;
	LSD4 <= LSD4_7SEG;
	MSD5 <= MSD5_7SEG;

	PROCESS (CLK_50, CLK_ON)
	BEGIN
		IF (CLK_ON = '0') THEN
			IF (CLK_50'event AND CLK_50 = '1') THEN
				IF Internal_Count < 25000000 THEN
					Internal_Count <= Internal_Count + 1;
				ELSE
					Internal_Count <= (OTHERS => '0');
					ClkFlag <= NOT ClkFlag;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (ClkFlag, PM, CLK_ON, MODE_ALARM, KEY0, KEY1, KEY2, KEY3, SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, LowDigit2, HighDigit2, LowDigit1, HighDigit1, LowDigit0, HighDigit0) -- display function
	BEGIN
		-------------------------------SET CLOCK TIME  -------------------------------------------------------------------------------------------

		IF (CLK_ON = '1') THEN
			-- set seconds
			IF (KEY1 = '0') THEN -- latch seconds when KEY1 is pressed
				LowDigit0(0) <= SW0;
				LowDigit0(1) <= SW1;
				LowDigit0(2) <= SW2;
				LowDigit0(3) <= SW3;
				HighDigit0(0) <= SW4;
				HighDigit0(1) <= SW5;
				HighDigit0(2) <= SW6;
				HighDigit0(3) <= SW7;
			END IF;

			-- set minutes
			IF (KEY2 = '0') THEN -- latch mins when KEY2 is pressed
				LowDigit1(0) <= SW0;
				LowDigit1(1) <= SW1;
				LowDigit1(2) <= SW2;
				LowDigit1(3) <= SW3;
				HighDigit1(0) <= SW4;
				HighDigit1(1) <= SW5;
				HighDigit1(2) <= SW6;
				HighDigit1(3) <= SW7;
			END IF;

			-- set hours
			IF (KEY3 = '0') THEN -- latch hrs when KEY3 is pressed
				LowDigit2(0) <= SW0;
				LowDigit2(1) <= SW1;
				LowDigit2(2) <= SW2;
				LowDigit2(3) <= SW3;
				HighDigit2(0) <= SW4;
				HighDigit2(1) <= SW5;
				HighDigit2(2) <= SW6;
				HighDigit2(3) <= SW7;
			END IF;

			-- make sure that the time is valid (0-12 hrs, 0-59 mins, 0-59 secs)

			IF (LowDigit0 > 9) THEN
				LowDigit0 <= "0000"; -- if LSD seconds is greater than 9, set to 0
			END IF;

			IF (HighDigit0 > 5) THEN
				HighDigit0 <= "0000"; -- if MSD seconds is greater than 5 set to 0			
			END IF;

			IF (LowDigit1 > 9) THEN
				LowDigit1 <= "0000"; -- if LSD mins is greater than 9, set to 0
			END IF;

			IF (HighDigit1 > 5) THEN
				HighDigit1 <= "0000"; -- if MSD mins greater than 5 set to 0		
			END IF;

			IF (LowDigit2 > 9) THEN
				LowDigit2 <= "0000"; -- if LSD hours greater than 9 set to 0	
			END IF;

			IF (HighDigit2 > 1) THEN
				HighDigit2 <= "0000"; -- if MSD hrs greater than 1 set to 0	
			END IF;

			IF (HighDigit2 >= 1 AND LowDigit2 > 2) THEN -- if hours is greater than 12 set to 0
				LowDigit2 <= "0000";
			END IF;

			---------------CLOCK RUNNING --------------------------------------------------------------------------------------------------------------

		ELSE
			IF (KEY0 = '0') THEN -- reset all to 12:00
				LowDigit0 <= "0000";
				HighDigit0 <= "0000";
				LowDigit1 <= "0000";
				HighDigit1 <= "0000";
				LowDigit2 <= "0010"; -- set to 2
				HighDigit2 <= "0001"; -- set to 1

			ELSIF (ClkFlag'event AND ClkFlag = '1') THEN

				-- change PM to AM and vice versa when 12:00:00 is reached
				IF (LowDigit2 = 2 AND HighDigit2 = 1 AND
					LowDigit1 = 0 AND HighDigit1 = 0 AND
					LowDigit0 = 0 AND HighDigit0 = 0) THEN
					PM <= NOT PM;
					LEDR9 <= PM;
				END IF; 

				-- if 12:59:59 is reached, set to 1:00:00
				IF (HighDigit2 = 1 AND LowDigit2 = 2 AND
					LowDigit1 = 9 AND HighDigit1 = 5 AND
					LowDigit0 = 9 AND HighDigit0 = 5) THEN
					HighDigit2 <= "0000";
					LowDigit2 <= "0001";
					HighDigit1 <= "0000";
					LowDigit1 <= "0000";
					HighDigit0 <= "0000";
					LowDigit0 <= "0000";

					-- if 9:59:59 is reached, set to 10:00:00
				ELSIF (HighDigit2 = 0 AND LowDigit2 = 9 AND
					LowDigit1 = 9 AND HighDigit1 = 5 AND
					LowDigit0 = 9 AND HighDigit0 = 5) THEN
					HighDigit2 <= "0001";
					LowDigit2 <= "0000";
					HighDigit1 <= "0000";
					LowDigit1 <= "0000";
					HighDigit0 <= "0000";
					LowDigit0 <= "0000";
				END IF;				

				IF (LowDigit0 = 9) THEN
					LowDigit0 <= "0000";
					IF (HighDigit0 = 5) THEN
						HighDigit0 <= "0000";
						IF (LowDigit1 = 9) THEN
							LowDigit1 <= "0000";
							IF (HighDigit1 = 5) THEN
								HighDigit1 <= "0000";
							ELSE
								HighDigit1 <= HighDigit1 + 1;
							END IF;
						ELSE
							LowDigit1 <= LowDigit1 + 1;
						END IF;
					ELSE
						HighDigit0 <= HighDigit0 + '1';
					END IF;
				ELSE
					LowDigit0 <= LowDigit0 + '1';
				END IF;

			END IF;
		END IF;

		---------------7 seg logic --------------------------------------------------------------------------------------------------------------

		CASE LowDigit2 IS
			WHEN "0000" => LSD4_7SEG <= "0000001";
			WHEN "0001" => LSD4_7SEG <= "1001111";
			WHEN "0010" => LSD4_7SEG <= "0010010";
			WHEN "0011" => LSD4_7SEG <= "0000110";
			WHEN "0100" => LSD4_7SEG <= "1001100";
			WHEN "0101" => LSD4_7SEG <= "0100100";
			WHEN "0110" => LSD4_7SEG <= "0100000";
			WHEN "0111" => LSD4_7SEG <= "0001111";
			WHEN "1000" => LSD4_7SEG <= "0000000";
			WHEN "1001" => LSD4_7SEG <= "0000100";
			WHEN OTHERS => LSD4_7SEG <= "1111111";
		END CASE;

		CASE HighDigit2 IS
			WHEN "0000" => MSD5_7SEG <= "0000001";
			WHEN "0001" => MSD5_7SEG <= "1001111";
			WHEN "0010" => MSD5_7SEG <= "0010010";
			WHEN "0011" => MSD5_7SEG <= "0000110";
			WHEN "0100" => MSD5_7SEG <= "1001100";
			WHEN "0101" => MSD5_7SEG <= "0100100";
			WHEN "0110" => MSD5_7SEG <= "0100000";
			WHEN "0111" => MSD5_7SEG <= "0001111";
			WHEN "1000" => MSD5_7SEG <= "0000000";
			WHEN "1001" => MSD5_7SEG <= "0000100";
			WHEN OTHERS => MSD5_7SEG <= "1111111";
		END CASE;

		CASE LowDigit1 IS
			WHEN "0000" => LSD2_7SEG <= "0000001";
			WHEN "0001" => LSD2_7SEG <= "1001111";
			WHEN "0010" => LSD2_7SEG <= "0010010";
			WHEN "0011" => LSD2_7SEG <= "0000110";
			WHEN "0100" => LSD2_7SEG <= "1001100";
			WHEN "0101" => LSD2_7SEG <= "0100100";
			WHEN "0110" => LSD2_7SEG <= "0100000";
			WHEN "0111" => LSD2_7SEG <= "0001111";
			WHEN "1000" => LSD2_7SEG <= "0000000";
			WHEN "1001" => LSD2_7SEG <= "0000100";
			WHEN OTHERS => LSD2_7SEG <= "1111111";
		END CASE;

		CASE HighDigit1 IS
			WHEN "0000" => MSD3_7SEG <= "0000001";
			WHEN "0001" => MSD3_7SEG <= "1001111";
			WHEN "0010" => MSD3_7SEG <= "0010010";
			WHEN "0011" => MSD3_7SEG <= "0000110";
			WHEN "0100" => MSD3_7SEG <= "1001100";
			WHEN "0101" => MSD3_7SEG <= "0100100";
			WHEN "0110" => MSD3_7SEG <= "0100000";
			WHEN "0111" => MSD3_7SEG <= "0001111";
			WHEN "1000" => MSD3_7SEG <= "0000000";
			WHEN "1001" => MSD3_7SEG <= "0000100";
			WHEN OTHERS => MSD3_7SEG <= "1111111";
		END CASE;

		CASE LowDigit0 IS
			WHEN "0000" => LSD0_7SEG <= "0000001";
			WHEN "0001" => LSD0_7SEG <= "1001111";
			WHEN "0010" => LSD0_7SEG <= "0010010";
			WHEN "0011" => LSD0_7SEG <= "0000110";
			WHEN "0100" => LSD0_7SEG <= "1001100";
			WHEN "0101" => LSD0_7SEG <= "0100100";
			WHEN "0110" => LSD0_7SEG <= "0100000";
			WHEN "0111" => LSD0_7SEG <= "0001111";
			WHEN "1000" => LSD0_7SEG <= "0000000";
			WHEN "1001" => LSD0_7SEG <= "0000100";
			WHEN OTHERS => LSD0_7SEG <= "1111111";
		END CASE;

		CASE HighDigit0 IS
			WHEN "0000" => MSD1_7SEG <= "0000001";
			WHEN "0001" => MSD1_7SEG <= "1001111";
			WHEN "0010" => MSD1_7SEG <= "0010010";
			WHEN "0011" => MSD1_7SEG <= "0000110";
			WHEN "0100" => MSD1_7SEG <= "1001100";
			WHEN "0101" => MSD1_7SEG <= "0100100";
			WHEN "0110" => MSD1_7SEG <= "0100000";
			WHEN "0111" => MSD1_7SEG <= "0001111";
			WHEN "1000" => MSD1_7SEG <= "0000000";
			WHEN "1001" => MSD1_7SEG <= "0000100";
			WHEN OTHERS => MSD1_7SEG <= "1111111";
		END CASE;
	END PROCESS;
END a;