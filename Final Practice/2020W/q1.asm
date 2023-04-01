$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp main
	

; Delay5ms:
; 	;33.33MHz, 1 clk per cycle: 0.03us
; 	    mov R0, #222
;     L3: mov R5, #250
; 	L2: mov R1, #250
; 	L1: djnz R1, L1 ;3*250*0.03us=22.5us
; 	    djnz R0, L2 ;222*22.5us=4.995ms
;         djnz R5, L3 ;250*4.995ms=1.24875ms
;     ret

; use this for physical testing 
delay500ms:
	mov R5, #90
    L2: mov R1, #250
    L1: mov R0, #250
    L0: djnz R0, L0 ; 3 machine cycles-> 3*30ns*250=22.5us
        djnz R1, L1 ; 22.5us*250=5.625ms
        djnz R5, L2 ; 5.625ms*90=0.506s (approximately)
	ret

gen_signal:
    mov R2, #2
    mov R3, #3
    mov R4, #11
    clr P3.3   ;set P3.3 to low
    clr LEDRA.0 ;set LEDRA.0 to low
    L4: lcall Delay500ms  ;delay 10ms
        djnz R2, L4   
    setb P3.3    ;set P3.3 to high
    setb LEDRA.0 ;set LEDRA.0 to high
    L5: lcall Delay500ms  ;delay 15ms
        djnz R3, L5
    clr P3.3   ;set P3.3 to low
    clr LEDRA.0 ;set LEDRA.0 to low
    L6: lcall Delay500ms  ;delay 55ms
        djnz R4, L6
    setb P3.3    ;set P3.3 to high
    setb LEDRA.0 ;set LEDRA.0 to high
    ret

main:
	mov SP, #0x7f
	mov LEDRA, #0 ; Bit addressable

Forever:
    lcall Delay500ms  ;delay 500ms for default
    lcall gen_signal
    sjmp Forever	

END
