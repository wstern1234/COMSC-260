; Asmt7_3.asm - displays a single character, using the color attributes specified in forecolor and backcolor

INCLUDE Irvine32.inc


.data





.code
main PROC

call WriteColorChar

INVOKE ExitProcess, 0
main ENDP




SetColor PROC USES eax, forecolor:BYTE, backcolor:BYTE

movzx eax, backcolor
shl eax, 4
add al, forecolor
call SetTextColor
ret

SetColor ENDP




WriteColorChar PROC USES eax, char:BYTE, forecolor:BYTE, backcolor:BYTE,

INVOKE SetColor, forecolor, backcolor
mov al, char
call WriteChar
ret

WriteColorChar ENDP

END main