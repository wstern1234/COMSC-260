; Wkst11_1.asm - Write a logical shift instruction that multiplies the contents of EAX by 16

INCLUDE Irvine32.inc


.data





.code
main PROC

mov eax, 2
shl eax, 4

INVOKE ExitProcess, 0
main ENDP
END main