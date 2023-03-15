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
	move a, #5
	
	movc a, @a+dptr
	mov hex5, a
	
	sjmp $
	
end
