	;prints fabonacci sequence
	
	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
prompt byte "Enter the range for Fibonacci sequence: ", 0
	s byte " ", 0
	rangee dword ?
	.code
	main proc
	mov edx, offset prompt
	call writestring
	call readint
	mov rangee, eax
	mov eax, 0
	mov ebx, 1
	cal:
	call writedec
	mov edx, offset s
	call writestring
	mov esi, ebx
	add ebx, eax
	mov eax, esi
	cmp eax, rangee
	jng cal
	main endp
	end main
