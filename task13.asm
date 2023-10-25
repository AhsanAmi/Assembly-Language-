
INCLUDE Irvine32.inc
BUFFER_SIZE = 500
.data
    buffer BYTE BUFFER_SIZE DUP(?)
    filename byte "ahsan.txt",0
    fileHandle Handle ?
    stringLength DWORD ?
    count byte 0
    prompt byte "\n\n\nNumber of lines :",0
.code
main PROC
; Open the file for input.
    mov edx,OFFSET filename
    call OpenInputFile
    mov fileHandle,eax

    mov edx,OFFSET buffer
    mov ecx,BUFFER_SIZE
    call ReadFromFile
    
    

    mov edx,OFFSET buffer 
    call WriteString
    call Crlf
    
    mov eax,fileHandle
    call CloseFile

    mov ebx,0
    mov ecx, lengthof buffer
    loop1:
        cmp buffer[ebx],0ah
        je increment
        inc ebx
        loop loop1
    jmp exit1
    increment:
        inc count
        inc ebx
        loop loop1

    exit1:
    mov edx, offset prompt
    call writestring
    inc count
    mov eax, 0
    mov al,count
    call writedec
    exit
main ENDP

END main
