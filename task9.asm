	;counts words in a string
	;need to get fixed
	
	INCLUDE Irvine32.inc
	.386
	.model flat, stdcall
	.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
	.data
	strr byte 100 dup(?)
prompt byte "Enter a string: ", 0
prompt2 byte "Total words are: ", 0
	count dword 1
	spacee dword " "
	.code
	main proc
	mov edx, offset prompt
	call writestring
	mov edx, offset strr
	mov ecx, lengthof strr
	call readstring
	mov ecx, eax
	mov esi, offset strr
label1:
	cmp esi, 20h
	add esi, 1
	je counterr
backk:
	loop label1
	jmp endd
counterr:
	add count, 1
	jmp backk
endd:
	mov edx, offset promp2
	call writestring
	mov eax, count
	call writedec
	main endp
	end main
