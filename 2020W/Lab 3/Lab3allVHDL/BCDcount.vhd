LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY BCDCOUNT IS
	port(
	KEY0, KEY1, KEY2, KEY3, CLK_50						:IN 	STD_LOGIC;
   SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, MODE24	:IN   STD_LOGIC;
	CLK_ON														:IN 	STD_LOGIC;
	LEDR9, LEDR8												:BUFFER	STD_LOGIC;
	MSD5, LSD4, MSD3, LSD2, MSD1, LSD0		        	:OUT    STD_LOGIC_VECTOR (0 to 6) 			
	);
END BCDCOUNT;

ARCHITECTURE a of BCDCOUNT is
	SIGNAL ClkFlag:	        STD_LOGIC;
	SIGNAL PM: 		        STD_LOGIC;
	SIGNAL Internal_Count:	STD_LOGIC_VECTOR(28 downto 0);	
	SIGNAL HighDigit2, LowDigit2, HighDigit1, LowDigit1, HighDigit0, LowDigit0: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL MSD5_7SEG, LSD4_7SEG, MSD3_7SEG, LSD2_7SEG, MSD1_7SEG, LSD0_7SEG: STD_LOGIC_VECTOR(0 to 6);

BEGIN
	LSD0<=LSD0_7SEG;  -- initialize
	MSD1<=MSD1_7SEG;
   	LSD2<=LSD2_7SEG;
   	MSD3<=MSD3_7SEG;
   	LSD4<=LSD4_7SEG;
   	MSD5<=MSD5_7SEG;

