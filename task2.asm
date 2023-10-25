	;adding even numbers between 1 - 100
	
	INCLUDE Irvine32.inc
	.data
	num DWORD 2
	sum dword ?
	.code
	main proc
	mov ebx, 100
	mov ecx, sum
	add ecx, num
adderr:
	add num, 2
	add ecx, num
	cmp ebx, num
	ja adderr
	mov sum, ecx
	mov eax, sum
	call writedec

    exit
main ENDP

END main