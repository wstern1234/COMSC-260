; Wkst11_3.asm - Write a single rotate instruction that exchanges the high and low halves of the DL register

INCLUDE Irvine32.inc


.data





.code
main PROC

mov dx, 4006h
ror dl, 4

INVOKE ExitProcess, 0
main ENDP
END main