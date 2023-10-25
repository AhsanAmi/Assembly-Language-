	;performs linear search in array
	
	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
	arrr dword 10, 20, 30, 40, 50
prompt byte "Enter a value to search in the Pre - defined array: ", 0
yess byte "Value found on index : ", 0
	noo byte "Value not found!", 0
	.code
	main proc
	mov esi, offset arrr
	mov ecx, lengthof arrr
	mov edx, offset prompt
	call writestring
	call readint
	call crlf
traverser:
	cmp eax, [esi]
	je found
	add esi, 4
	loop traverser
	mov edx, offset noo
	call writestring
	jmp endd
found:
	sub esi, offset arrr
	mov eax, esi
	mov edx, offset yess
	call writestring
	call writedec
endd:
	main endp
	end main
