.data
start_number byte 11001110b
.code
asm_func PROC
	mov al, start_number

	mov cl, 8 ; счетчик для цикла на 8 итераций
	xor bl, bl
	reverse_loop:
		rcr al, 1	; после сдвига вправо, бит который сдвинули сохраняется в cf
		rcl bl, 1	; 
		loop reverse_loop
		mov al, bl


	ret	
asm_func ENDP

end