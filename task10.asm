	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
	arrr BYTE 3, 7, 9, 1, 8, 2, 4, 5, 6, 10
prompt1 byte "Before sorting: ", 0
prompt2 byte "After sorting: ", 0
	space byte " ", 0
	.code
	main PROC
	mov edx, offset prompt1
	call writestring
	mov esi, offset arrr
	mov ecx, lengthof arrr
	
printer:
	mov eax, [esi]
	call writedec
	mov edx, offset space
	inc esi
	loop printer
	
	
	mov edx, lengthof arrr
oloop:
	mov ecx, lengthof arrr
	mov esi, offset arrr
	
iloop:
	mov al, [esi]
	cmp al, [esi + 1]
	jl common
	xchg al, [esi + 1]
	mov [esi], al
	
common:
	INC esi
	loop iloop
	
	dec edx
	jnz oloop
	
	;mov ecx, lengthof arrr
	; mov ebx, typeof arrr
	; mov esi, offset arrr
	
	;call DUMPMem
	
	exit
	main ENDP
	
	END main
