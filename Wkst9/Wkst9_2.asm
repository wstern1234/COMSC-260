; Wkst9_2.asm - pseudocode to assembly language practice

INCLUDE Irvine32.inc


.data
val1 DWORD 3
X DWORD 4




.code
main PROC

.if (val1 > ecx) && (ecx > edx)
	mov X, 1

.else
	mov X, 2

.endif

mov eax, X

INVOKE ExitProcess, 0
main ENDP
END main