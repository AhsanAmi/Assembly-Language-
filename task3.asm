	;prints hello world on console
	
	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
	strr byte "Hello World!", 0
	.code
	main proc
	mov edx, offset strr
	call writestring
	main endp
	end main
