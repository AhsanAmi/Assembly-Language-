
INCLUDE Irvine32.inc
BUFFER_SIZE = 501
.data
    buffer BYTE BUFFER_SIZE DUP(?)
    filename byte "ahsan.txt",0
    fileHandle Handle ?
    stringLength DWORD ?
    bytesWritten DWORD ?
    str1 BYTE "Cannot create file",0dh,0ah,0
    str2 BYTE "Bytes written to file ",0
    str3 BYTE "Enter up to 500 characters and press"
         BYTE "[Enter]: ",0dh,0ah,0
.code
main PROC
; creating a new text file
    mov edx,OFFSET filename
    call CreateOutputFile
    mov fileHandle,eax
;read from console to buffer
    mov edx,OFFSET str3 
    call WriteString
    mov ecx,BUFFER_SIZE ; Input a string
    mov edx,OFFSET buffer
    call ReadString
    mov stringLength,eax
; Write the buffer to the output file.
    mov eax,fileHandle
    mov edx,OFFSET buffer
    mov ecx,stringLength
    call WriteToFile
    mov bytesWritten,eax     ; save return value
    call CloseFile
    
    mov edx,OFFSET str2 ; "Bytes written"
    call WriteString
    mov eax,bytesWritten
    call WriteDec
    call Crlf
    exit
main ENDP

END main
