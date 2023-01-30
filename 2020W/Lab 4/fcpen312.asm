$MODDE0CV

L_F equ 0EH
L_U equ 41H 
L_C equ 46H 
L_K equ 00001010b 
L_P equ 0CH
L_N equ 48H
L_1 equ 79H
L_2 equ 24H
L_3 equ 30H 
BLANK equ 01111111b

org 0
	ljmp initialize

; // subroutines

FUCK:
	mov HEX5, #L_F
	mov HEX4, #L_U
	mov HEX3, #L_C
	mov HEX2, #L_K
	mov HEX1, #BLANK
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
    mov R2, #180  
L3: mov R1, #250 
L2: mov R0, #250
L1: djnz R0, L1  
    djnz R1, L2  
    djnz R2, L3 
	ret

; // conditions
		
scroll_right:		
	lcall wait
	mov R4, HEX0
	mov HEX0, HEX1
	mov HEX1, HEX2
	mov HEX2, HEX3
	mov HEX3, HEX4
	mov HEX4, HEX5
	mov HEX5, R4
		
sequential:		
	mov HEX5, #L_F
	lcall wait
	mov HEX4, #L_U
	lcall wait
	mov HEX3, #L_C
	lcall wait
	mov HEX2, #L_K
	lcall wait
	ret
		
initialize:
	mov SP, #0x7f ; start every code with this line
	mov LEDRA, #0 
	mov LEDRB, #0
	
main_loop:
	lcall clear
	lcall sequential
	lcall wait
	lcall CPN312
	lcall wait
	sjmp main_loop

; // switch cases


END
