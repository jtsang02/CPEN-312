$modde0cv

	CSEG at 0
	ljmp initialize

dseg at 30h

x:		ds	4 ; 32-bits for variable 'x'
y:		ds	4 ; 32-bits for variable 'y'
bcd:	ds	5 ; 10-digit packed BCD (each byte stores 2 digits)

bseg

mf:		dbit 1 ; math functions flag

$include(math32.asm)

	CSEG

; Look-up table for 7-seg displays
myLUT:
    DB 0C0H, 0F9H, 0A4H, 0B0H, 099H        ; 0 TO 4
    DB 092H, 082H, 0F8H, 080H, 090H        ; 4 TO 9

showBCD MAC
	; Display LSD
    mov A, %0
    anl a, #0fh
    movc A, @A+dptr
    mov %1, A
	; Display MSD
    mov A, %0
    swap a
    anl a, #0fh
    movc A, @A+dptr
    mov %2, A
ENDMAC

Display:
	mov dptr, #myLUT
	showBCD(bcd+0, HEX0, HEX1)
	showBCD(bcd+1, HEX2, HEX3)
	showBCD(bcd+2, HEX4, HEX5)
    ret

MYRLC MAC
	mov a, %0
	rlc a
	mov %0, a
ENDMAC

Shift_Digits:
	mov R0, #4 ; shift left four bits
Shift_Digits_L0:
	clr c
	MYRLC(bcd+0)
	MYRLC(bcd+1)
	MYRLC(bcd+2)
	MYRLC(bcd+3)
	MYRLC(bcd+4)
	djnz R0, Shift_Digits_L0
	; R7 has the new bcd digit	
	mov a, R7
	orl a, bcd+0
	mov bcd+0, a
	; bcd+3 and bcd+4 don't fit in the 7-segment displays so make them zero
	clr a
	mov bcd+4, a
	ret

Wait50ms:
;33.33MHz, 1 clk per cycle: 0.03us
	mov R0, #30
L3: mov R1, #74
L2: mov R2, #250
L1: djnz R2, L1 ;3*250*0.03us=22.5us
    djnz R1, L2 ;74*22.5us=1.665ms
    djnz R0, L3 ;1.665ms*30=50ms
    ret

; Check if SW0 to SW9 are toggled up.  Returns the toggled switch in
; R7.  If the carry is not set, no toggling switches were detected.
ReadNumber:
	mov r4, SWA ; Read switches 0 to 7
	mov a, SWB ; Read switches 8 to 9
	anl a, #00000011B ; Only two bits of SWB available
	mov r5, a
	mov a, r4
	orl a, r5
	jz ReadNumber_no_number
	lcall Wait50ms ; debounce
	mov a, SWA
	clr c
	subb a, r4
	jnz ReadNumber_no_number ; it was a bounce
	mov a, SWB
	anl a, #00000011B
	clr c
	subb a, r5
	jnz ReadNumber_no_number ; it was a bounce
	mov r7, #16 ; Loop counter
ReadNumber_L0:
	clr c
	mov a, r4
	rlc a
	mov r4, a
	mov a, r5
	rlc a
	mov r5, a
	jc ReadNumber_decode
	djnz r7, ReadNumber_L0
	sjmp ReadNumber_no_number	
ReadNumber_decode:
	dec r7
	setb c
ReadNumber_L1:
	mov a, SWA
	jnz ReadNumber_L1
ReadNumber_L2:
	mov a, SWB
	jnz ReadNumber_L2
	ret
ReadNumber_no_number:
	clr c
	ret
	
clearLEDs:
	clr a
	mov LEDRA, a
	mov LEDRB, a
	ret
	
initialize:
	mov SP, #7FH
	lcall clearLEDs
	mov bcd+0, a
	mov bcd+1, a
	mov bcd+2, a
	mov bcd+3, a
	mov bcd+4, a
	lcall Display

  main_loop:  	
  	mov a, b
  	cjne a, #0, not_0
  	mov b, #0
  	lcall clearLEDs
  	setb LEDRA.0
  	sjmp check_funct
  	
  not_0:
  	cjne a, #1, not_1
  	mov b, #1
  	lcall clearLEDs
  	setb LEDRA.1
  	sjmp check_funct
  
  not_1:
  	cjne a, #2, not_2
 	mov b, #2 
 	lcall clearLEDs
 	setb LEDRA.2
 	sjmp check_funct
 	
  not_2:
 	mov b, #3
 	lcall clearLEDs
 	setb LEDRA.3
  	
  check_funct:
	jb KEY.3, not_funct 	
	jnb KEY.3, $ 		
	inc b 			
	mov a, b 			
	anl a, #3
	mov b, a
	ljmp main_loop
	
  not_funct:				
	jb KEY.2, not_load 	
	jnb KEY.2, $ 		
	lcall bcd2hex		
	lcall copy_xy		
	Load_X(0)			
	lcall hex2bcd		
	lcall Display		
	ljmp main_loop			
	
  not_load:				
  	jb KEY.1, not_equal 
	jnb KEY.1, $ 		
  	lcall bcd2hex		
	mov a, b			
	cjne a, #0, not_add
	lcall add32			
	call hex2bcd		
	lcall Display		
	ljmp main_loop		
		
  not_add:
  	cjne a, #1, not_sub
  	lcall xchg_xy
  	lcall sub32
  	call hex2bcd
  	lcall Display
  	ljmp main_loop
  	
  not_sub:
  	cjne a, #2, not_mul
  	lcall xchg_xy
  	lcall mul32
  	call hex2bcd
  	lcall Display
  	ljmp main_loop
 
  not_mul:
  	cjne a, #3, nothing
  	lcall xchg_xy
  	lcall div32
  	call hex2bcd
  	lcall Display
  	ljmp main_loop  
  	
  not_equal:
  	lcall ReadNumber
    jnc no_new_digit
	lcall Shift_Digits
	lcall Display
  
  no_new_digit:
	ljmp main_loop
	
  nothing:
	
end
