	;check if character is vowel or not
	
	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
prompt byte "Please enter a character: ", 0
	prompt2 byte "It is a vowel ", 0
	prompt3 byte "It is a consonant ", 0
	.code
	main proc
	mov edx, offset prompt
	call writestring
	call readchar
	call writechar
	cmp al, 'a'
	je convert
	cmp al, 'e'
	je convert
	cmp al, 'i'
	je convert
	cmp al, 'o'
	je convert
	cmp al, 'u'
	je convert
	continue:
	cmp al, 'A'
	je yess
	cmp al, 'E'
	je yess
	cmp al, 'I'
	je yess
	cmp al, 'O'
	je yess
	cmp al, 'U'
	je yess
	noo:
	mov edx, offset prompt3
	call crlf
	call writestring
	jmp ENDER
	yess:
	mov edx, offset prompt2
	call crlf
	call writestring
	jmp ENDER
	convert:
	call converter
	jmp continue
	ENDER:
	main endp
	converter proc
	xor al, 00100000b
	ret
	converter endp
	end main
