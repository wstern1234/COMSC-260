; Asmt6_3.asm - Implement the following C++ expression in assembly language, using 32-bit unsigned operands:
; val1 = (val2 * val3) / (val4 - 3)


INCLUDE Irvine32.inc


.data
val1 DWORD 1
val2 DWORD 2
val3 DWORD 3
val4 DWORD 4




.code

main PROC
mov eax, val2
mul val3
mov ebx, val4
sub ebx, 3
div ebx
mov val1, eax

INVOKE ExitProcess, 0
main ENDP
END main