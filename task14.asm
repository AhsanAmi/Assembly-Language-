	;encrypts and then decrypts data
	
	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
	text BYTE "My name is Shujaat", 0
	key BYTE 13
	.code
	main PROC
	mov edx, offset text
	call writestring
	call crlf
	mov esi, offset text
encryptt:
	mov al, [esi]
	xor al, key
	mov [esi], al
	inc esi
	cmp byte ptr [esi], 0
	jne encryptt
	mov edx, offset text
	call writestring
	call crlf
	mov esi, offset text
decryptt:
	mov al, [esi]
	xor al, key
	mov [esi], al
	inc esi
	cmp byte ptr [esi], 0
	jne decryptt
	mov edx, offset text
	call writestring
	call crlf
	invoke ExitProcess, 0
	main ENDP
	END main
