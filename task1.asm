	;Swapping values without third variable
	
	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
	num1 dword 10
	num2 dword 20
	before byte "Before swapping", 0
val1 byte "Value one: ", 0
val2 byte "value two: ", 0
	after byte "After swapping", 0
val3 byte "Value one: ", 0
val4 byte "value two: ", 0
	.code
	main proc
	mov edx, offset before
	call writestring
	call crlf
	mov edx, offset val1
	mov eax, num1
	call writestring
	call writedec
	call crlf
	mov edx, offset val2
	mov eax, num2
	call writestring
	call writedec
	call crlf
	call swapp
	call crlf
	mov edx, offset after
	call writestring
	call crlf
	mov edx, offset val3
	mov eax, num1
	call writestring
	call writedec
	call crlf
	mov edx, offset val4
	mov eax, num2
	call writestring
	call writedec
	call crlf
	main endp
	swapp proc
	mov ebx, num1
	mov ecx, num2
	add ebx, ecx
	mov eax, ebx
	sub ebx, ecx
	mov ecx, ebx
	mov ebx, eax
	sub ebx, ecx
	mov num1, ebx
	mov num2, ecx
	ret
	swapp endp
	end main
