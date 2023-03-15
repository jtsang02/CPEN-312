$NOLIST
$MODDE0CV ; Special Function Registers declaration for CV-8052
$LIST

LETTER_J equ 0x61
LETTER_E equ 0x06
LETTER_S equ 0x12
LETTER_U equ 0x41
BLANK    equ 0xFF

NUM_0 EQU 0x40
NUM_1 EQU 0x79
NUM_2 EQU 0x24
NUM_3 EQU 0x30
NUM_4 EQU 0x19
NUM_5 EQU 0x12
NUM_6 EQU 0x02
NUM_7 EQU 0x78
NUM_8 EQU 0x00
NUM_9 EQU 0x10
NUM_A EQU 0x08
NUM_B EQU 0x03
NUM_C EQU 0x46
NUM_D EQU 0x21
NUM_E EQU 0x06
NUM_F EQU 0x0e

DSEG at 0x30
x:      ds 4
y:      ds 4
result: ds 4

org 0000H ; After reset, the processor starts at location zero
	ljmp main_code

T_7Seg:
	db 40H, 79H, 24H, 30H, 19H, 12H, 02H, 78H
	db 00H, 10H, 08H, 03H, 46H, 21H, 06H, 0EH

T_7Segb:
	db NUM_0, NUM_1, NUM_2, NUM_3, NUM_4, NUM_5, NUM_6, NUM_7 
	db NUM_8, NUM_9, NUM_A, NUM_B, NUM_C, NUM_D, NUM_E, NUM_F 
	
; Display in HEX5-HEX4-HEX3-HEX2-HEX1-HEX0 the number passed in [R7, R6, R5]
Display_Number:
	mov dptr, #T_7Seg
	; Do most significant nibble 
	mov a, R4
	anl a, #11110000B
	swap a
	movc a, @dptr+a
	mov HEX5, a
	; Do least significant nibble 
	mov a, R4
	anl a, #00001111B
	movc a, @dptr+a
	mov HEX4, a
		
	; Do most significant nibble 
	mov a, R3
	anl a, #11110000B
	swap a
	movc a, @dptr+a
	mov HEX3, a
	; Do least significant nibble 
	mov a, R3
	anl a, #00001111B
	movc a, @dptr+a
	mov HEX2, a

	; Do most significant nibble 
	mov a, R2
	anl a, #11110000B
	swap a
	movc a, @dptr+a
	mov HEX1, a
	; Do least significant nibble 
	mov a, R2
	anl a, #00001111B
	movc a, @dptr+a
	mov HEX0, a

	ret

; Delay subroutine (Starts with a label, ends with 'ret')	
Delay:
	jb SWA.0, SLOW ; relative jump (can only jump to near labels)
	mov R2, #45
	sjmp GO
SLOW:
	mov R2, #90
GO:
L2:	mov R1, #250
L1:	mov R0, #250
L0: djnz R0, L0 ; 3 machine cycles -> 30ns*3*250=22.5us
	djnz R1, L1 ; 250 * 22.5 us = 5.625 ms
	djnz R2, L2 ; 5.625 ms * 90 = 0.506 s
	ret

Bin2BCD:
	; Set BCD result to all zeros
	mov R2, #0x00
	mov R3, #0x00
	mov R4, #0x00
	; Initialize loop counter to 16
	mov R5, #16
Bin2BCD_loop:
	mov a, R0
	rlc a
	mov R0, a
	mov a, R1
	rlc a
	mov R1, a
	; BCD + BCD + carry
	mov a, R2
	addc a, R2
	da a
	mov R2, a
	mov a, R3
	addc a, R3
	da a
	mov R3, a
	mov a, R4
	addc a, R4
	da a
	mov R4, a
	djnz R5, Bin2BCD_loop
	ret

; R7:R6:R5 all this registers are now in binary
main_code:
	mov sp, #7fh ; For now do this	
	mov LEDRA, #0h
	mov LEDRB, #0h
	
	mov R1, #0x80
	mov R0, #0x00
	
	lcall Bin2BCD
	lcall Display_Number
M0:	
	sjmp M0     ; Repeat forever
END
