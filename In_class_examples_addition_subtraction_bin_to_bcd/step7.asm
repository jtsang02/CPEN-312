$NOLIST
$MODDE0CV
$LIST

ORG 0
	ljmp main

T_7seg:
	DB 40h, 79h, 24h, 30h, 19h, 12h, 02h, 78h
	db 00h, 10h, 08h, 03h, 46h, 21h, 06h, 0eh


main:
	mov sp, #7fH ; Trust me bro for now!
	
	mov dptr, #T_7seg

	mov R7, #0xaa ; This is the numbe we want to convert
	
	mov a, R7 ; Get the MSD
	mov b, #100
	div ab

	movc a, @a+dptr ; Convert MSD to 7-segment pattern
	mov hex2, a ; Display the pattern in hex2
	
	mov a, b
	mov b, #10
	div ab
	
	movc a, @a+dptr
	mov hex1, a
	
	mov a, b
	movc a, @a+dptr
	mov hex0, a
	
forever:
	sjmp forever	


end
