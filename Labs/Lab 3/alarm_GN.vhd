LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY Lab3 IS
    PORT (
        KEY0, KEY1, KEY2, KEY3, SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, SW9, CLK_50 : IN STD_LOGIC;
        LED9, LED0 : OUT STD_LOGIC;
        MSD, LSD, MSD_M, LSD_M, MSD_H, LSD_H : OUT STD_LOGIC_VECTOR (0 TO 6)
    );
END Lab3;

ARCHITECTURE a OF Lab3 IS
    SIGNAL AlarmHighDigitMinute, AlarmLowDigitMinute, AlarmHighDigitHour, AlarmLowDigitHour : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL LEDD9 : STD_LOGIC := '0';
    SIGNAL LEDD0 : STD_LOGIC := '0';
    SIGNAL ClkFlag : STD_LOGIC;
    SIGNAL Internal_Count : STD_LOGIC_VECTOR(28 DOWNTO 0);
    SIGNAL HighDigitSecond, LowDigitSecond, HighDigitMinute, LowDigitMinute, HighDigitHour, LowDigitHour : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL MSD_7SEG, LSD_7SEG, MSD_7SEG_MINUTE, LSD_7SEG_MINUTE, MSD_7SEG_HOUR, LSD_7SEG_HOUR : STD_LOGIC_VECTOR(0 TO 6);
