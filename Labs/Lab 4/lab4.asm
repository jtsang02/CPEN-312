$MODDE0CV
; student#: 74191248

L_C equ 46H
L_P equ 0CH
L_N equ 48H
L_H equ 9H
L_E equ 6H 
L_L equ 47H 
L_O equ 40H 
L_1 equ 79H
L_2 equ 24H
L_3 equ 30H 
L_4 equ 19H
L_7 equ 78H
L_8 equ 0H
L_9 equ 10H
BLANK equ 01111111b

org 0
	ljmp initialize

; // subroutines

sixMSB:
	mov HEX5, #L_7
	mov HEX4, #L_4
	mov HEX3, #L_1
	mov HEX2, #L_9
	mov HEX1, #L_1
	mov HEX0, #L_2
	ret

sixLSB:
	mov HEX5, #L_1
	mov HEX4, #L_9
	mov HEX3, #L_1
	mov HEX2, #L_2
	mov HEX1, #L_4
	mov HEX0, #L_8
	ret

Hello:
	mov HEX5, #L_H
	mov HEX4, #L_E
	mov HEX3, #L_L
	mov HEX2, #L_L
	mov HEX1, #L_O
	mov HEX0, #BLANK
	ret
	
CPN312:
	mov HEX5, #L_C
	mov HEX4, #L_P
	mov HEX3, #L_N
	mov HEX2, #L_3
	mov HEX1, #L_1
	mov HEX0, #L_2
	ret

clear:
	mov HEX5, #BLANK
	mov HEX4, #BLANK
	mov HEX3, #BLANK
	mov HEX2, #BLANK
	mov HEX1, #BLANK
	mov HEX0, #BLANK
	ret
	
wait:
	jb SWA.3, waitHalfSec
    mov R2, #180  
L3: mov R1, #250 
L2: mov R0, #250
L1: djnz R0, L1  
    djnz R1, L2  
    djnz R2, L3
    jnb KEY.3, jb_main_loop 
	ret

waitHalfSec:
	mov R2, #90
L6: mov R1, #250
L5: mov R0, #250
L4: djnz R0, L4 ; 3 machine cycles-> 3*30ns*250=22.5us
	djnz R1, L5 ; 22.5us*250=5.625ms
	djnz R2, L6 ; 5.625ms*90=0.506s (approximately)
    jnb KEY.3, jb_main_loop 
	ret

; // conditions
	
show_6MSB:				;000
	lcall sixMSB
	ljmp main_loop
	
show_2LSB:				;001
	mov HEX5, #BLANK
	mov HEX4, #BLANK
	mov HEX3, #BLANK
	mov HEX2, #BLANK
	mov HEX1, #L_4
	mov HEX0, #L_8
	ljmp main_loop
	
scroll_left:			;010
	lcall wait
	mov R3, HEX5
	mov HEX5, HEX4
	mov HEX4, HEX3
	mov HEX3, HEX2
	mov HEX2, HEX1
	mov HEX1, HEX0
	mov HEX0, R3			
	sjmp scroll_left

scroll_right:			;011
	lcall wait
	mov R3, HEX0
	mov HEX0, HEX1
	mov HEX1, HEX2
	mov HEX2, HEX3
	mov HEX3, HEX4
	mov HEX4, HEX5
	mov HEX5, R3
	sjmp scroll_right

blink_6LSB:				;100
	;jb SWA.3, blink_6LSB_HalfSec
	lcall clear
	lcall sixLSB
	lcall wait
	lcall clear
	lcall wait
	sjmp blink_6LSB
	
jb_main_loop:			
	ljmp main_loop
	
sequential_6MSB:		;101
	lcall clear
	mov HEX5, #L_7
	lcall wait
	mov HEX4, #L_4
	lcall wait
	mov HEX3, #L_1
	lcall wait
	mov HEX2, #L_9
	lcall wait
	mov HEX1, #L_1
	lcall wait
	mov HEX0, #L_2
	lcall wait
	lcall clear
	lcall wait
	sjmp sequential_6MSB
	
blink3:					;110
	lcall clear
	lcall Hello	
	lcall wait
	lcall clear
	lcall wait
	lcall sixMSB
	lcall wait
	lcall clear
	lcall wait
	lcall CPN312
	lcall wait
	lcall clear
	lcall wait	
	sjmp blink3
	
random:					;111
	lcall clear
	mov HEX0, #L_2	
	mov HEX1, #L_1	
	lcall wait
	mov HEX2, #L_9	
	mov HEX3, #L_1
	lcall wait
	mov HEX4, #L_4				
	mov HEX5, #L_7
	lcall wait
	lcall clear
	lcall wait
	mov HEX5, #L_7
	mov HEX4, #L_4
	lcall wait
	mov HEX3, #L_1
	mov HEX2, #L_9
	lcall wait
	mov HEX1, #L_1
	mov HEX0, #L_2
	lcall wait
	lcall clear
	lcall wait			
	sjmp random

jb6MSB:
	ljmp show_6MSB
	
jb2LSB:		
	ljmp show_2LSB
	
jb_blink_6MSB:
	ljmp blink_6LSB
	
set_SWA:
	mov a, swa
	sjmp events
		
initialize:
	mov SP, #0x7f 
	mov LEDRA, #0 
	mov LEDRB, #0
	
main_loop:
	jnb KEY.3, set_SWA
	sjmp main_loop

; // switch cases

events:
	cjne a, #00000000b, not00000000b
	ljmp jb6MSB
	
not00000000b:
	cjne a, #00000001b, not00000001b
	sjmp jb2LSB
	
not00000001b:
	cjne a, #00000010b, not00000010b
	lcall sixMSB
	ljmp scroll_left

not00000010b:
	cjne a, #00000011b, not00000011b
	lcall sixMSB
	ljmp scroll_right
	 
not00000011b:
	cjne a, #00000100b, not00000100b
	ljmp blink_6LSB

not00000100b:
	cjne a, #00000101b, not00000101b
	ljmp sequential_6MSB

not00000101b:
	cjne a, #00000110b, not00000110b
	ljmp blink3
	
not00000110b:
	cjne a, #00000111b, done
	ljmp random

done:

END
