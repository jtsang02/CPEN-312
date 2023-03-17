$NOLIST
$MODDE0CV
$LIST

; this program displays the number 5

ORG 0
	ljmp main
	
T_7seg:
	DB 40h, 79h, 24h, 30h, 19h, 12h, 02h, 78h
	db 00h, 10h, 08h, 03h, 46h, 21h, 06h, 0eh

main:
	mov sp, #7fH ; not sure what this does yet
	
	mov dptr, #T_7seg
	
	mov R7, #0xaa	; this is the number we want to convert
	mov a, R7		; get the MSD
	mov b, #100
	div ab
	
	movc a, @a+dptr	; convert MSD to 7-segment pattern
	mov hex2, a		; display the pattern in hex2
	
	mov a, b
	mov b, #10
	div ab
	
	movc a, @a+dptr
	mov hex1, a
	
	mov a, b
	movc a, @a+dptr
	mov hex0, a

	
	sjmp $

forever:
	sjmp forever
	
end

; never jump into a subroutine!
; number of lcall's must match number of ret's
; we cannot use da instruction for subtraction, only addition
