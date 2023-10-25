	;squares a number
	;sir ager kissi register ko itself multiply karwana ho to usko mul nahi imul se kar saktay hein ye seekhnay ko milla
	
	INCLUDE Irvine32.inc
	.data
prompt byte "Please enter a numebr: ", 0
prompt2 byte "Its square is: ", 0
	.code
	main PROC
	mov edx, offset prompt
	call writestring
	call readint
	mov edx, offset prompt2
	call squaree
	call writestring
	call writedec
	call crlf
	main ENDP
	squaree proc
	imul eax, eax
	ret
	squaree endp


END main
