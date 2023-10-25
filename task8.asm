; Calculates GCD of two numbers

INCLUDE Irvine32.inc

.data
    num1 DWORD ?
    num2 DWORD ?
    prompt1 BYTE "First number: ", 0
    prompt2 BYTE "Second number: ", 0
    prompt3 BYTE "GCD: ", 0

.code
main PROC
    mov edx, OFFSET prompt1
    call WriteString

    call ReadInt
    mov num1, eax

    mov edx, OFFSET prompt2
    call WriteString
    call ReadInt

    mov num2, eax

    mov eax, num1
    mov ebx, num2

gcd_loop:
    cmp ebx, 0
    je Done

    mov edx, 0
    div ebx
    mov eax, ebx
    mov ebx, edx

    jmp gcd_loop

Done:
    mov edx, OFFSET prompt3
    call WriteString
    mov eax, num1
    call WriteDec

    invoke ExitProcess, 0

main ENDP

END main
