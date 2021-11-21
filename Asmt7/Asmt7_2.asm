; Asmt7_2.asm - receives two stack parameters: forecolor and backcolor, and calls the SetTextColor procedure from the Irvine32 library

INCLUDE Irvine32.inc


.data





.code
main PROC

call SetColor

INVOKE ExitProcess, 0
main ENDP




SetColor PROC USES eax, forecolor:BYTE, backcolor:BYTE

movzx eax, backcolor
shl eax, 4
add al, forecolor
call SetTextColor
ret

SetColor ENDP

END main