; Basic interrupt setup

; We need the register definitions for the 8052:
$MODDE0CV

org 0h
	ljmp myprogram

; Interrupt Service Routines (see page 2-12 of MCS-51 bible)
; Notice that there is not much space to put code between
; service routines, but enough to put a ljmp!

; External interrupt 0
org 3h
	ljmp INT0_ISR

; Timer 0 interrupt
org 0bh
	reti
	
; External interrupt 1
org 13h
	reti

; Timer 1 interrupt
org 1bh
	reti

; Serial port interrupt
org 23h
	reti

; Timer 2 interrupt
org 2bh
	reti
	
T_7seg:
	DB 40h, 79h, 24h, 30h, 19h, 12h, 02h, 78h
	db 00h, 10h, 08h, 03h, 46h, 21h, 06h, 0eh

INT0_ISR:
	push dpl
	push dph
	push acc
	push psw
	
	mov dptr, #T_7seg

	mov a, CntB
	anl a, #00001111b	
	movc a, @a+dptr
	mov hex4, a
	
	mov a, CntB
	anl a, #11110000b ; same as anl a, #0xf0
	swap a
	movc a, @a+dptr
	mov hex5, a	
	     
    mov a, CntB
    add a, #0x99 ; Subtract 1 from BCD CntB
    da a
    mov CntB, a
    
    pop psw
    pop acc
    pop dph
    pop dpl
	reti

DSEG at 0x30
CntA: DS 1
CntB: DS 1

CSEG
;The clock in the CV-8052 is 33.3333MHz. (1 cycle=30ns)
WaitHalfSec:
    mov R2, #90
L3: mov R1, #250
L2: mov R0, #250
L1: djnz R0, L1 ; 3 machine cycles-> 3*30ns*250=22.5us
    djnz R1, L2 ; 22.5us*250=5.625ms
    djnz R2, L3 ; 5.625ms*90=0.506s (give or take)
    ret

; Dummy program, just to compile and see...
myprogram:
	mov SP, #7FH
	mov LEDRA, #0 ; Turn off annoying LEDs
	mov LEDRB, #0 ; Turn off the other annoying LEDs 
	
	mov CntA, #0x00 ; This is a BCD counter
	mov CntB, #0x00 ; This is also a BCD counter used in the Int0 ISR
	
	; Configure and enable external interrupt 0
	setb IT0 ; Interrupt on falling edge (this bit is in the TCON register, see page 'bible' page 3-11)
	setb EX0 ; Enable external interrupt 0
	setb EA ; Enable the whole interrupt system
	
forever:
	mov dptr, #T_7seg

	mov a, CntA
	anl a, #00001111b	
	movc a, @a+dptr
	mov hex0, a
	
	mov a, CntA
	anl a, #11110000b ; same as anl a, #0xf0
	swap a
	movc a, @a+dptr
	mov hex1, a	
	
	; No interrupts allowed here!
	clr EA
    lcall WaitHalfSec
    setb EA
    
    mov a, CntA
    add a, #1
    da a
    mov CntA, a
    
    sjmp forever
END
