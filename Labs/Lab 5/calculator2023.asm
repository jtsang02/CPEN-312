$modde0cv

	CSEG at 0
	ljmp init

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

clear_LEDs:	; Clear all LEDs
	clr a
	mov LEDRA, a
	mov LEDRB, a
	ret
	
;;;;;;;;;;;;;;;;;;;;;; math functions to add ;;;;;;;;;;;;;;;;;;;;;;

modulus:	
	mov R4, x+0 ;saving x value
	mov R5, x+1
	mov R6, x+2
	mov R7, x+3
	lcall div32 ; x = x / y
	; multiply the quotient by y
	lcall mul32 ; x = x * y
	; subtract the product from the original x
	; first move x into y
	lcall xchg_xy
	; move the stored x into x
	mov x+0, R4
	mov x+1, R5
	mov x+2, R6
	mov x+3, R7
	; now subtract the product from x
	lcall sub32 ; x = x - y	
	ret
	
percentage:
	ret

sqrt:
	mov R4, x+0 ;saving x value
	mov R5, x+1
	mov R6, x+2
	mov R7, x+3	
	
sqrt_loop:
	mov R0, x+0 ;saving x value
	mov R1, x+1
	mov R2, x+2
	mov R3, x+3
	
	lcall copy_xy
	lcall mul32 ; x=x^2
	mov y+0, R4 ; x=y 
	mov y+1, R5
	mov y+2, R6
	mov y+3, R7
	lcall x_lteq_y ; check if x^2<=y
	jb mf, display_sqrt ; if it is then youre done
	
	mov x+0, R0 ; mov original input back into x 
	mov x+1, R1
	mov x+2, R2
	mov x+3, R3
	Load_y(1) ; y=1
	lcall sub32 ; x=x-1
	sjmp sqrt_loop ; repeat
	
display_sqrt:
	mov x+0, R0  
	mov x+1, R1
	mov x+2, R2
	mov x+3, R3
	lcall hex2bcd
	lcall Display
	ljmp main_loop
ret

;;;;;;;;;;;;;;;;;;;;;; start of main program ;;;;;;;;;;;;;;;;;;;;;;

init:
	mov SP, #7FH
	lcall clear_LEDs
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
  	lcall clear_LEDs
  	setb LEDRA.0	; set LEDR0 for addition
  	sjmp check_funct

not_0:	
	cjne a, #1, not_1
	mov b, #1
	lcall clear_LEDs
	setb LEDRA.1	; set LEDR1 for subtraction
	sjmp check_funct

not_1:  
	cjne a, #2, not_2
	mov b, #2
	lcall clear_LEDs
	setb LEDRA.2	; set LEDR2 for multiplication
	sjmp check_funct

not_2:
	cjne a, #3, not_3
	mov b, #3
	lcall clear_LEDs
	setb LEDRA.3	; set LEDR3 for division
	sjmp check_funct

not_3:
	cjne a, #4, not_4
	mov b, #4
	lcall clear_LEDs
	setb LEDRA.4	; set LEDR4 for modulus
	sjmp check_funct

not_4:
	cjne a, #5, not_5
	mov b, #5
	lcall clear_LEDs
	setb LEDRA.5	; set LEDR5 for percentage
	sjmp check_funct

not_5:
	mov b, #6	
	lcall clear_LEDs
	setb LEDRA.6	; set LEDR6 for square root

check_funct: 
	; This is a good spot to set the LEDs for each operation... 
	jb KEY.3, no_funct ; If 'Function' key not pressed, skip
	jnb KEY.3, $ ; Wait for release of 'Function' key
	inc b ; 'b' is used as function select 
	mov a, b ; make sure b is not larger than 5
	cjne a, #7, main_loop ; if b is not 7, skip to main_loop
	mov b, #0 ; b is 7, set it to 0
	ljmp main_loop ; Go check for more input

no_funct: 
	jb KEY.2, no_load ; If 'Load' key not pressed, skip
	jnb KEY.2, $ ; Wait for user to release 'Load' key 
	lcall bcd2hex ; Convert the BCD number to hex in x
	lcall copy_xy ; Copy x to y 
	Load_X(0) ; Clear x (this is a macro)
	lcall hex2bcd ; Convert result in x to BCD
	lcall Display ; Display the new BCD number
	ljmp main_loop ; Go check for more input

no_load: 
	jb KEY.1, no_equal ; If 'equal' key not pressed, skip
	jnb KEY.1, $ ; Wait for user to release 'equal' key 
	lcall bcd2hex ; Convert the BCD number to hex in x
	; lcall xchg_xy ; Exchange x and y  
	mov a, b ; Check if we are doing addition
	cjne a, #0, no_add ; ^
	lcall add32 ; Perform x+y 
	lcall hex2bcd ; Convert result in x to BCD
	lcall Display ; Display the new BCD number
	ljmp main_loop ; Go check for more input 

no_add: 
	cjne a, #1, no_sub ; ^
	lcall xchg_xy
	lcall sub32 ; Perform x-y
	lcall hex2bcd ; Convert result in x to BCD
	lcall Display ; Display the new BCD number
	ljmp main_loop ; Go check for more input

no_sub:
	cjne a, #2, no_mul ; ^
	lcall xchg_xy
	lcall mul32 ; Perform x*y
	lcall hex2bcd ; Convert result in x to BCD
	lcall Display ; Display the new BCD number
	ljmp main_loop ; Go check for more input

no_mul:
	cjne a, #3, no_div ; ^
	lcall xchg_xy
	lcall div32 ; Perform x/y
	lcall hex2bcd ; Convert result in x to BCD
	lcall Display ; Display the new BCD number
	ljmp main_loop ; Go check for more input

no_div:
	cjne a, #4, no_mod  ; ^ 
	lcall xchg_xy
 	lcall modulus     	; Perform x%y 
 	lcall hex2bcd       ; Convert result in x to BCD 
 	lcall Display       ; Display the new BCD number 
 	ljmp main_loop		; Go check for more input

no_mod:
	cjne a, #5, no_percent ; ^
	lcall percentage 	; Perform percentage
 	lcall hex2bcd       ; Convert result in x to BCD 
 	lcall Display       ; Display the new BCD number 
 	ljmp main_loop  

no_percent:
	cjne a, #6, no_equal ; ^
	lcall sqrt         	; Perform sqrt
 	lcall hex2bcd       ; Convert result in x to BCD 
 	lcall Display       ; Display the new BCD number 
 	ljmp main_loop

no_equal: 
	; get more numbers 
	lcall ReadNumber 
	jnc no_new_digit ; Indirect jump to 'main_loop'
	lcall Shift_Digits 
	lcall Display 

no_new_digit: 
	ljmp main_loop ; 'main_loop' is to far away, need to use ljmp

nothing:

end
