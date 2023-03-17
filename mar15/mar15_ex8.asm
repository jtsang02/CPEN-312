$NOLIST
$MODDE0CV
$LIST

; this program displays the number 5

ORG 0
	ljmp main
	
T_7seg:
	DB 40h, 79h, 24h, 30h, 19h, 12h, 02h, 78h
	db 00h, 10h, 08h, 03h, 46h, 21h, 06h, 0eh


;Converts the hex number in R0-R1 to BCD
;in R2-R3-R4
hex2bcd:
	mov R2, #0 ;Set BCD result to 00000
	mov R3, #0
	mov R4, #0
	mov R5, #16 ;Loop counter.
L0:
	mov a, R1 ;Shift R0-R1 left through carry
	rlc a
	mov R1, a
	mov a, R0
	rlc a
	mov R0, a


main:
	mov sp, #7fH ; not sure what this does yet
	
	mov dptr, #T_7seg
	
	; load to [R0, R1] 0xc7aa
	mov R0, #0xc7
	mov R1, 0xaaa
	
	; convert to bcd
	lcall hex2bcd
	
	mov a, R2
	mov R0, a
	
	lcall Display_Byte_45
	
	mov a, R2
	movR0, a
	lcall Display_Byte_23
	
	mov a, R3
	movR0, a
	lcall Display_Byte_01
	
	sjmp $

forever:
	sjmp forever
	
end

; never jump into a subroutine!
; number of lcall's must match number of ret's
; we cannot use da instruction for subtraction, only addition
