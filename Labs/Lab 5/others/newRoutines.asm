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
    lcall mul32 ; x = x * y
	Load_y(100)	; now divide by 100
	lcall div32; x = x / y
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