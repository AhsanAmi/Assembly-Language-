	;performs arithematic operations on two numbers
	
	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
	num1 dword ?
	num2 dword ?
prompt1 byte "Enter first number: ", 0
prompt2 byte "Enter second number: ", 0
a byte "Their addition is: ", 0
s byte "Their subtraction is: ", 0
m byte "Their multiplication is: ", 0
divi byte "Their division is: ", 0
	.code
	main PROC
	mov edx, offset prompt1
	call writestring
	call ReadInt
	mov num1, eax
	mov edx, offset prompt2
	call writestring
	call ReadInt
	mov num2, eax
	call crlf
	;addition
	add eax, num1
	mov edx, offset a
	call writestring
	call writedec
	call crlf
	;multiplication
	mov eax, num1
	mul num2
	mov edx, offset m
	call writestring
	call writedec
	call crlf
	;subtraction
	mov eax, num1
	sub eax, num2
	mov edx, offset s
	call writestring
	call writeint
	call crlf
	;division
	mov eax, num1
	div num2
	mov edx, offset divi
	call writestring
	call writedec
	call crlf
	main ENDP
	END main