PROCESS(CLK_50, CLK_ON) 						
BEGIN
	if (CLK_ON = '0') then									
		if(CLK_50'event and CLK_50='1') then
			if Internal_Count<25000000 then
				Internal_Count<=Internal_Count+1;
			else
				Internal_Count<=(others => '0'); 
				ClkFlag<=not ClkFlag;
			end if;
		end if;
	end if;
END PROCESS;

PROCESS(ClkFlag, PM, CLK_ON, MODE24, KEY0, KEY1, KEY2, KEY3, SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, LowDigit2, HighDigit2, LowDigit1, HighDigit1, LowDigit0, HighDigit0)			-- display function
BEGIN
-------------------------------SET TIME  -------------------------------------------------------------------------------------------

	if (CLK_ON='1') then
		if(KEY1 ='0') then				-- latch seconds when KEY1 is pressed
			LowDigit0(0) <= SW0;
			LowDigit0(1) <= SW1;
			LowDigit0(2) <= SW2;
			LowDigit0(3) <= SW3;
			HighDigit0(0) <= SW4;
			HighDigit0(1) <= SW5;
			HighDigit0(2) <= SW6;
			HighDigit0(3) <= SW7;
		end if;
		
		if(KEY2='0') then					-- latch mins when KEY2 is pressed
			LowDigit1(0) <= SW0;
			LowDigit1(1) <= SW1;
			LowDigit1(2) <= SW2;
			LowDigit1(3) <= SW3;
			HighDigit1(0) <= SW4;
			HighDigit1(1) <= SW5;
			HighDigit1(2) <= SW6;
			HighDigit1(3) <= SW7;
		end if;
	
		if(KEY3 = '0') then				-- latch hrs when KEY3 is pressed
			LowDigit2(0) <= SW0;
			LowDigit2(1) <= SW1;
			LowDigit2(2) <= SW2;
			LowDigit2(3) <= SW3;
			HighDigit2(0) <= SW4;
			HighDigit2(1) <= SW5;
			HighDigit2(2) <= SW6;
			HighDigit2(3) <= SW7;
		end if;
	
		if (LowDigit0 > 9) then		LowDigit0 <="0000";        -- if LSD seconds is greater than 9, set to 0
		end if;	

		if (HighDigit0 > 5) then	HighDigit0 <= "0000";	   -- if MSD seconds is greater than 5 set to 0			
		end if;

		if (LowDigit1 > 9) then     LowDigit1 <= "0000";       -- if LSD mins is greater than 9, set to 0
		end if;
	
		if (HighDigit1 > 5) then    HighDigit1 <= "0000";      -- if MSD mins greater than 5 set to 0		
		end if;
	
		if (LowDigit2 > 9) then     LowDigit2 <= "0000";       -- if LSD mins greater than 5 set to 0	
		end if;	
        
		if (MODE24='0') then
            LEDR8<='1'; 
		    if (HighDigit2 > 1) then	HighDigit2 <= "0000";      -- if MSD hrs greater than 1 set to 0	
		    end if;
			if (HighDigit2 >= 1 and LowDigit2 > 2) then	LowDigit2 <= "0000";
			end if;
		else
            LEDR8<='0';
            if (HighDigit2 > 2) then	HighDigit2 <= "0000";      -- if MSD hrs greater than 1 set to 0	
            end if;
			if (HighDigit2 >= 2 and LowDigit2 > 4) then	LowDigit2 <="0000";
		    end if;
		end if;

---------------CLOCK RUNNING --------------------------------------------------------------------------------------------------------------

	else
		if (KEY0='0') then 							-- reset all to 12:00
			LowDigit0<="0000";
			HighDigit0<="0000";
         	LowDigit1<="0000";
         	HighDigit1<="0000";
         	LowDigit2<="0010";
         	HighDigit2<="0001";
			
		elsif(ClkFlag'event and ClkFlag='1') then
			if (LowDigit0=9) then                   -- seconds counter
				LowDigit0<="0000";
            	if (HighDigit0=5) then
					HighDigit0<="0000";
					LowDigit1<=LowDigit1+'1';
				else 
					HighDigit0<=HighDigit0+'1';
				end if;
			else
				LowDigit0<=LowDigit0+'1';
			end if;
			
			if (LowDigit1=9) then                   -- minutes counter
				LowDigit1<="0000";
				if (HighDigit1=5) then
					HighDigit1<="0000";
					LowDigit2<=LowDigit2+'1';
				else
					HighDigit1<=HighDigit1+'1';
				end if;
			end if;

            if (MODE24='0') then
                LEDR8<='1';                  -- 12 hour counter
				if (LowDigit2=2) then         
					if (HighDigit2=1) then
                        PM <= not PM;
                        LEDR9<=PM;
						HighDigit2<="0000";
						LowDigit2<="0000";
					else
						HighDigit2<=HighDigit2+'1';
					end if;
				end if;
        	else
                LEDR8<='0';                   -- 24 hour counter                    
			    if (LowDigit2=4) then                    
				    if (HighDigit2=2) then
					    HighDigit2<="0000";
               		    LowDigit2<="0000";
         		    else 
			   		    HighDigit2<=HighDigit2+'1';
				    end if;
			    end if;
		    end if;
        end if;
    end if;
					
        case LowDigit2 is
			when "0000" => LSD4_7SEG <= "0000001"; 
			when "0001" => LSD4_7SEG <= "1001111"; 
			when "0010" => LSD4_7SEG <= "0010010"; 
			when "0011" => LSD4_7SEG <= "0000110"; 
			when "0100" => LSD4_7SEG <= "1001100"; 
			when "0101" => LSD4_7SEG <= "0100100"; 
			when "0110" => LSD4_7SEG <= "0100000"; 
			when "0111" => LSD4_7SEG <= "0001111"; 
			when "1000" => LSD4_7SEG <= "0000000"; 
			when "1001" => LSD4_7SEG <= "0000100";
			when others => LSD4_7SEG <= "1111111"; 
		end case;

		case HighDigit2 is
			when "0000" => MSD5_7SEG <= "0000001";
			when "0001" => MSD5_7SEG <= "1001111";
			when "0010" => MSD5_7SEG <= "0010010";
			when "0011" => MSD5_7SEG <= "0000110";
			when "0100" => MSD5_7SEG <= "1001100";
			when "0101" => MSD5_7SEG <= "0100100";
			when "0110" => MSD5_7SEG <= "0100000";
			when "0111" => MSD5_7SEG <= "0001111";
			when "1000" => MSD5_7SEG <= "0000000";
			when "1001" => MSD5_7SEG <= "0000100";
			when others => MSD5_7SEG <= "1111111";
		end case;

        case LowDigit1 is
			when "0000" => LSD2_7SEG <= "0000001";
			when "0001" => LSD2_7SEG <= "1001111";
			when "0010" => LSD2_7SEG <= "0010010";
			when "0011" => LSD2_7SEG <= "0000110";
			when "0100" => LSD2_7SEG <= "1001100";
			when "0101" => LSD2_7SEG <= "0100100";
			when "0110" => LSD2_7SEG <= "0100000";
			when "0111" => LSD2_7SEG <= "0001111";
			when "1000" => LSD2_7SEG <= "0000000";
			when "1001" => LSD2_7SEG <= "0000100";
			when others => LSD2_7SEG <= "1111111";
		end case;

		case HighDigit1 is
			when "0000" => MSD3_7SEG <= "0000001";
			when "0001" => MSD3_7SEG <= "1001111";
			when "0010" => MSD3_7SEG <= "0010010";
			when "0011" => MSD3_7SEG <= "0000110";
			when "0100" => MSD3_7SEG <= "1001100";
			when "0101" => MSD3_7SEG <= "0100100";
			when "0110" => MSD3_7SEG <= "0100000";
			when "0111" => MSD3_7SEG <= "0001111";
			when "1000" => MSD3_7SEG <= "0000000";
			when "1001" => MSD3_7SEG <= "0000100";
			when others => MSD3_7SEG <= "1111111";
		end case;

		case LowDigit0 is
			when "0000" => LSD0_7SEG <= "0000001";
			when "0001" => LSD0_7SEG <= "1001111";
			when "0010" => LSD0_7SEG <= "0010010";
			when "0011" => LSD0_7SEG <= "0000110";
			when "0100" => LSD0_7SEG <= "1001100";
			when "0101" => LSD0_7SEG <= "0100100";
			when "0110" => LSD0_7SEG <= "0100000";
			when "0111" => LSD0_7SEG <= "0001111";
			when "1000" => LSD0_7SEG <= "0000000";
			when "1001" => LSD0_7SEG <= "0000100";
			when others => LSD0_7SEG <= "1111111";
		end case;

		case HighDigit0 is
			when "0000" => MSD1_7SEG <= "0000001";
			when "0001" => MSD1_7SEG <= "1001111";
			when "0010" => MSD1_7SEG <= "0010010";
			when "0011" => MSD1_7SEG <= "0000110";
			when "0100" => MSD1_7SEG <= "1001100";
			when "0101" => MSD1_7SEG <= "0100100";
			when "0110" => MSD1_7SEG <= "0100000";
			when "0111" => MSD1_7SEG <= "0001111";
			when "1000" => MSD1_7SEG <= "0000000";
			when "1001" => MSD1_7SEG <= "0000100";
			when others => MSD1_7SEG <= "1111111";
		end case;
END PROCESS;
end a;