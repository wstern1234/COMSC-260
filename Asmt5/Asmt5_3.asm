; Asmt5_3.asm - pseudocode to MASM practice

INCLUDE Irvine32.inc


.data
val1  DWORD 3
X     DWORD 4




.code
main PROC

.if ( ebx > ecx && ebx > edx ) || ( edx > eax )
	mov X, 1

.else
	mov X, 2

.endif

INVOKE ExitProcess, 0
main ENDP
END main