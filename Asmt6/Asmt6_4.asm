; Asmt6_4.asm - Implement the following C++ expression in assembly language, using 32-bit signed operands:
; val1 = (val2 / val3) * (val1 + val2)


INCLUDE Irvine32.inc


.data
val1 DWORD 30
val2 DWORD 20
val3 DWORD 10




.code

main PROC

mov eax, val2
cdq
idiv val3
mov ebx, val1
add ebx, val2
imul ebx
mov val1, eax 

INVOKE ExitProcess, 0
main ENDP
END main