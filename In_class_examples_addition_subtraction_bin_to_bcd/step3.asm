$NOLIST
$MODDE0CV
$LIST

ORG 0
	ljmp main

T_7seg:
	DB 40h, 79h, 24h, 30h, 19h, 12h, 02h, 78h
	db 00h, 10h, 08h, 03h, 46h, 21h, 06h, 0eh

; This subroutine display the hex number passed in
; register r0
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
	mov a, R0
	anl a, #00001111b	
	movc a, @a+dptr
	mov hex2, a
	
	mov a, R0
	anl a, #11110000b ; same as anl a, #0xf0
	swap a
	movc a, @a+dptr
	mov hex3, a

	ret
	
main:
	mov sp, #7fH ; Trust me bro for now!
	
	mov dptr, #T_7seg
	
	; add two 16-bit numbers
	
	; first number is [R7,R6] or in this case 0x3A22
	mov R7, #0x3A
	mov R6, #0x22
	
	; second number is [R5,R4] or in this case 0x1103
	mov R5, #0x11
	mov R4, #0x03
	
	; The answer is 0x4B25
	
	mov a, R6
	add a, R4
	mov R2, a
	
	mov a, R7
	addc a, R5
	mov R3, a
	
	mov a, R2
	mov R0, a	
	lcall Display_Byte_01

	mov a, R3
	mov R0, a
	lcall Display_Byte_23
	
forever:
	sjmp forever	


end
