.data
start_number byte 11001110b
.code
asm_func PROC
	mov al, start_number

	mov cl, 8 ; ������� ��� ����� �� 8 ��������
	xor bl, bl
	reverse_loop:
		rcr al, 1	; ����� ������ ������, ��� ������� �������� ����������� � cf
		rcl bl, 1	; 
		loop reverse_loop
		mov al, bl


	ret	
asm_func ENDP

end