BEGIN
    LED0 <= LEDD0;
    LED9 <= LEDD9;
    LSD <= LSD_7SEG;
    MSD <= MSD_7SEG;
    LSD_M <= LSD_7SEG_MINUTE;
    MSD_M <= MSD_7SEG_MINUTE;
    LSD_H <= LSD_7SEG_HOUR;
    MSD_H <= MSD_7SEG_HOUR;

    PROCESS (CLK_50)
    BEGIN

        IF (CLK_50'event AND CLK_50 = '1') THEN

            IF Internal_Count < 12000000 THEN
                Internal_Count <= Internal_Count + 1;
            ELSE
                Internal_Count <= (OTHERS => '0');
                ClkFlag <= NOT ClkFlag;
            END IF;

        END IF;

    END PROCESS;

    PROCESS (ClkFlag, KEY0, KEY1, KEY2, KEY3, SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, SW9)
    BEGIN

        IF (KEY0 = '0') THEN -- reset
            LowDigitSecond <= "0000";
            HighDigitSecond <= "0000";
            LowDigitMinute <= "0000";
            HighDigitMinute <= "0000";
            LowDigitHour <= "0001";
            HighDigitHour <= "0000";
            LEDD9 <= '0';

        ELSIF (ClkFlag'event AND ClkFlag = '1') THEN

            IF (SW9 = '0') THEN

                IF (KEY1 = '0') THEN
                    LowDigitSecond(0) <= SW0;
                    LowDigitSecond(1) <= SW1;
                    LowDigitSecond(2) <= SW2;
                    LowDigitSecond(3) <= SW3;
                    HighDigitSecond(0) <= SW4;
                    HighDigitSecond(1) <= SW5;
                    HighDigitSecond(2) <= SW6;
                    HighDigitSecond(3) <= SW7;
                END IF;

                IF (KEY2 = '0') THEN
                    LowDigitMinute(0) <= SW0;
                    LowDigitMinute(1) <= SW1;
                    LowDigitMinute(2) <= SW2;
                    LowDigitMinute(3) <= SW3;
                    HighDigitMinute(0) <= SW4;
                    HighDigitMinute(1) <= SW5;
                    HighDigitMinute(2) <= SW6;
                    HighDigitMinute(3) <= SW7;
                END IF;
                IF (KEY3 = '0') THEN
                    LowDigitHour(0) <= SW0;
                    LowDigitHour(1) <= SW1;
                    LowDigitHour(2) <= SW2;
                    LowDigitHour(3) <= SW3;
                    HighDigitHour(0) <= SW4;
                    HighDigitHour(1) <= SW5;
                    HighDigitHour(2) <= SW6;
                    HighDigitHour(3) <= SW7;
                END IF;
            END IF;
            IF (SW9 = '1') THEN

                IF (KEY3 = '0') THEN
                    AlarmLowDigitHour(0) <= SW0;
                    AlarmLowDigitHour(1) <= SW1;
                    AlarmLowDigitHour(2) <= SW2;
                    AlarmLowDigitHour(3) <= SW3;
                    AlarmHighDigitHour(0) <= SW4;
                    AlarmHighDigitHour(1) <= SW5;
                    AlarmHighDigitHour(2) <= SW6;
                    AlarmHighDigitHour(3) <= SW7;
                END IF;

                IF (KEY2 = '0') THEN
                    AlarmLowDigitMinute(0) <= SW0;
                    AlarmLowDigitMinute(1) <= SW1;
                    AlarmLowDigitMinute(2) <= SW2;
                    AlarmLowDigitMinute(3) <= SW3;
                    AlarmHighDigitMinute(0) <= SW4;
                    AlarmHighDigitMinute(1) <= SW5;
                    AlarmHighDigitMinute(2) <= SW6;
                    AlarmHighDigitMinute(3) <= SW7;
                END IF;
            END IF;

            IF (LowDigitHour = AlarmLowDigitHour AND HighDigitHour = AlarmHighDigitHour AND LowDigitMinute = AlarmLowDigitMinute - 1 AND HighDigitMinute = AlarmHighDigitMinute AND LowDigitSecond = 9 AND HighDigitSecond = 5) THEN
                LEDD0 <= '1';
            END IF;
            IF (LowDigitHour = AlarmLowDigitHour AND HighDigitHour = AlarmHighDigitHour AND LowDigitMinute = AlarmLowDigitMinute AND HighDigitMinute = AlarmHighDigitMinute AND LowDigitSecond = 9 AND HighDigitSecond = 5) THEN
                LEDD0 <= '0';
            END IF;

            IF (SW9 = '0') THEN

                IF (LowDigitHour = 5 AND HighDigitHour = 0 AND LowDigitMinute = 9 AND HighDigitMinute = 5 AND LowDigitSecond = 9 AND HighDigitSecond = 5 AND LEDD9 = '0') THEN
                    LEDD0 <= '1';
                END IF;

                IF (LowDigitHour = 6 AND HighDigitHour = 0 AND LowDigitMinute = 0 AND HighDigitMinute = 0 AND LowDigitSecond = 9 AND HighDigitSecond = 5 AND LEDD9 = '0') THEN
                    LEDD0 <= '0';
                END IF;
            END IF;

            IF (LowDigitSecond = 9) THEN
                LowDigitSecond <= "0000";

                IF (HighDigitSecond = 5) THEN
                    HighDigitSecond <= "0000";

                    IF (LowDigitMinute = 9) THEN
                        LowDigitMinute <= "0000";

                        IF (HighDigitMinute = 5) THEN
                            HighDigitMinute <= "0000";

                            IF (LowDigitHour = 1 AND HighDigitHour = 1) THEN
                                LEDD9 <= NOT LEDD9;
                            END IF;
                            IF (LowDigitHour = 2 AND HighDigitHour = 1) THEN
                                LowDigitHour <= "0001";
                                HighDigitHour <= "0000";
                            ELSIF (LowDigitHour = 9 AND HighDigitHour = 0) THEN
                                LowDigitHour <= "0000";
                                HighDigitHour <= "0001";
                            ELSE
                                LowDigitHour <= LowDigitHour + 1;
                            END IF;

                        ELSE
                            HighDigitMinute <= HighDigitMinute + 1;
                        END IF;

                    ELSE
                        LowDigitMinute <= LowDigitMinute + 1;
                    END IF;

                ELSE
                    HighDigitSecond <= HighDigitSecond + '1';
                END IF;

            ELSE
                LowDigitSecond <= LowDigitSecond + '1';
            END IF;

        END IF;
    END PROCESS;
    PROCESS (LowDigitSecond, HighDigitSecond, LowDigitMinute, HighDigitMinute, LowDigitHour, HighDigitHour)
    BEGIN
        CASE LowDigitSecond IS
            WHEN "0000" => LSD_7SEG <= "0000001";
            WHEN "0001" => LSD_7SEG <= "1001111";
            WHEN "0010" => LSD_7SEG <= "0010010";
            WHEN "0011" => LSD_7SEG <= "0000110";
            WHEN "0100" => LSD_7SEG <= "1001100";
            WHEN "0101" => LSD_7SEG <= "0100100";
            WHEN "0110" => LSD_7SEG <= "0100000";
            WHEN "0111" => LSD_7SEG <= "0001111";
            WHEN "1000" => LSD_7SEG <= "0000000";
            WHEN "1001" => LSD_7SEG <= "0000100";
            WHEN OTHERS => LSD_7SEG <= "1111111";
        END CASE;

        CASE HighDigitSecond IS
            WHEN "0000" => MSD_7SEG <= "0000001";
            WHEN "0001" => MSD_7SEG <= "1001111";
            WHEN "0010" => MSD_7SEG <= "0010010";
            WHEN "0011" => MSD_7SEG <= "0000110";
            WHEN "0100" => MSD_7SEG <= "1001100";
            WHEN "0101" => MSD_7SEG <= "0100100";
            WHEN "0110" => MSD_7SEG <= "0100000";
            WHEN "0111" => MSD_7SEG <= "0001111";
            WHEN "1000" => MSD_7SEG <= "0000000";
            WHEN "1001" => MSD_7SEG <= "0000100";
            WHEN OTHERS => MSD_7SEG <= "1111111";
        END CASE;

        CASE LowDigitMinute IS
            WHEN "0000" => LSD_7SEG_MINUTE <= "0000001";
            WHEN "0001" => LSD_7SEG_MINUTE <= "1001111";
            WHEN "0010" => LSD_7SEG_MINUTE <= "0010010";
            WHEN "0011" => LSD_7SEG_MINUTE <= "0000110";
            WHEN "0100" => LSD_7SEG_MINUTE <= "1001100";
            WHEN "0101" => LSD_7SEG_MINUTE <= "0100100";
            WHEN "0110" => LSD_7SEG_MINUTE <= "0100000";
            WHEN "0111" => LSD_7SEG_MINUTE <= "0001111";
            WHEN "1000" => LSD_7SEG_MINUTE <= "0000000";
            WHEN "1001" => LSD_7SEG_MINUTE <= "0000100";
            WHEN OTHERS => LSD_7SEG_MINUTE <= "1111111";
        END CASE;

        CASE HighDigitMinute IS
            WHEN "0000" => MSD_7SEG_MINUTE <= "0000001";
            WHEN "0001" => MSD_7SEG_MINUTE <= "1001111";
            WHEN "0010" => MSD_7SEG_MINUTE <= "0010010";
            WHEN "0011" => MSD_7SEG_MINUTE <= "0000110";
            WHEN "0100" => MSD_7SEG_MINUTE <= "1001100";
            WHEN "0101" => MSD_7SEG_MINUTE <= "0100100";
            WHEN "0110" => MSD_7SEG_MINUTE <= "0100000";
            WHEN "0111" => MSD_7SEG_MINUTE <= "0001111";
            WHEN "1000" => MSD_7SEG_MINUTE <= "0000000";
            WHEN "1001" => MSD_7SEG_MINUTE <= "0000100";
            WHEN OTHERS => MSD_7SEG_MINUTE <= "1111111";
        END CASE;

        CASE LowDigitHour IS
            WHEN "0000" => LSD_7SEG_Hour <= "0000001";
            WHEN "0001" => LSD_7SEG_Hour <= "1001111";
            WHEN "0010" => LSD_7SEG_Hour <= "0010010";
            WHEN "0011" => LSD_7SEG_Hour <= "0000110";
            WHEN "0100" => LSD_7SEG_Hour <= "1001100";
            WHEN "0101" => LSD_7SEG_Hour <= "0100100";
            WHEN "0110" => LSD_7SEG_Hour <= "0100000";
            WHEN "0111" => LSD_7SEG_Hour <= "0001111";
            WHEN "1000" => LSD_7SEG_Hour <= "0000000";
            WHEN "1001" => LSD_7SEG_Hour <= "0000100";
            WHEN OTHERS => LSD_7SEG_Hour <= "1111111";
        END CASE;

        CASE HighDigitHour IS
            WHEN "0000" => MSD_7SEG_Hour <= "0000001";
            WHEN "0001" => MSD_7SEG_Hour <= "1001111";
            WHEN "0010" => MSD_7SEG_Hour <= "0010010";
            WHEN "0011" => MSD_7SEG_Hour <= "0000110";
            WHEN "0100" => MSD_7SEG_Hour <= "1001100";
            WHEN "0101" => MSD_7SEG_Hour <= "0100100";
            WHEN "0110" => MSD_7SEG_Hour <= "0100000";
            WHEN "0111" => MSD_7SEG_Hour <= "0001111";
            WHEN "1000" => MSD_7SEG_Hour <= "0000000";
            WHEN "1001" => MSD_7SEG_Hour <= "0000100";
            WHEN OTHERS => MSD_7SEG_Hour <= "1111111";
        END CASE;
    END PROCESS;
END a;