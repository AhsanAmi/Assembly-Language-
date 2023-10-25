	;prints hello world on console
	
	INCLUDE Irvine32.inc
	.data
		prompt1 byte "Enter Number: ", 0
		prompt2 byte "Binary: ", 0

	.code
	main PROC
	mov edx, offset prompt1
	call writestring
	call ReadInt

	mov edx, offset prompt2
	call writestring
	call writebin
	call crlf


	MAIN ENDP
	
	END MAIN
