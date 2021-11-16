; Wkst11_2.asm - Write a logical shift instruction that divides EBX by 4

INCLUDE Irvine32.inc


.data





.code
main PROC

mov ebx, 16
shr ebx, 2

INVOKE ExitProcess, 0
main ENDP
END main