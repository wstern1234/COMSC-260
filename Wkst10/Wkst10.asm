; Wkst10.asm - Calculates grade by passing a value to CalcGrade

INCLUDE Irvine32.inc


.data
lowEnd DWORD 49
highEnd DWORD 100
str1 BYTE "Number grade: ", 0
str2 BYTE "Letter grade: ", 0

.code
main PROC
    call Clrscr
    mov ecx, 10
    l1:  
        mov eax, lowEnd
        mov ebx, highEnd
        dec ebx  
        sub ebx, eax
        xchg ebx, eax
        call RandomRange
        neg ebx
        sub eax, ebx
        mov edx, offset str1
        call WriteString
        call WriteInt
        call crlf
        call CalcGrade
        call crlf
    loop l1

    call WaitMsg
    exit
main ENDP

CalcGrade PROC
    .IF eax >= 90
      mov al, 'A'
    .ELSEIF eax >= 80
      mov al, 'B'
    .ELSEIF eax >= 70
      mov al, 'C'
    .ELSEIF eax >= 60
      mov al, 'D'
    .ELSE
      mov al, 'F'
    .ENDIF
      
    mov edx, OFFSET str2
    call WriteString
    call WriteChar
    call Crlf

    ret
CalcGrade ENDP

END main
