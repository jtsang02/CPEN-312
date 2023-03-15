$NOLIST
$MODDE0CV
$LIST

; this program displays the number 5

ORG 0
	ljmp main
	
T_7seg:
	DB 40h, 79h, 24h, 30h, 19h, 12h, 02h, 78h
	db 00h, 10h, 08h, 03h, 46h, 21h, 06h, 0eh

Display_Byte:
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
	
main:
	mov sp, #7fH ; not sure what this does yet
	
	mov dptr, #T_7seg
	mov r0, #0xa3
	lcall Display_Byte
	
	sjmp $

forever:
	sjmp forever
	
end

; never jump into a subroutine!
; number of lcall's must match number of ret's