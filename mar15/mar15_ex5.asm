$NOLIST
$MODDE0CV
$LIST

; this program displays the number 5

ORG 0
	ljmp main
	
T_7seg:
	DB 40h, 79h, 24h, 30h, 19h, 12h, 02h, 78h
	db 00h, 10h, 08h, 03h, 46h, 21h, 06h, 0eh

; This subroutine displays the hex number passed in register r0
Display_Byte_01:
	mov a, r0
	anl a, #00001111b
	movc a, @a+dptr
	mov hex0, a
	
	mov a, r0
	anl a, #11110000b ; same as anl a, #0xf0
	
	swap a
	movc a, @a+dptr
	mov hex1, a
	ret

Display_Byte_23:
	mov a, r0
	anl a, #00001111b
	movc a, @a+dptr
	mov hex2, a
	
	mov a, r0
	anl a, #11110000b ; same as anl a, #0xf0
	
	swap a
	movc a, @a+dptr
	mov hex3, a
	ret

main:
	mov sp, #7fH ; not sure what this does yet
	
	mov dptr, #T_7seg
	
	; add two 16 bit numbers
	
	; first number is [r7, r6] or in this case 1234 (dec)
	mov r7, #0xA0
	mov R6, #0x34
	
	; second number is [r5, r4] or in this case 4567 (dec)
	mov R5, #0x45
	mov R4, #0x67
	
	; get the 9's compliment of R5R4
	
	clr c
	mov a, #0x99
	subb a, R5
	mov R5, a
	
	clr c
	mov a, #0x99
	subb a, R4
	mov R4, a
	
	setb c	; because we need minuend + nine+complmement (R5R4) + 1
	mov a, R6
	addc a, R4
	da a
	mov R2, a
	
	mov a, R7
	subb a, R5
	mov R3, a
	
	; mov R0, R2 ; no instruction to move from one register to another 
	mov a, R2
	mov R0, a
	lcall Display_Byte_01
	
	
	;mov R0, R3
	mov a, R3
	mov R0, a
	lcall Display_Byte_23
	
	sjmp $

forever:
	sjmp forever
	
end

; never jump into a subroutine!
; number of lcall's must match number of ret's
; we cannot use da instruction for subtraction, only addition
